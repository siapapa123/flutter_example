import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../config/application.dart';
import '../config/r.dart';
import '../config/routes.dart';
import '../widgets/app_bar.dart';
import '../widgets/example_list_item.dart';
import 'scaffold.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return EScaffold(
      appBar: EAppBar(
        title: EStrings.homeTitle,
      ),
      body: ListView(
        children: [
          ExampleListItem(
            title: EStrings.riverpodExampleHomeTitle,
            subTitle: EStrings.riverpodDescription,
            icon: Image.asset(
              EImgs.riverpodLogo,
            ),
            onTap: () => Application.router.navigateTo(
              context,
              Routes.riverpodHome,
              transition: TransitionType.inFromRight,
            ),
          ),
        ],
      ),
    );
  }
}
