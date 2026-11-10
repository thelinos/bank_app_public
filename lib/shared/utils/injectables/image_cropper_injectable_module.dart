import "package:image_cropper/image_cropper.dart";
import "package:injectable/injectable.dart";

abstract final class ImageCropperInjectableModule {
  @LazySingleton(as: ImageCropper)
  ImageCropper get imageCropper => ImageCropper();
}
