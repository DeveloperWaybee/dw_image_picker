import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../camera_options.dart';
import '../crop_options.dart';
import '../method_channel/method_channel_dw_image_picker.dart';
import '../picker_item.dart';
import '../picker_options.dart';
import '../picker_localized.dart';

abstract class DWImagePickerPlatform extends PlatformInterface {
  /// Constructs a DWImagePickerPlatform.
  DWImagePickerPlatform() : super(token: _token);

  static final Object _token = Object();

  static DWImagePickerPlatform _instance = MethodChannelDWImagePicker();

  /// The default instance of [DWImagePickerPlatform] to use.
  ///
  /// Defaults to [MethodChannelDWImagePicker].
  static DWImagePickerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DWImagePickerPlatform] when
  /// they register themselves.
  static set instance(DWImagePickerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<DWPickerItem>> openPicker({
    List<String>? selectedIds,
    DWPickerOptions? pickerOptions,
    bool? cropping,
    DWCropOptions? cropOptions,
    LocalizedImagePicker? localized,
  }) {
    throw UnimplementedError('openPicker() has not been implemented.');
  }

  Future<DWPickerItem> openCamera({
    DWCameraOptions? cameraOptions,
    bool? cropping,
    DWCropOptions? cropOptions,
    LocalizedImageCropper? localized,
  }) {
    throw UnimplementedError('openCamera() has not been implemented.');
  }

  Future<DWPickerItem> openCropper(
    String imagePath, {
    DWCropOptions? cropOptions,
    LocalizedImageCropper? localized,
  }) {
    throw UnimplementedError('openCropper() has not been implemented.');
  }
}
