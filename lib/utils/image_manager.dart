import 'dart:io';
import 'package:image_picker/image_picker.dart';

/// A class that manages image capturing functionality
class ImageManager {
  // Default image quality
  final int _defaultQuality = 80;

  // Default image source
  final ImageSource _defaultSource = ImageSource.camera;

  // Instance of ImagePicker
  final ImagePicker _picker = ImagePicker();

  /// Constructor
  ImageManager();

  /// Captures an image from the camera
  ///
  /// Returns the path to the captured image or null if no image was captured
  Future<String?> captureImageFromCamera({
    ImageSource source = ImageSource.camera,
    int quality = 80,
    double? maxWidth,
    double? maxHeight,
  }) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        imageQuality: quality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );

      return image?.path;
    } catch (e) {
      print('Error capturing image: $e');
      return null;
    }
  }

  /// Gets the default image quality
  int get defaultQuality => _defaultQuality;

  /// Gets the default image source
  ImageSource get defaultSource => _defaultSource;

  /// Creates a File object from a file path
  File getFileFromPath(String path) {
    return File(path);
  }
}
