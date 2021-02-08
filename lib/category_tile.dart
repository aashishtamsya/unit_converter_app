import 'package:flutter/material.dart';
import 'package:unit_converter_app/category.dart';
import 'package:unit_converter_app/unit_converter.dart';

import 'unit.dart';

final _rowHeight = 60.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CategoryTile extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onTap;

  const CategoryTile({Key key, @required this.category, @required this.onTap})
      : assert(category != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: category.color,
          splashColor: category.color,
          onTap: () => onTap(category),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    category.iconLocation,
                    size: _rowHeight / 2.0,
                  ),
                ),
                Center(
                    child: Text(
                  category.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
