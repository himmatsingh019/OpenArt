import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nft_ui/data/models/photo_model.dart';

class PhotoRepository {
  static final provider = Provider<PhotoRepository>((ref) => PhotoRepository());

  Future<List<PhotoModel>?> getPhotos() async {
    try {
      Response response = await Dio().get(
        'https://api.unsplash.com/photos?',
        queryParameters: {
          'client_id': 'WCEkO2jVJ4TbuGaJELYK58Do-hBuVFsp0J0M29M8M-k',
        },
      );
      return (response.data as List).map((e) => PhotoModel.fromMap(e)).toList();
    } on DioError catch (e) {
      return null;
    }
  }
}
