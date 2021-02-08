import 'package:flutter/material.dart';
import 'package:unit_converter_app/unit.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;

  const ConverterRoute({
    @required this.units,
  }) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(unit.name, style: Theme.of(context).textTheme.headline3),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}