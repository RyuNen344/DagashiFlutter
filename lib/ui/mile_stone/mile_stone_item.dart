import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class MileStoneItem extends StatelessWidget {
  MileStoneItem(this._mileStone, this._isLast);

  final MileStone _mileStone;

  final bool _isLast;

  static BorderRadius _borderRadiusAll = BorderRadius.circular(6);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: _borderRadiusAll),
      margin: EdgeInsets.only(
          left: 18, top: 18, right: 18, bottom: _isLast ? 18 : 0),
      child: InkWell(
        borderRadius: _borderRadiusAll,
        child: Column(
          children: [
            Container(
                width: double.infinity,
                child: Text(_mileStone.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                margin: const EdgeInsets.only(left: 14, top: 18, right: 14)),
            Container(
                width: double.infinity,
                child: Text(_mileStone.description,
                    style: const TextStyle(fontSize: 16)),
                margin: const EdgeInsets.only(left: 14, top: 12, right: 14)),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                child: Text(_mileStone.closedAt.toIso8601String(),
                    style: const TextStyle(fontSize: 12)),
                margin: const EdgeInsets.only(top: 12, right: 14, bottom: 18),
              )
            ])
          ],
        ),
        onTap: () {
          Get.toNamed(Constants.issuesPath, arguments: _mileStone);
        },
      ),
    );
  }
}
