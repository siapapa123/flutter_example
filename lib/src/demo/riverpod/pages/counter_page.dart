import 'package:flutter/material.dart';

import '../../../components/scaffold.dart';
import '../../../config/r.dart';
import '../../../widgets/app_bar.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EScaffold(
      appBar: EAppBar(
        title: EStrings.riverpodCounterTitle,
      ),
    );
  }
}
