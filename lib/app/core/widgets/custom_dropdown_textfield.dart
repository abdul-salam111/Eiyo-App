
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../core.dart';

class SearchableDropdown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final Function(String) onChanged;
  final TextEditingController controller;

  const SearchableDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.hintText = "Select item",
    required this.controller
  });

  @override
  State<SearchableDropdown> createState() => _SearchableDropdownState();
}

class _SearchableDropdownState extends State<SearchableDropdown> {

  bool _isDropdownOpen = false;
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filterItems(String input) {
    setState(() {
      _filteredItems = widget.items
          .where(
            (item) => item.toLowerCase().contains(input.trim().toLowerCase()),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: context.bodySmall!.copyWith(
            color: AppColors.greyTextColor,
          ),
          controller: widget.controller,
          validator: (val) =>
              Validator.validateRequired(val, fieldName: "Town"),
          onTap: () {
            setState(() {
              _isDropdownOpen = !_isDropdownOpen;
            });
          },
          onChanged: (value) {
            _filterItems(value);
          },

          decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down),
            hintText: widget.hintText,
            hintStyle: context.bodySmall!.copyWith(
              color: AppColors.greyTextColor,
            ),

            prefixIcon: Icon(Iconsax.map, color: AppColors.greyColor, size: 20),

            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lightGreyColor.withAlpha(50),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: AppColors.mostLightGreyColor.withAlpha(50),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.greyColor, width: 2),
            ),
            contentPadding: const EdgeInsets.only(left: 10),
          ),
        ),
        if (_isDropdownOpen)
          Container(
            constraints: BoxConstraints(maxHeight: 200),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView(
              shrinkWrap: true,
              children: _filteredItems.map((item) {
                return ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  title: Text(
                    item,
                    style: context.bodyMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  onTap: () {
                    widget.controller.text = item;
                    widget.onChanged(item);
                    setState(() {
                      _isDropdownOpen = false;
                    });
                    context.focusScope.unfocus();
                  },
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
