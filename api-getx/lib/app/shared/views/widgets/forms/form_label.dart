import 'package:flutter/material.dart';

import '../../../../../helpers/helpers.dart';

class FormLabel extends StatelessWidget {
  FormLabel(this.label, {this.color});

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      style: TextStyl.label(context).md.medium?.copyWith(
            color: color ?? AppColors.secondaryContent(context),
          ),
    );
  }
}
