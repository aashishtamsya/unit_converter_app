import 'package:flutter/material.dart';
import 'package:unit_converter_app/unit.dart';

class ConverterRoute extends StatefulWidget {
  final List<Unit> units;
  final Color color;

  const ConverterRoute({
    @required this.units,
    @required this.color,
  })  : assert(units != null),
        assert(color != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(unit.name, style: Theme.of(context).textTheme.headline),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
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
