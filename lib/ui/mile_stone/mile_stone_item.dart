import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:flutter/material.dart';

class MileStoneItem extends StatelessWidget {
  MileStoneItem(MileStone mileStone) : this._mileStone = mileStone;

  final MileStone _mileStone;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: GestureDetector(
        child: Column(
          children: [Text(_mileStone.title), Text('${_mileStone.issues}')],
        ),
        onTap: () => () {
          debugPrint('$_mileStone');
        },
      ),
    );
  }
}
