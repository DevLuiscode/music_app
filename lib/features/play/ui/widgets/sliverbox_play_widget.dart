import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/shared/const/svg_icon.dart';

class SliverBoxPlayWidget extends StatelessWidget {
  const SliverBoxPlayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SliverToBoxAdapter(
      child: Expanded(
        child: SizedBox(
          height: size.height * 0.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const LinearProgressIndicator(
                  value: 0.3,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1:24",
                      style: textTheme.displayMedium,
                    ),
                    Text(
                      "3:20",
                      style: textTheme.displayMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      IconSvg.aleatorio,
                    ),
                    SvgPicture.asset(
                      IconSvg.skipBack,
                    ),
                    SvgPicture.asset(
                      IconSvg.pauseBtn,
                    ),
                    SvgPicture.asset(
                      IconSvg.skipBorward,
                    ),
                    SvgPicture.asset(
                      IconSvg.repeat,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
