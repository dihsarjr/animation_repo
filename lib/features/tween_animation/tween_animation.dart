import 'package:flutter/material.dart';

class TweenAnimationApp extends StatefulWidget {
  const TweenAnimationApp({Key? key}) : super(key: key);

  @override
  _TweenAnimationAppState createState() => _TweenAnimationAppState();
}

class _TweenAnimationAppState extends State<TweenAnimationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 100.0),
                duration: const Duration(seconds: 5),
                builder: (BuildContext context, double value, _) {
                  return Stack(
                    children: [
                      Container(
                        color: Colors.pink,
                        width: 50,
                        height: value.toDouble(),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.pink, shape: BoxShape.circle),
                        width: 100,
                        height: value.toDouble(),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
