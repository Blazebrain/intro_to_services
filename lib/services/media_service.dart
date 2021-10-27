import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MediaService {
  final ImagePicker _picker = ImagePicker();

  Future<File?> getImage({required bool fromGallery}) async {
    /// Pick an image/capture a photo

    final XFile? image = await _picker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );

    final File? file = File(image!.path);
    return file;
  }
}
