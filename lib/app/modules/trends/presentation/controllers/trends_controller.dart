import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:neutri_lens/app/modules/trends/data/model/get_trends_model/get_trends_model.dart';
import 'package:neutri_lens/app/modules/trends/data/repository/abstract_repository/trends_abstract_repository.dart';

import '../views/good_pickes_chart_widget.dart';

// ============================================================================
// TRENDS CONTROLLER
// ============================================================================

class TrendsController extends GetxController {
  // --------------------------------------------------------------------------
  // Dependencies
  // --------------------------------------------------------------------------
  final TrendsAbstractRepository repository;

  TrendsController({required this.repository});

  // --------------------------------------------------------------------------
  // Filter & Display Mode Observables
  // ------------------------------------------------------------------------
  final RxInt selectedStatesMode = 0.obs;
  final List<String> statesMode = ["Today", "This Week", "This Month"];

  // --------------------------------------------------------------------------
  // Trends Data Observables
  // --------------------------------------------------------------------------
  final getTrendsModel = GetTrendsModel().obs;
  RxList<Entry> entriesData = <Entry>[].obs;
  var isloading = false.obs;

  // --------------------------------------------------------------------------
  // Average Scores Observables (in percentages)
  // --------------------------------------------------------------------------
  var goodPickAvg = 0.0.obs;
  var mediumPickAvg = 0.0.obs;
  var poorPickAvg = 0.0.obs;

  // --------------------------------------------------------------------------
  // Chart Data Observables
  // --------------------------------------------------------------------------
  final RxList<ChartDataPoint> foodIqChartData = <ChartDataPoint>[].obs;
  final RxList<String> timeLabels = <String>[].obs;
  final RxDouble minX = 0.0.obs;
  final RxDouble maxX = 0.0.obs;
  final RxDouble minY = 0.0.obs;
  final RxDouble maxY = 100.0.obs; // Food IQ Score ranges from 0-100

  // --------------------------------------------------------------------------
  // Computed Properties
  // --------------------------------------------------------------------------

  /// Check if we have chart data available
  bool get hasChartData => foodIqChartData.isNotEmpty;

  // ==========================================================================
  // LIFECYCLE METHODS
  // ==========================================================================

  @override
  void onReady() async {
    super.onReady();
    await getTrendsToDisplay();
  }

  // ==========================================================================
  // API METHODS
  // ==========================================================================

  /// Fetches trends data for the selected date range and updates observables
  Future getTrendsToDisplay() async {
    isloading.value = true;
    // Get date range based on selected mode
    Map<String, String> dateRange = getDateRange();
    String startDate = dateRange['startDate']!;
    String endDate = dateRange['endDate']!;

    // Fetch trends data from repository
    final response = await repository.getTrends(startDate, endDate);

    response.fold(
      (failure) {
        isloading.value = false;
      },
      (model) {
        // Update trends model and entries
        getTrendsModel.value = model;
        entriesData.value = model.entries ?? [];

        // Calculate average percentages (multiply by 100 to convert decimals)
        goodPickAvg.value = (model.goodPickAvg!.toDouble() * 100);
        mediumPickAvg.value = (model.mediumPickAvg!.toDouble() * 100);
        poorPickAvg.value = (model.poorPickAvg!.toDouble() * 100);

        // Prepare chart data for visualization
        prepareChartData();

        isloading.value = false;
      },
    );
  }

  // ==========================================================================
  // DATE RANGE CALCULATION
  // ==========================================================================

  /// Returns start and end dates based on selected display mode
  /// - Today: Current day only
  /// - This Week: Monday to Sunday of current week
  /// - This Month: 1st to last day of current month
  Map<String, String> getDateRange() {
    DateTime now = DateTime.now();
    DateTime startDate;
    DateTime endDate = now;

    switch (selectedStatesMode.value) {
      case 0: // Today
        startDate = DateTime(now.year, now.month, now.day);
        endDate = startDate.add(Duration(days: 1));
        break;

      case 1: // This Week
        startDate = now.subtract(Duration(days: now.weekday - 1));
        endDate = startDate.add(Duration(days: 7));
        break;

      case 2: // This Month
        startDate = DateTime(now.year, now.month, 1);
        endDate = DateTime(now.year, now.month + 1, 1);
        break;

      default:
        startDate = DateTime(now.year, now.month, now.day);
        endDate = startDate.add(Duration(days: 1));
    }

    return {
      'startDate': DateFormat('yyyy-MM-dd').format(startDate),
      'endDate': DateFormat('yyyy-MM-dd').format(endDate),
    };
  }

  // ==========================================================================
  // CHART DATA PREPARATION
  // ==========================================================================

  /// Prepares chart data points and time labels from entries data
  void prepareChartData() {
    // Clear previous chart data
    foodIqChartData.clear();
    timeLabels.clear();

    // Handle empty data case
    if (entriesData.isEmpty) {
      _setDefaultChartBoundaries();
      return;
    }

    // Sort entries chronologically by scanned_at time
    final sortedEntries = _sortEntriesByTime();

    // Generate chart data points and time labels
    _generateChartDataPoints(sortedEntries);

    // Set chart axis boundaries
    _setChartBoundaries(sortedEntries.length);
  }

  /// Sorts entries by scanned_at timestamp in ascending order
  List<Entry> _sortEntriesByTime() {
    return List<Entry>.from(entriesData)..sort((a, b) {
      final timeA = _parseDateTime(a.scannedAt);
      final timeB = _parseDateTime(b.scannedAt);
      return timeA.compareTo(timeB);
    });
  }

  /// Creates chart data points and time labels from sorted entries
  void _generateChartDataPoints(List<Entry> sortedEntries) {
    for (int i = 0; i < sortedEntries.length; i++) {
      final entry = sortedEntries[i];
      final foodIqScore = entry.foodIqScore?.toDouble() ?? 0.0;
      final scannedAt = entry.scannedAt;

      // Add data point to chart
      foodIqChartData.add(ChartDataPoint(i.toDouble(), foodIqScore));

      // Generate appropriate time label based on display mode
      if (scannedAt != null) {
        final dateTime = _parseDateTime(scannedAt);
        timeLabels.add(_formatTimeForDisplay(dateTime));
      } else {
        timeLabels.add('${i + 1}'); // Fallback to index number
      }
    }
  }

  /// Sets chart axis boundaries based on data
  void _setChartBoundaries(int dataPointCount) {
    minX.value = 0.0;
    maxX.value = (dataPointCount > 1 ? dataPointCount - 1 : 1).toDouble();
    minY.value = 0.0;
    maxY.value = 100.0; // Food IQ Score is always 0-100
  }

  /// Sets default chart boundaries when no data is available
  void _setDefaultChartBoundaries() {
    minX.value = 0.0;
    maxX.value = 1.0;
    minY.value = 0.0;
    maxY.value = 100.0;
  }

  // ==========================================================================
  // DATE/TIME HELPERS
  // ==========================================================================

  /// Safely parses datetime string, returns current time if parsing fails
  DateTime _parseDateTime(String? dateTimeString) {
    if (dateTimeString == null) return DateTime.now();
    try {
      return DateTime.parse(dateTimeString);
    } catch (e) {
      return DateTime.now();
    }
  }

  /// Formats datetime for display based on selected mode
  /// - Today: Time only (10:43 AM)
  /// - This Week: Day + Time (Mon 10:43 AM)
  /// - This Month: Date + Time (Jan 15 10:43 AM)
  String _formatTimeForDisplay(DateTime dateTime) {
    switch (selectedStatesMode.value) {
      case 0: // Today - show time like 10:43 AM
        return DateFormat('h:mm a').format(dateTime);

      case 1: // This Week - show day and time
        return DateFormat('E h:mm a').format(dateTime);

      case 2: // This Month - show date and time
        return DateFormat('MMM d h:mm a').format(dateTime);

      default:
        return DateFormat('h:mm a').format(dateTime);
    }
  }
}
