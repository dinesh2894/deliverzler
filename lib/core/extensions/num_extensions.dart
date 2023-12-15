import 'package:deliverzler/core/components/services/responsive_service.dart';
import 'package:flutter/cupertino.dart';

import '../services/responsive_service.dart';

extension SizeExtension on num {
  double w(BuildContext context) => ResponsiveService.scaleWidth(context) * this;

  double h(BuildContext context) => ResponsiveService.scaleHeight(context) * this;

  double r(BuildContext context) => ResponsiveService.scaleRadius(context) * this;

  double sp(BuildContext context) => ResponsiveService.scaleText(context) * this;
}
