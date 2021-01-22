import 'package:brand_circle_loading/brand_circle_loading.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BrandCircleLoading().buildWidget(),
      ),
    );
  }
}
