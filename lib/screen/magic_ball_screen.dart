import 'package:flutter/material.dart';

class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF100C2C), Color(0xFF000002)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _BallWidget(),
                  _UnderballLightWidget(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Text(
                'Нажмите на шар\nили потрясите телефон',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Gill_Sans',
                  color: Color(0xFF727272),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _UnderballLightWidget extends StatelessWidget {
  const _UnderballLightWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('lib/assets/big_ellipse.png'),
          Image.asset('lib/assets/small_ellipse.png'),
        ],
      ),
    );
  }
}

class _BallWidget extends StatelessWidget {
  const _BallWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('lib/assets/ball.png'),
        Image.asset('lib/assets/small_star.png'),
        Image.asset('lib/assets/star.png'),
      ],
    );
  }
}
