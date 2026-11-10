import "package:bank_app/features/images/mixin/image_mixin.dart";
import "package:image_cropper/image_cropper.dart";
import "package:image_picker/image_picker.dart";

class ImageRepository with ImageMixin {
  new({
    required this._imagePicker,
    required this._imageCropper,
  });

  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  @override
  ImageCropper get imageCropper => _imageCropper;

  @override
  ImagePicker get imagePicker => _imagePicker;
}
