import 'package:flutter/material.dart';

import '../../../../helpers/helpers.dart';

enum DecoratorType {
  full,
  halfLeft,
  halfRight,
}

class Decorator extends StatelessWidget {
  const Decorator({super.key, this.type = DecoratorType.full});

  final DecoratorType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primaryContent(context),
        // gradient: LinearGradient(
        //   colors: [
        //     if (type != DecoratorType.halfRight) Colors.transparent,
        //     if (type == DecoratorType.full) AppColors.primaryContent(context).withAlpha(alpha(0.5)),
        //     AppColors.primaryContent(context),
        //     if (type == DecoratorType.full) AppColors.primaryContent(context).withAlpha(alpha(0.5)),
        //     if (type != DecoratorType.halfLeft) Colors.transparent,
        //   ],
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        // ),
        borderRadius: BorderRadius.circular(kSpacer),
      ),
    );
  }
}
