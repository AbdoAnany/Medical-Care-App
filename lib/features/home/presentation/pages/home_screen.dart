import 'package:easy_localization/easy_localization.dart ' as easy;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_care_app/features/home/presentation/widgets/home_search_bar.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
import '../../../order/order_screen.dart';
import '../../../profile/profile.dart';
import 'lab_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    MainScreen(),
    OrdersScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: context.locale.languageCode == 'ar'
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: AppColor.primary,
            unselectedItemColor: AppColor.darkGrey,

            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.note),
                label: 'طلباتي',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.bag),
                label: 'السلة',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'ملف الشخصي',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration:
            BoxDecoration(color: AppColor.primary.withOpacity(.1)),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        NavigationHelper.goTo(ProfileScreen());
                      },
                      child:   CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(ImageApp.person_dr), // Replace with your asset image
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "أهلا بعودتك",
                            style: MyFontStyles.blackBold14,
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            children: [
                              Text(
                                " عمر بن الخطاب,القاهرة",
                                style: MyFontStyles.greyRegular14,
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                "  تغيير العنوان ",
                                style: MyFontStyles.primaryBold14,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.white, shape: BoxShape.circle),
                      height: 46.w,
                      width: 46.w,
                      child: Icon(
                        Iconsax.notification,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 27.h,
                ),
                HomeSearchBar(),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 154.h,
            width: 368.w,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 360.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 8.0.w,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageApp.banner1),
                        fit: BoxFit.cover),
                    color: AppColor.lightContainer,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('الخدمات',
                    style: TextStyle(
                        fontSize: 18.w, fontWeight: FontWeight.bold)),

              ],
            ),
          ),

          Container(

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xffD8E8E8))
            ),
            padding:  EdgeInsets.symmetric(horizontal: 16.0.w,vertical:  12.h),
            margin:  EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceIcon(
                  icon: ImageApp.ambulance,
                  label: 'عيادة',
                ),
                ServiceIcon(
                  icon: ImageApp.hospital,
                  label: 'مستشفيات',
                ),
                ServiceIcon(
                  icon: ImageApp.scan,
                  label: 'أشعة',
                ),
                ServiceIcon(
                  icon: ImageApp.anan,
                  label: 'تحاليل',
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('المعامل القريبة',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {},
                  child: Text('عرض الجميع',
                      style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.w)),
                ),
              ],
            ),
          ),

          Container(
            height: 220.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    NavigationHelper.goTo(LabDetails());
                  },
                  child: LabCard(
                    imageAvater: ImageApp.moktaber,
                    image: ImageApp.banner3,

                    /// Replace with your asset image
                    name: 'المختبر',
                    rating: 3.2,
                    distance: '40 عاماً من الخبرة',
                  ),
                ),
                LabCard(
                  imageAvater: ImageApp.moktaber,
                  image: ImageApp.banner2, // Replace with your asset image
                  name: 'البرج',
                  rating: 4.5,
                  distance: '30 عاماً من الخبرة',
                ),
                // Add more LabCard widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Cart Screen'),
      ),
    );
  }
}


class ServiceIcon extends StatelessWidget {
  final String icon;
  final String label;

  ServiceIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: SvgPicture.asset(icon.toString()),
          radius: 20,
        ),
        SizedBox(height: 4.h),
        Text(label,style: TextStyle(fontSize: 14.w,color: AppColor.primary,fontWeight: FontWeight.bold),),
      ],
    );
  }
}

class LabCard extends StatelessWidget {
  final String image;
  final String? imageAvater;
  final String name;
  final double rating;
  final String distance;

  LabCard({
    required this.image,
    this.imageAvater,
    required this.name,
    required this.rating,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.91.w,
      height: 220.h,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: double.infinity, height: 150.h, fit: BoxFit.cover),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageAvater!,
                    width: 40.w, height: 40.w, fit: BoxFit.cover),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(name.tr(),
                            style: TextStyle(
                                fontSize: 16.w, fontWeight: FontWeight.bold)),
                        SizedBox(width: 4.w),
                        Padding(
                          padding: EdgeInsets.only(top: 6.0.h),
                          child: Text(rating.toString(),
                              style: TextStyle(
                                  fontSize: 14.w,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Icon(Icons.star, color: Colors.amber, size: 16.w),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 8.w),
                        Text(distance.tr(),
                            style:
                                TextStyle(fontSize: 14.w, color: Colors.grey)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
