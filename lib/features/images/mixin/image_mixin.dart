import "package:image_cropper/image_cropper.dart";
import "package:image_picker/image_picker.dart";

mixin ImageMixin {
  ImagePicker get imagePicker;
  ImageCropper get imageCropper;

  Future<CroppedFile?> get takeAndCropPicture async {
    final image = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );

    return image != null
        ? imageCropper.cropImage(
            sourcePath: image!.path,
            compressQuality: 100,
          )
        : null;
  }

  Future<CroppedFile?> get selectAndCropPicture async {
    final image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );

    return image != null
        ? imageCropper.cropImage(
            sourcePath: image.path,
            compressQuality: 100,
          )
        : null;
  }
}
