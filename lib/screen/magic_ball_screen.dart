import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/api_client.dart';

class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiClient apiClient = ApiClient();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF100C2C), Color(0xFF000002)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () => apiClient.getSimpleResponse(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('lib/assets/ball.png'),
                          Image.asset('lib/assets/small_star.png'),
                          Image.asset('lib/assets/star.png'),
                        ],
                      )),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('lib/assets/big_ellipse.png'),
                        Image.asset('lib/assets/small_ellipse.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
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

