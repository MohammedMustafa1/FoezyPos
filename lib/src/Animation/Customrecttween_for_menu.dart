import 'dart:ui';

import 'package:flutter/material.dart';

class Customrecttween_for_menu extends RectTween {
  Customrecttween_for_menu({
    required Rect? begin,
    required Rect? end,
  }) : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    final elasticCurveValue = Curves.easeOut.transform(t);
    return Rect.fromLTRB(
      double.parse(lerpDouble( begin?.left, end?.left, elasticCurveValue).toString()),
      double.parse(lerpDouble( begin?.top, end?.top, elasticCurveValue).toString()),
      double.parse(lerpDouble( begin?.right, end?.right, elasticCurveValue).toString()),
      double.parse(lerpDouble( begin?.bottom, end?.bottom, elasticCurveValue).toString()),
    );
  }
}