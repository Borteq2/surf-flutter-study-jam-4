import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/api_client.dart';

class MagicBallScreen extends StatefulWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  _MagicBallScreenState createState() => _MagicBallScreenState();
}

class _MagicBallScreenState extends State<MagicBallScreen> {
  bool waitingResponse = false;

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
                    onTap: () {
                      setState(() {
                        waitingResponse = !waitingResponse;
                      });
                      apiClient.getSimpleResponse();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('lib/assets/ball.png'),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: waitingResponse ? 0.0 : 1.0,
                          child: Image.asset('lib/assets/small_star.png'),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: waitingResponse ? 0.0 : 1.0,
                          child: Image.asset('lib/assets/star.png'),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: waitingResponse ? 1.0 : 0.0,
                          child: Image.asset('lib/assets/black_ball.png'),
                        ),
                      ],
                    ),
                  ),
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


