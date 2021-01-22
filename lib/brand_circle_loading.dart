library brand_circle_loading;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BrandCircleLoading {
  static BrandCircleLoading _instance;

  BrandCircleLoading._();

  factory BrandCircleLoading() {
    assert(
      _instance != null,
      '\nEnsure to initialize BrandCircleLoading before accessing it.',
    );
    return _instance;
  }

  BuildContext context;
  String imagePath;
  bool dismissOnBack;
  bool dismissOnTapOverlay;
  CircularProgressIndicator circularLoading;

  static void init(
    BuildContext context,
    String imagePath, {
    bool dismissOnBack = false,
    bool dismissOnTapOverlay = false,
    CircularProgressIndicator circularLoading =
        const CircularProgressIndicator(),
  }) {
    _instance ??= BrandCircleLoading._();
    _instance
      ..context = context
      ..imagePath = imagePath
      ..dismissOnBack = dismissOnBack
      ..dismissOnTapOverlay = dismissOnTapOverlay
      ..circularLoading = circularLoading;
  }

  double _screenWidth() => MediaQuery.of(context).size.width;

  Future<bool> showLoaderOverlay({CircularProgressIndicator circularLoading}) {
    return showDialog(
      context: context,
      barrierDismissible: dismissOnTapOverlay,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => dismissOnBack,
          child: Dialog(
            shape: CircleBorder(),
            child: buildWidget(circularLoading: circularLoading),
          ),
        );
      },
    );
  }

  Widget buildWidget({CircularProgressIndicator circularLoading}) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: _screenWidth() * (kIsWeb ? 0.125 : .25),
              height: _screenWidth() * (kIsWeb ? 0.125 : .25),
              padding: EdgeInsets.all(_screenWidth() * (kIsWeb ? 0.025 : .05)),
              decoration:
                  ShapeDecoration(color: Colors.white, shape: CircleBorder()),
              child: imagePath == null
                  ? Text('Loading...')
                  : Image.asset(imagePath)),
          SizedBox(
              width: _screenWidth() * (kIsWeb ? 0.125 : .25),
              height: _screenWidth() * (kIsWeb ? 0.125 : .25),
              child: circularLoading ?? this.circularLoading),
        ],
      );
}
