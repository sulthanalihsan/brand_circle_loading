# Brand Circle Loading

<img src="https://github.com/sulthanalihsan/brand_circle_loading/blob/master/images/gif1.gif?raw=true" width=200 height=429/> <img src="https://github.com/sulthanalihsan/brand_circle_loading/blob/master/images/gif2.gif?raw=true" width=200 height=429/> 

## Installing

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  brand_circle_loading: ^0.0.1
```

## Import

```dart
import 'package:brand_circle_loading/brand_circle_loading.dart';
```

## How to use

First, initialize `BrandCircleLoading` in your `Code` like this:

```dart
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    BrandCircleLoading.init(context, 'images/your_brand_logo.png');
    return Scaffold(
    ...
    );
  }
}
```

And then, try use like this:

You can call `BrandCircleLoading` as an `Overlay Loading`:

```dart
BrandCircleLoading().showLoaderOverlay();
```

or also you can call as a `Widget`;

```dart
BrandCircleLoading().buildWidget();
```

## Changelog

[CHANGELOG](./CHANGELOG.md)

## License

[MIT License](./LICENSE)
️❤️
