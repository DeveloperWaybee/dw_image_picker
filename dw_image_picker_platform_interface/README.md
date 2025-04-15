# dw_image_picker_platform_interface

A common platform interface for the [dw_image_picker](https://pub.dev/packages/dw_image_picker) plugin.

## Usage

To implement a new platform-specific implementation of `dw_image_picker`, 
1. Extend **DWImagePickerPlatform** with an implementation that performs the platform-specific behavior.
2. When you register your plugin, set the default DWImagePickerPlatform by calling DWImagePickerPlatform.instance = DWImagePickerPlatform().
