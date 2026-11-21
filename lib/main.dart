import 'package:flutter/material.dart';
import 'package:flutter_doraemon/doraemon_details.dart';
import 'package:flutter_doraemon/doraemon_painter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(300, 400),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doraemon',
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/clouds.jpg'),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          children: [
            SizedBox(height: 45.h),

            // TITLE
            Text(
              'DORAEMON',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF087DB5),
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              'Your Favorite Robotic Cat',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF315D78),
                letterSpacing: 0.5,
              ),
            ),

            Center(
              child: SizedBox(
                width: 250.w,
                height: 160.h,
                child: CustomPaint(painter: DoraemonPainter()),
              ),
            ),
            SizedBox(height: 15,),
            DoraemonDetails(),
          ],
        ),
      ),
    );
  }
}
