# Image Capture App

A Flutter application that provides functionality to capture images from the camera.

## Features

- Capture images using device camera
- Display captured images
- Configurable image quality and dimensions

## Image Manager Class

The app includes an `ImageManager` class that provides the following functionality:

- Capture images from camera
- Set default parameters for image quality
- Convert image paths to File objects

## Getting Started

### Prerequisites

- Flutter 2.19.0 or higher
- Dart 2.19.0 or higher

### Installation

1. Clone the repository
   ```
   git clone https://github.com/your-username/image_capture_app.git
   ```

2. Navigate to the project directory
   ```
   cd image_capture_app
   ```

3. Install dependencies
   ```
   flutter pub get
   ```

4. Run the app
   ```
   flutter run
   ```

## Android Configuration

Make sure to add the following permissions to your `AndroidManifest.xml` file:

```xml
<uses-permission android:name="android.permission.CAMERA" />
```

## iOS Configuration

Add the following keys to your `Info.plist` file:

```xml
<key>NSCameraUsageDescription</key>
<string>This app requires access to the camera to take photos.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>This app requires access to the photo library to save photos.</string>
```

## Usage

The `ImageManager` class can be used to capture images:

```dart
final ImageManager imageManager = ImageManager();

// Capture an image with default settings
String? imagePath = await imageManager.captureImageFromCamera();

// Capture an image with custom settings
String? customImagePath = await imageManager.captureImageFromCamera(
  quality: 90,
  maxWidth: 800,
  maxHeight: 600
);

// Get a File object from the path
File imageFile = imageManager.getFileFromPath(imagePath!);
```
