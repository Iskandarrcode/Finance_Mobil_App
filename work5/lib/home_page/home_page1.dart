import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 72.h,
            ),
        
            ///My appBar section
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 7.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/user-fill.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "SHAHZAIB",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Good Morning!",
                        style: TextStyle(
                            fontSize: 13, color: Color(0xff717171)),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  SvgPicture.asset("assets/icons/Group 22.svg"),
                  SizedBox(
                    width: 7.w,
                  )
                ],
              ),
            ),
        
            /// Balance section
            SizedBox(height: 51.sp),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xfff49A078).withOpacity(0.7),
                        blurRadius: 23,
                        spreadRadius: 3)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 52.sp),
                  const Text(
                    "Your Total Balance",
                    style: TextStyle(color: Color(0xfff696969)),
                  ),
                  SizedBox(height: 20.sp),
                  const Text(
                    "\$7,899.00",
                    style:
                        TextStyle(fontSize: 32, color: Color(0xfff49A078)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hide  ",
                        style: TextStyle(
                            fontSize: 14.sp, color: Colors.grey.shade800),
                      ),
                      SvgPicture.asset("assets/icons/Vector.svg"),
                    ],
                  ),
                ],
              ),
            ),
        
            ///Buttons section
            SizedBox(height: 46.sp),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 41,
                    decoration: BoxDecoration(
                      color: const Color(0xfff49A078),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/send.svg"),
                        SizedBox(width: 5.sp),
                        const Text(
                          "Send",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 41.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xfff94D1BE),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/Receive.svg"),
                        SizedBox(
                          width: 2.sp,
                        ),
                        const Text(
                          "Receive",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 41.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xfff998FC7),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/swap.svg"),
                        SizedBox(
                          width: 5.sp,
                        ),
                        const Text(
                          "Swap",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 41.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xfff000000),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/deposit.svg"),
                        SizedBox(
                          width: 5.sp,
                        ),
                        const Text(
                          "Deposit",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
            ///Recent Transaction section
            SizedBox(height: 49.sp,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Rexent Transaction", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                  SizedBox(height: 38.sp,),
        
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/from.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
        
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/to.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/from.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/from.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/to.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/to.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/from.svg",
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("From Ahmad Mughal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("20 Jan 2024 at 10:00 PM", style: TextStyle(color: Color(0xffAAAAAA)),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Text("+\$3,456.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

