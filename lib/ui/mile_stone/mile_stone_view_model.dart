import 'package:dagashi_flutter/data/repository/mile_stone_repository.dart';
import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:dagashi_flutter/provider/repository_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/all.dart';

final mileStoneViewModelProvider = ChangeNotifierProvider(
    (ref) => MileStoneViewModel(ref.read(mileStoneRepositoryProvider)));

mixin MileStoneViewModelInput {}

mixin MileStoneViewModelOutput {
  List<MileStone> mileStone;
}

class MileStoneViewModel extends ChangeNotifier
    with MileStoneViewModelInput, MileStoneViewModelOutput {
  MileStoneViewModel(this._mileStoneRepository) {
    _mileStoneRepository.refresh();
    _bindingOutput();
  }

  final MileStoneRepository _mileStoneRepository;

  List<MileStone> _mileStone;

  @override
  List<MileStone> get mileStone => _mileStone;

  void _bindingOutput() {
    _mileStoneRepository.mileStones().listen((value) {
      _mileStone = value;
      notifyListeners();
    });
  }
}
