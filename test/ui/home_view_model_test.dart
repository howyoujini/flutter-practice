import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream이 잘 동작해야 함.', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('banana');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(
        viewModel.photoStream,
        emitsInOrder([
          equals([]),
          equals(result),
          // equals(result),
        ]));
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 1127174,
    "pageURL":
        "https://pixabay.com/photos/sunflower-flower-plant-petals-1127174/",
    "type": "photo",
    "tags": "sunflower, flower, plant",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/08/05/24/sunflower-1127174_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gf086643917f46dc6aeaa47e253c0fc3875987a910512505ffc56309cd8cdda3d3dd5e485286dfbe3a029e779576fd69cb1bf3636351c97186eb439ec0e484c3a_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g04235209a5f937a7f35137cdc6433d6726911a72bf9c11cc5ad5db17a848ee4e431fe8c927d889cf0d4411d2f5a703a733398e5e93a430a4213f5fe345203350_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3168,
    "imageSize": 3922163,
    "views": 340156,
    "downloads": 207937,
    "collections": 4976,
    "likes": 912,
    "comments": 123,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 887443,
    "pageURL":
        "https://pixabay.com/photos/flower-life-yellow-flower-crack-887443/",
    "type": "photo",
    "tags": "flower, life, yellow flower",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/08/13/20/06/flower-887443_150.jpg",
    "previewWidth": 150,
    "previewHeight": 116,
    "webformatURL":
        "https://pixabay.com/get/gba50605107a939b566afe3d704166f2bc4e1f3d40c1deab90d49fef4c6337b362364bce2aecc6b3acce62a348a35e3ff_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 497,
    "largeImageURL":
        "https://pixabay.com/get/gf2f08bf475ca3ea450fd8e45f491060a85cfb014c571fe32203e3326661effea1fe60f31e1d044046f32ec823de8f2290ab7218c4b059b3b8266cdeac51baa58_1280.jpg",
    "imageWidth": 3867,
    "imageHeight": 3005,
    "imageSize": 2611531,
    "views": 281998,
    "downloads": 168281,
    "collections": 4665,
    "likes": 1034,
    "comments": 173,
    "user_id": 1298145,
    "user": "klimkin",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/07/18/13-46-18-393_250x250.jpg"
  },
];
