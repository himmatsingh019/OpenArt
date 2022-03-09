import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nft_ui/data/models/photo_model.dart';
import 'package:nft_ui/data/repositories/photo_repository.dart';

class PhotoProvider extends StateNotifier<List<PhotoModel>?> {
  static final provider = StateNotifierProvider<PhotoProvider, List<PhotoModel>?>((ref) => PhotoProvider(ref.read));

  PhotoProvider(this.read) : super(null) {
    getPhotos();
  }
  Reader read;
  final ScrollController scrollController = ScrollController();
  int page = 0;

  Future<void> getPhotos() async {
    List<PhotoModel>? model = await read(PhotoRepository.provider).getPhotos();

    if (state == null) {
      state = model;
    } else {
      List<PhotoModel> photoModel = state!;
      photoModel.addAll(model!);
      state = null;
      state = photoModel;
    }
  }
}
