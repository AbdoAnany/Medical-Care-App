

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_care_app/core/constants/colors.dart';

import '../../core/constants/image_strings.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   leading: Icon(Icons.arrow_back, color: Colors.black),
          //   actions: [
          //     Icon(Icons.more_vert, color: Colors.black),
          //   ],
          // ),
          body: Column(
            children: [
              Container(
        color: AppColor.primaryPO.shade100
                ,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(TImages.person_dr), // Replace with your asset image
                    ),
                    SizedBox(height: 10),
                    Text(
                      'عبدالله عزالدين',
                      style: TextStyle(
                        fontSize: 22.w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '+20 10 153 2346',
                      style: TextStyle(fontSize: 17.w,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: Colors.grey.shade300,),
                color: Colors.white,
              ),
              child:
              Column(
                children: [
                  ProfileListItem(
                    icon: Iconsax.user,
                    text: 'البيانات الشخصية',
                  ),
                  ProfileListItem(
                    icon: Iconsax.wallet,
                    text: 'محفظتي',
                  ),
                  ProfileListItem(
                    icon: Iconsax.notification,
                    text: 'الإشعارات',
                  ),
                  ProfileListItem(
                    icon: Iconsax.language_circle,
                    text: 'اللغة',
                    trailing: LanguageToggle(),
                  ),
                ],
              ),),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                          color: Colors.grey.shade300,),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          ProfileListItem(
                            icon: Iconsax.support,
                            text: 'الدعم',
                          ),
                          ProfileListItem(
                            icon: Iconsax.like_dislike,
                            text: 'تقييم التطبيق',
                          ),
                          ProfileListItem(
                            icon: Iconsax.message_question,
                            text: 'الأسئلة المتكررة',
                          ),
                          ProfileListItem(
                            icon: Iconsax.share,
                            text: 'مشاركة التطبيق',
                          ),
                          ProfileListItem(
                            icon: Iconsax.logout_1,
                            text: 'تسجيل الخروج',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('V1.2.0  |  سياسة الخصوصية  |  الشروط والأحكام'),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: AppColor.primary,
            unselectedItemColor: AppColor.darkerGrey,


            items: [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'الرئيسية',
              ),

              BottomNavigationBarItem(
                icon: Icon(Iconsax.notification),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.shopping_bag),
                label: 'الرئيسية',
              ),



              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'الرئيسية',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget trailing;

  ProfileListItem({
    required this.icon,
    required this.text,
    this.trailing = const Icon(Icons.arrow_back_ios, size: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
      child: Row(
        children: [
          trailing,
          Spacer(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),

            child: Text(text, style: TextStyle(fontSize: 18.w)),
          ),

          Icon(icon),
        ],

      ),
    );
  }
}

class LanguageToggle extends StatefulWidget {
  @override
  _LanguageToggleState createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isArabic = true;
            });
          },
          child: Text(
            'AR',
            style: TextStyle(
              color: isArabic ? Colors.black : Colors.grey,
            ),
          ),
        ),
        Switch(
          activeColor: AppColor.primary,
          value: isArabic,

          onChanged: (value) {
            setState(() {
              isArabic = value;
            });
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isArabic = false;
            });
          },
          child: Text(
            'EN',
            style: TextStyle(
              color: isArabic ? Colors.grey : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
