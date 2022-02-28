import 'package:flutter/cupertino.dart';
import 'package:pocket_health/shared/index.dart';

Container waterPage(onPageChanged) {
  return Container(
    margin: const EdgeInsets.only(top: 48, right: 24, left: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(texts['waterPage']!['subTitle']!,
                style: typography['h_24_bold']),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text('0%', style: typography['h_48_bold']),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('0л из 2,7л', style: typography['p_18_400']),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 48),
          child: Column(
            children: [
              CupertinoButton(
                onPressed: () {},
                color: accentColor,
                child: Text(texts['waterPage']!['buttonText']!),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CupertinoButton(
                  onPressed: () {
                    onPageChanged(1);
                  },
                  child: Text(texts['waterPage']!['linkText']!),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
