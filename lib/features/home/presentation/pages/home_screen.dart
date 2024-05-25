import 'package:easy_localization/easy_localization.dart 'as easy;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_care_app/features/home/presentation/widgets/home_search_bar.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
import '../../../profile/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: context.locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,

      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 223.h,
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
                            onTap: (){
                              NavigationHelper.goTo(ProfileScreen());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor.white, shape: BoxShape.circle),
                              height: 48.w,
                              width: 48.w,
                              child: Icon(
                                Iconsax.user,
                                color: AppColor.grey,
                              ),
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
                  height: 16.h,
                ),
                SizedBox(
                  height: 162.h,
                  width: 368.w,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 154.h,
                      width: 360.w,
                      margin:
                      EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(TImages.banner1),
                            fit: BoxFit.fill),
                          color: AppColor.lightContainer,
                          borderRadius: BorderRadius.circular(12)

                      ),
                      child: Row(
                        children: [
                          // Container(
                          //   decoration: BoxDecoration(shape: BoxShape.circle),
                          //   height: 200.w,
                          //   width: 125.w,clipBehavior: Clip.antiAlias,
                          //   margin: EdgeInsets.all(12.h),
                          //
                          //   child: Image.asset(TImages.person_dr,)),

                          Text('Early protection for\n your family health',style: MyFontStyles.blackBold24,),

                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceIcon(
                        icon: Icons.local_hospital,
                        label: 'عيادة',
                      ),
                      ServiceIcon(
                        icon: Icons.local_hospital_outlined,
                        label: 'مستشفيات',
                      ),
                      ServiceIcon(
                        icon: Icons.medical_services,
                        label: 'أشعة',
                      ),
                      ServiceIcon(
                        icon: Icons.shopping_cart,
                        label: 'تحاليل',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('المعامل القريبة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      GestureDetector(
                        onTap: () {},
                        child: Text('عرض الجميع', style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 250.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      LabCard(
                        imageAvater: TImages.moktaber,
                        image: TImages.banner2, /// Replace with your asset image
                        name: 'المختبر',
                        rating: 3.2,
                        distance: '40 عاماً من الخبرة',
                      ),
                      LabCard(
                        imageAvater: TImages.moktaber,
                        image: TImages.banner3, // Replace with your asset image
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
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: context.locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr!,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
          actions: [
            Icon(Icons.notifications, color: Colors.black),
            SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your asset image
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('أهلاً بعودتك'.tr()),
                        Row(
                          children: [
                            Text('عمر بن الخطاب، القاهرة، '.tr(), style: TextStyle(color: Colors.blue)),
                            GestureDetector(
                              onTap: () {},
                              child: Text('تغيير العنوان'.tr(), style: TextStyle(color: Colors.blue)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ابحث عن معامل الأشعة والتحاليل'.tr(),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Image.asset( TImages.moktaber, width: 100), // Replace with your asset image
                    SizedBox(width: 16),
                    // Expanded(
                    //   child: Text(
                    //     'خصومات بمعامل البرج من 30% حتى 50%'.tr(),
                    //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ServiceIcon(
                      icon: Icons.local_hospital,
                      label: 'عيادة'.tr(),
                    ),
                    ServiceIcon(
                      icon: Icons.local_hospital_outlined,
                      label: 'مستشفيات'.tr(),
                    ),
                    ServiceIcon(
                      icon: Icons.medical_services,
                      label: 'أشعة'.tr(),
                    ),
                    ServiceIcon(
                      icon: Icons.shopping_cart,
                      label: 'تحاليل'.tr(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('المعامل القريبة'.tr(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {},
                      child: Text('عرض الجميع'.tr(), style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LabCard(   imageAvater: TImages.banner1,
                      image: TImages.banner1, // Replace with your asset image
                      name: 'المختبر'.tr(),
                      rating: 3.2,
                      distance: '40 عاماً من الخبرة'.tr(),
                    ),
                    LabCard(
                      imageAvater: TImages.banner1,
                      image:  TImages.banner1, // Replace with your asset image
                      name: 'البرج'.tr(),
                      rating: 4.5,
                      distance: '30 عاماً من الخبرة'.tr(),
                    ),
                    // Add more LabCard widgets here if needed
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية'.tr(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  ServiceIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 4),
        Text(label.tr()),
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
      width: 250.w,height: 250.h,
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
          Image.asset(image, width: double.infinity, height: 168.h, fit: BoxFit.cover),
          SizedBox(height: 8.h),
          Padding(
            padding:  EdgeInsets.symmetric( horizontal: 8.0.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageAvater??"", width: double.infinity, height: 48.h, fit: BoxFit.cover),

                Text(name.tr(), style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold)),
                SizedBox(width: 4.w),
                Text(rating.toString(), style: TextStyle(fontSize: 14.w)),

                Icon(Icons.star, color: Colors.amber, size: 16.w),



              ],
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            children: [


              SizedBox(width: 8.w),
              Text(distance.tr(), style: TextStyle(fontSize: 14.w, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
