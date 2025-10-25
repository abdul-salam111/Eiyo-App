import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/home/domain/usecases/get_all_products_usecase.dart';
import 'package:neutri_lens/app/modules/home/domain/usecases/search_products_usecase.dart';
import '../../data/models/get_all_products_model.dart';

// ============================================================================
// HOME CONTROLLER
// ============================================================================

class HomeController extends GetxController {
  // --------------------------------------------------------------------------
  // Dependencies
  // --------------------------------------------------------------------------
  final GetAllProductsUsecase getAllProductsUsecase;
  final SearchProductsUsecase searchProductsUsecase;

  HomeController({
    required this.getAllProductsUsecase,
    required this.searchProductsUsecase,
  });

  // --------------------------------------------------------------------------
  // UI Controllers
  // --------------------------------------------------------------------------
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  // --------------------------------------------------------------------------
  // Loading State Observables
  // --------------------------------------------------------------------------
  final RxBool isLoading = false.obs;
  final RxBool isLoadingMore = false.obs;
  final RxString errorMessage = ''.obs;

  // --------------------------------------------------------------------------
  // Pagination Observables
  // --------------------------------------------------------------------------
  final RxInt currentPage = 1.obs;
  final RxBool hasMoreData = true.obs;

  // --------------------------------------------------------------------------
  // Search Observables
  // --------------------------------------------------------------------------
  final RxString searchQuery = ''.obs;
  Timer? _searchTimer;

  // --------------------------------------------------------------------------
  // Operation Tracking (Prevents stale API responses)
  // --------------------------------------------------------------------------
  final RxString _currentOperationId = ''.obs;

  // --------------------------------------------------------------------------
  // Products Data
  // --------------------------------------------------------------------------
  final RxList<Product> products = <Product>[].obs;

  // ==========================================================================
  // LIFECYCLE METHODS
  // ==========================================================================

  @override
  void onInit() {
    super.onInit();

    _setupScrollListener();
    _setupSearchListener();
  }

  @override
  void onClose() {
    _searchTimer?.cancel();
    searchController.dispose();
    scrollController.dispose();
    super.onClose();
  }

  // ==========================================================================
  // INITIALIZATION & SETUP
  // ==========================================================================

  /// Sets up infinite scroll listener for pagination
  void _setupScrollListener() {
    scrollController.addListener(() {
      // Trigger load more when user scrolls to 80% of content
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent * 0.8 &&
          !isLoadingMore.value &&
          !isLoading.value &&
          hasMoreData.value) {
        loadMoreProducts();
      }
    });
  }

  /// Sets up search field listener with debouncing
  void _setupSearchListener() {
    searchController.addListener(() {
      _debounceSearch();
    });
  }

  // ==========================================================================
  // SEARCH FUNCTIONALITY
  // ==========================================================================

  /// Debounces search input to avoid excessive API calls
  /// Waits 500ms after user stops typing before searching
  void _debounceSearch() {
    _searchTimer?.cancel();

    _searchTimer = Timer(const Duration(milliseconds: 500), () {
      if (searchController.text != searchQuery.value) {
        performSearch(searchController.text);
      }
    });
  }
 /// Executes search with the given query
  /// Resets pagination and clears previous results
  void performSearch(String query) {
  final trimmedQuery = query.trim();
  if (trimmedQuery == searchQuery.value) return;

  final operationId = _generateOperationId();
  _currentOperationId.value = operationId;

  searchQuery.value = trimmedQuery;
  currentPage.value = 1;
  products.clear();
  hasMoreData.value = true;

  if (trimmedQuery.isEmpty) {
    // User cleared search → reset UI
    isLoading.value = false;
    return;
  }

  isLoading.value = true;
  _searchProducts(operationId);
}

  /// Clears search and returns to showing all products
  void clearSearch() {
  searchController.clear();
  searchQuery.value = '';
  currentPage.value = 1;
  products.clear();
  hasMoreData.value = true;
  _currentOperationId.value = _generateOperationId();
}

  // ==========================================================================
  // PRODUCTS LOADING (Initial & Refresh)
  // ==========================================================================

  /// Loads products from API
  /// If refresh=true, resets pagination and clears current data
  Future<void> getProducts({bool refresh = false}) async {
    if (refresh) {
      currentPage.value = 1;
      products.clear();
      hasMoreData.value = true;
      searchQuery.value = '';
      searchController.clear();
      _currentOperationId.value = _generateOperationId();
    }

    isLoading.value = true;
    errorMessage.value = '';

    final operationId = _currentOperationId.value;
    final result = await getAllProductsUsecase.call(
      GetAllProductsParams(page: currentPage.value),
    );

    // Ignore response if a newer operation has started
    if (_currentOperationId.value != operationId) return;

    result.fold(
      (error) {
        isLoading.value = false;
        errorMessage.value = error.toString();
      },
      (response) {
        if (response.products != null && response.products!.isNotEmpty) {
          products.addAll(response.products!);
          currentPage.value++;
        } else {
          hasMoreData.value = false;
        }
        isLoading.value = false;
      },
    );
  }



  // ==========================================================================
  // PAGINATION (Load More)
  // ==========================================================================

  /// Loads next page of products (for infinite scroll)
  /// Handles both regular products and search results
  Future<void> loadMoreProducts() async {
    if (!hasMoreData.value || isLoadingMore.value) return;

    isLoadingMore.value = true;
    errorMessage.value = '';

    final operationId = _currentOperationId.value;

    // Choose appropriate API call based on search state
    final result = searchQuery.value.isEmpty
        ? await getAllProductsUsecase.call(
            GetAllProductsParams(page: currentPage.value),
          )
        : await searchProductsUsecase.call(
            SearchProductsParams(
              query: searchQuery.value,
              page: currentPage.value,
            ),
          );

    // Ignore response if a newer operation has started
    if (_currentOperationId.value != operationId) {
      isLoadingMore.value = false;
      return;
    }

    result.fold(
      (error) {
        isLoadingMore.value = false;
        errorMessage.value = error.toString();
      },
      (response) {
        if (response.products != null && response.products!.isNotEmpty) {
          products.addAll(response.products!);
          currentPage.value++;
        } else {
          hasMoreData.value = false;
        }
        isLoadingMore.value = false;
      },
    );
  }

  // ==========================================================================
  // PRIVATE API METHODS
  // ==========================================================================

  /// Fetches all products (no search filter)
  /// Operation ID prevents stale responses from being processed
  // Future<void> _getAllProducts(String operationId) async {
  //   try {
  //     final result = await getAllProductsUsecase.call(
  //       GetAllProductsParams(page: 1),
  //     );

  //     // Check if this operation is still the current one
  //     if (_currentOperationId.value != operationId) {
  //       return; // Ignore result if a newer operation has started
  //     }
  //     result.fold(
  //       (error) {
  //         errorMessage.value = error.toString();
  //         isLoading.value = false;
  //       },
  //       (response) {
  //         if (response.products != null && response.products!.isNotEmpty) {
  //           products.assignAll(response.products!);
  //           currentPage.value = 2; // Set to next page
  //         } else {
  //           hasMoreData.value = false;
  //         }
  //         isLoading.value = false;
  //       },
  //     );
  //   } catch (e) {
  //     if (_currentOperationId.value == operationId) {
  //       errorMessage.value = e.toString();
  //       isLoading.value = false;
  //     }
  //   }
  // }

  /// Searches products with the current search query
  /// Operation ID prevents stale responses from being processed
  Future<void> _searchProducts(String operationId) async {
    try {
      final result = await searchProductsUsecase.call(
        SearchProductsParams(query: searchQuery.value, page: 1),
      );
      // Check if this operation is still the current one
      if (_currentOperationId.value != operationId) {
        return; // Ignore result if a newer operation has started
      }
      result.fold(
        (error) {
          errorMessage.value = error.toString();
          isLoading.value = false;
        },
        (response) {
          if (response.products != null && response.products!.isNotEmpty) {
            products.assignAll(response.products!);
            currentPage.value = 2; // Set to next page
          } else {
            hasMoreData.value = false;
          }
          isLoading.value = false;
        },
      );
    } catch (e) {
      if (_currentOperationId.value == operationId) {
        errorMessage.value = e.toString();
        isLoading.value = false;
      }
    }
  }

  // ==========================================================================
  // HELPER METHODS
  // ==========================================================================

  /// Generates a unique ID for tracking API operations
  /// Prevents race conditions when multiple searches happen quickly
  String _generateOperationId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
