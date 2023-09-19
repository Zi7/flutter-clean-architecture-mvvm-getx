import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final bool needWave;
  final Widget? child;
  final bool needTopSafeArea;
  final bool needTopRadius;

  const GradientBackground({
    Key? key,
    this.needWave = true,
    this.needTopSafeArea = true,
    this.needTopRadius = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return needTopSafeArea
        ? Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: SafeArea(
              child: _buildBackground(context),
            ),
          )
        : _buildBackground(context);
  }

  Widget _buildBackground(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: needTopRadius
                ? const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  )
                : null,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Color(0xFF405FA3),
                Color(0xFF1ED69D),
              ],
            ),
          ),
          child: child,
        ),
        // if (needWave)
        //   Positioned(
        //     bottom: 0,
        //     left: 0,
        //     child: WaveWidget(
        //       config: CustomConfig(
        //         gradients: [
        //           [primaryColor, const Color(0xFF22CC9E)],
        //           [const Color(0xFF2BA99F), const Color(0xFF3BCDAD)],
        //           [const Color(0xFF3CC8AE), const Color(0xFF22C69E)],
        //           [const Color(0xFF55D5B1), const Color(0xFF54D9B1)]
        //         ],
        //         durations: [35000, 19440, 10800, 6000],
        //         heightPercentages: [0.20, 0.23, 0.25, 0.30],
        //         blur: const MaskFilter.blur(BlurStyle.solid, 1),
        //         gradientBegin: Alignment.bottomLeft,
        //         gradientEnd: Alignment.topRight,
        //       ),
        //       waveAmplitude: 20,
        //       size: Size(
        //         MediaQuery.of(context).size.width,
        //         60.0,
        //       ),
        //     ),
        //   ),
      ],
    );
  }
}
