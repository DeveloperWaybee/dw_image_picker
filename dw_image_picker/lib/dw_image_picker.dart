library dw_image_picker;

import 'package:flutter/material.dart';
import 'package:dw_image_picker_platform_interface/dw_image_picker_platform_interface.dart';

export 'package:dw_image_picker_platform_interface/dw_image_picker_platform_interface.dart'
    show
        MediaType,
        DWPickerOptions,
        CameraType,
        DWCameraOptions,
        DWPickerItem,
        DWCropOptions,
        CropAspectRatio,
        CropAspectRatioPreset,
        CompressFormat,
        LocalizedImagePicker,
        LocalizedImageCropper,
        CroppingStyle,
        MaxSizeOutput;

class DWImagePicker {
  @visibleForTesting
  static DWImagePickerPlatform get platform => DWImagePickerPlatform.instance;

  /// Select images or videos from a library
  ///
  /// `selectedIds`: A list of string IDs representing the initially selected images or videos from the library. This allows users to pre-select items before opening the picker.
  ///
  /// `pickerOptions`: Additional options for the picker: `mediaType`, `maxSelectedAssets`, `maxFileSize`,...
  ///
  /// `cropping`: Indicating whether or not cropping is enabled. Just work when `mediaType = MediaType.image`
  ///
  /// `cropOptions`: Configuration options for the cropping functionality: `aspectRatio`, `aspectRatioPresets`, `compressQuality`, `compressFormat`
  ///
  /// `localized`: Custom text displayed for the plugin
  ///
  /// Returns a list of [DWPickerItem]
  Future<List<DWPickerItem>> openPicker({
    List<String>? selectedIds,
    DWPickerOptions? pickerOptions,
    bool? cropping,
    DWCropOptions? cropOptions,
    LocalizedImagePicker? localized,
  }) async {
    return platform.openPicker(
      selectedIds: selectedIds,
      cropping: cropping,
      pickerOptions: pickerOptions,
      cropOptions: cropOptions,
      localized: localized,
    );
  }

  /// Take a photo or record a video
  ///
  /// `cameraOptions`: Additional options for the camera functionality: `cameraType`, `recordVideoMaxSecond`, `isExportThumbnail`...
  ///
  /// `cropping`: Indicating whether or not cropping is enabled
  ///
  /// `cropOptions`: Configuration options for the cropping functionality: `aspectRatio`, `aspectRatioPresets`, `compressQuality`, `compressFormat`
  ///
  /// `localized`: Custom text displayed for the plugin
  ///
  /// Returns a [DWPickerItem] object
  Future<DWPickerItem> openCamera({
    DWCameraOptions? cameraOptions,
    bool? cropping,
    DWCropOptions? cropOptions,
    LocalizedImageCropper? localized,
  }) async {
    return platform.openCamera(
      cameraOptions: cameraOptions,
      cropping: cropping,
      cropOptions: cropOptions,
      localized: localized,
    );
  }

  /// Open image cropper
  ///
  /// `imagePath`: Path of the image that needs to be cropped
  ///
  /// `cropOptions`: Configuration options for the cropping functionality: `aspectRatio`, `aspectRatioPresets`, `compressQuality`, `compressFormat`
  ///
  /// `localized`: Custom text displayed for the plugin
  ///
  /// Returns a [DWPickerItem] object
  Future<DWPickerItem> openCropper(
    String imagePath, {
    DWCropOptions? cropOptions,
    LocalizedImageCropper? localized,
  }) async {
    return platform.openCropper(
      imagePath,
      cropOptions: cropOptions,
      localized: localized,
    );
  }
}
