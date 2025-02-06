import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../helpers/helpers.dart';

class MasterLayout extends StatelessWidget {
  final Widget body;
  final Drawer? drawer;
  final Color? backgroundColor;
  final dynamic title;
  final List<Widget>? actions;

  MasterLayout({
    Key? key,
    required this.body,
    this.drawer,
    this.backgroundColor,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor ?? AppColors.primarySurface(context),
        appBar: AppBar(
          elevation: 0,
          title: title is String
              ? Text(
                  "${title != null ? title : Config.appName}",
                )
              : title,
          actions: actions,
        ),
        drawer: drawer,
        body: body,
      ),
    );
  }
}
