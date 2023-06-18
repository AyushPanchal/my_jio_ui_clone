import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 60.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
          decoration: BoxDecoration(color: Colors.blue.shade800),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 15.h,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue.shade900,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code_2_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
