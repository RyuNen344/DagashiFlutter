import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mile_stone_item.dart';
import 'mile_stone_view_model.dart';

class MileStonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('MileStone')),
      body: Stack(
        children: [
          HookBuilder(builder: (context) {
            final mileStone = useProvider(
                mileStoneViewModelProvider.select((value) => value.mileStone));

            if (mileStone != null && mileStone.isNotEmpty) {
              return ListView.builder(
                itemCount: mileStone.length,
                itemBuilder: (_, index) {
                  return MileStoneItem(
                      mileStone[index], index == mileStone.length - 1);
                },
              );
            }
            return Container();
          })
        ],
      ),
    );
  }
}
