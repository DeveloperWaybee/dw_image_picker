import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../platform_interface/platform_interface_dw_image_picker.dart';

/// An implementation of [DWImagePickerPlatform] that uses method channels.
class MethodChannelDWImagePicker extends DWImagePickerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('com.waybee.plugin/dw_image_picker');
}
