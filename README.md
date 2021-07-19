# test_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
___
HTML renderer: when the app is running in a mobile browser.

CanvasKit renderer: when the app is running in a desktop browser.

The HTML renderer can load cross-origin images without extra configuration. so you could use these commands to run and build the app.
````
flutter run -d chrome --web-renderer html

flutter build web --web-renderer html --release
