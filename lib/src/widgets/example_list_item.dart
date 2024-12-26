import 'package:flutter/material.dart';
import 'package:flutter_example/src/config/r.dart';
import 'package:flutter_example/src/utils/string_utils.dart';

const _kItemHeight = 60.0;
const _kIconSize = 40.0;
const _kIconRadius = 4.0;
const _kArrowIconSize = 24.0;

class ExampleListItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget? icon;
  final VoidCallback? onTap;

  const ExampleListItem({
    required this.title,
    super.key,
    this.subTitle,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: _kItemHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(_kIconRadius),
              child: Container(
                width: _kIconSize,
                height: _kIconSize,
                color: EColors.cc3,
                child: icon,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: EColors.cc2,
                    ),
                  ),
                  if (StringUtils.isNotNullOrBlank(subTitle))
                    Text(
                      subTitle!,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        color: EColors.cc4,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              width: _kArrowIconSize,
              height: _kArrowIconSize,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: EColors.cc3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
