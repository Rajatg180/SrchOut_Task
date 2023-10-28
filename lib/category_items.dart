import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  CategoryItem(this.categoryName,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      margin: EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 10
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: isSelected?Colors.white : Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}