import 'dart:io';

import 'package:image_picker/image_picker.dart';

getImageGallery( file ) async{
  final ImagePicker imagePicker =ImagePicker();
  final XFile? imageGallery = await imagePicker.pickImage(source: ImageSource.camera);
  file = File(imageGallery!.path);
}