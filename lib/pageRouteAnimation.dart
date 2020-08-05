import 'package:flutter/cupertino.dart';

class PageRouteAnimation extends PageRouteBuilder {
  final Widget widget;
  PageRouteAnimation({this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 700),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.elasticInOut);
              return ScaleTransition(
                scale: animation,
                child: child,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
