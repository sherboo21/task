import 'package:flutter/material.dart';

/// App SizedBox Extension ///

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());

  SizedBox get pw => SizedBox(width: toDouble());
}

/// App Padding Extension ///

EdgeInsetsGeometry appPadding = const EdgeInsets.all(16);
EdgeInsetsGeometry appContainerPadding = const EdgeInsets.all(8);

extension CustomPadding on Widget {
  /// padding all ///
  addAllPadding(double val) => Padding(
        padding: EdgeInsets.all(val),
        child: this,
      );

  /// padding symmetric ///
  addSymmetricPadding({double? hVal, double? vVal}) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: hVal ?? 0, vertical: vVal ?? 0),
        child: this,
      );

  /// padding only ///
  addOnlyPadding({double? tVal, double? bVal, double? lVal, double? rVal}) =>
      Padding(
        padding: EdgeInsets.only(
            top: tVal ?? 0,
            bottom: bVal ?? 0,
            left: lVal ?? 0,
            right: rVal ?? 0),
        child: this,
      );
}

/// app navigate Extension ///
extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

/// context extension ///
final GlobalKey<NavigatorState> NK = GlobalKey<NavigatorState>();

extension GlobalContextExt on BuildContext {
  static BuildContext? get globalContext => NK.currentContext;
}
