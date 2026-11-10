import "package:image_picker/image_picker.dart";
import "package:injectable/injectable.dart";

abstract final class ImagePickerInjectableModule {
  @LazySingleton(as: ImagePicker)
  ImagePicker get imagePicker => ImagePicker();
}
