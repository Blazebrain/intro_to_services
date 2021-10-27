import 'dart:io';

import 'package:intro_to_services/app/app.locator.dart';
import 'package:intro_to_services/services/media_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final mediaService = locator<MediaService>();

  File? _image;
  File? get imageFromGallery => _image;

  Future<void> getImageFromGallery() async {
    _image = await mediaService.getImage(fromGallery: true);
    notifyListeners();
  }
}
