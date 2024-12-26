import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../components/scaffold.dart';
import '../../config/application.dart';
import '../../config/r.dart';
import '../../config/routes.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/example_list_item.dart';

class RiverpodComponent extends StatelessWidget {
  const RiverpodComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return EScaffold(
      appBar: EAppBar(
        title: EStrings.riverpodExampleHomeTitle,
      ),
      body: ListView(
        children: [
          ExampleListItem(
            title: EStrings.riverpodCounterTitle,
            onTap: () => Application.router.navigateTo(
              context,
              Routes.riverpodCounterPage,
              transition: TransitionType.inFromRight,
            ),
          ),
        ],
      ),
    );
  }
}
