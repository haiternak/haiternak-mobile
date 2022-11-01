import 'package:flutter/material.dart';
import 'package:haiternak_mobile/themes/theme.dart';

class TableCellSettings extends StatelessWidget {
  final String title;
  final Function()? onTap;
  TableCellSettings({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0.6,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: [
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: TextStyle(color: ArgonColors.text)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                    child: Icon(Icons.arrow_forward_ios,
                        color: ArgonColors.text, size: 14),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
