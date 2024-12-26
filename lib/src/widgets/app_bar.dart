import 'package:flutter/material.dart';

import '../config/r.dart';

class EAppBar extends AppBar {
  EAppBar({
    required String title,
    super.leading,
    super.actions,
    super.key,
  }) : super(
          backgroundColor: EColors.cc1,
          elevation: 0,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: EColors.cc2,
            ),
          ),
        );
}
