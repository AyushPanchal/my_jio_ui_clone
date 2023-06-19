import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_jio_ui/widgets/custom_icon_with_label.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dotsPosition = 0;
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    cursorHeight: 15.h,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.white24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.h),
                      contentPadding: EdgeInsets.only(top: 8.h, left: 16.h),
                      filled: true,
                      fillColor: Colors.blue.shade900,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.h),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.h),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.h),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: choices.length,
                    itemBuilder: (context, index) {
                      return CustomIconWithLabel(
                        icon: choices[index].icon,
                        label: choices[index].title,
                        bgColor: lightColors[index]!,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 120.h,
                  width: double.maxFinite,
                  child: PageView.builder(
                    itemCount: 5,
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index) {
                      setState(() {
                        dotsPosition = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15.w),
                        height: 100.h,
                        width: 260.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              imageLinks[index],
                            ),
                          ),
                          borderRadius: BorderRadius.circular(20.h),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: DotsIndicator(
                    dotsCount: imageLinks.length,
                    position: dotsPosition,
                    decorator: DotsDecorator(
                      activeColor: Colors.deepPurple,
                      activeSize: Size(23.w, 8.h),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.h),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Text(
                    'My Account(s)',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.h)),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Prepaid Mobile',
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "9327433256",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(CupertinoIcons.right_chevron),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            // padding: EdgeInsets.only(bottom: 10.h),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black12,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Data'),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      '1.19 GB',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.h,
                                      ),
                                    ),
                                    const Text('Left of 1.50 GB'),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      'Renews in 14 hours',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  color: Colors.black12,
                                  height: 90.h,
                                  width: 1.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Plan'),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'Rs. 239',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.h,
                                      ),
                                    ),
                                    const Text('24 days left'),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Text(
                              'Pay using Mobikwik UPI & get up to 50 rs. cashback T&C applies',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.deepPurple,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.h),
                                      ),
                                      disabledForegroundColor:
                                          Colors.deepPurple.withOpacity(0.38),
                                    ),
                                    child: const Text(
                                      "View Plan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.deepPurple,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.h),
                                      ),
                                      disabledForegroundColor:
                                          Colors.deepPurple.withOpacity(0.38),
                                    ),
                                    child: const Text(
                                      "Recharge",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Games', icon: Icons.games_outlined),
  Choice(title: 'Setting', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
  Choice(title: 'Music', icon: Icons.music_note),
  Choice(title: 'Health', icon: Icons.health_and_safety),
  Choice(title: 'Bank', icon: Icons.attach_money),
  Choice(title: 'News', icon: Icons.newspaper),
];

List<Color?> lightColors = [
  Colors.purpleAccent,
  Colors.grey[900],
  Colors.yellow[900],
  Colors.green[900],
  Colors.cyan[900],
  Colors.blue[900],
  Colors.pink[900],
  Colors.orange[900],
  Colors.red[900],
  Colors.purple[900],
  Colors.teal[900],
  Colors.amber[900],
];

List<String> imageLinks = [
  'https://images.unsplash.com/photo-1423784346385-c1d4dac9893a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YXBwc3xlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1533022139390-e31c488d69e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBwc3xlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1512428559087-560fa5ceab42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXBwc3xlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1603566234499-85676f87022f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGFwcHN8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1596558450255-7c0b7be9d56a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fGFwcHN8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=500&q=60',
];
