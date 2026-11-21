import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoraemonDetails extends StatelessWidget {
  const DoraemonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: const Color(0xFFD9F0FC)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF087DB5).withOpacity(0.10),
                      blurRadius: 9,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.door_front_door_rounded,
                      color: const Color(0xFF168FCB),
                      size: 25.sp,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'Anywhere Door',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF315D78),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Instant Travel',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 8.sp, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(width: 5.w),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: const Color(0xFFD9F0FC)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF087DB5).withOpacity(0.10),
                      blurRadius: 9,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.flight_takeoff_rounded,
                      color: const Color(0xFF168FCB),
                      size: 25.sp,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'Take-copter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF315D78),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Fly in Sky',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 8.sp, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(width: 5.w),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: const Color(0xFFE7DEFF)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF8967DC).withOpacity(0.10),
                      blurRadius: 9,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.access_time_filled_rounded,
                      color: const Color(0xFF168FCB),
                      size: 25.sp,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'Time Machine',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF315D78),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Time Travel',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 8.sp, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 12.h),

        Container(
          width: 280.w,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.65),
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(color: const Color(0xFFD9F0FC)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF087DB5).withOpacity(0.08),
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF7FF),
                  borderRadius: BorderRadius.circular(11.r),
                ),
                child: Icon(
                  Icons.smart_toy_rounded,
                  size: 25.sp,
                  color: const Color(0xFF087DB5),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Meet Doraemon',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF087DB5),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'A friendly robot cat with amazing gadgets.',
                      style: TextStyle(fontSize: 8.sp, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13.sp,
                color: const Color(0xFF168FCB),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
