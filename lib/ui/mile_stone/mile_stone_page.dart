import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'file:///H:/workplace/02_ryunen/DagashiFlutter/lib/ui/mile_stone/mile_stone_view_model.dart';

import 'mile_stone_item.dart';

class MileStonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MileStone'),
      ),
      body: Stack(
        children: [
          HookBuilder(builder: (context) {
            final mileStone = useProvider(
                mileStoneViewModelProvider.select((value) => value.mileStone));

            if (mileStone != null && mileStone.isNotEmpty) {
              return ListView.builder(
                itemCount: mileStone.length,
                itemBuilder: (_, index) {
                  return MileStoneItem(mileStone[index]);
                },
              );
            }
            return Text('HogeHoge');
          })
        ],
      ),
    );
  }
}
