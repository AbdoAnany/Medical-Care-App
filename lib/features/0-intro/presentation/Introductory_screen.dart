
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_care_app/core/constants/colors.dart';

import '../../../core/constants/image_strings.dart';
import '../../../core/helpers/helper_functions.dart';
import '../../../core/theme/style.dart';
import '../../../core/theme/widget_themes/switch_theme.dart';
import '../../../core/widget/MainButton.dart';
import '../../login/presentation/pages/LoginScreen.dart';

class IntroductoryScreen extends StatefulWidget {
  const IntroductoryScreen({super.key});

  @override
  State<IntroductoryScreen> createState() => _IntroductoryScreenState();
}

class _IntroductoryScreenState extends State<IntroductoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 48.h,),
        Center(child: Image.asset(ImageApp.logoWithName,height: 98.h,width: 60.w,)),
        SizedBox(height: 38.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Text('تخصيص التطبيق',
              style:Theme.of(context).textTheme.headlineSmall),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 53.w),
          child: Text('يمكنك تخصيص التطبيق من خلال اختيار المنطقة واللغة المستخدمة.',
              style: MyFontStyles.greyMedium18, textAlign: TextAlign.center),
        ),
       SizedBox(height: 58.h),

        Container(height: 56.h,
          padding:  EdgeInsets.symmetric( horizontal: 16.0.w,),
          child: Directionality(textDirection: TextDirection.rtl,
            child: DropdownButtonFormField2<Map<String,dynamic>>(

              style:  MyFontStyles.greyRegular15,
value: selectedGav,
              decoration: InputDecoration(

               contentPadding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),

                label: Text("المحافظة ",    style: Theme.of(context).textTheme.headlineSmall),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: WhiteColors.grey),

                  borderRadius: BorderRadius.circular(15), ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),

                ),
                // Add more decoration..
              ),
              hint:  Text(
                "اختر المحافظة ",
                style: MyFontStyles.greyMedium18
              ),
              items: GovList
                  .map((item) => DropdownMenuItem<Map<String,dynamic>>(
                alignment: AlignmentDirectional.centerEnd,
                value: item,
                child: Text(
                  item['ArabicName'],
                  style:MyFontStyles.greyMedium18
                ),
              ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return "اختر المحافظة ";
                }
                return null;
              },
              onChanged: (value) {

                selectedGav = value;

                print(selectedGav);
                selectedCity=null;
                setState(() {

                });
              },
              onSaved: (value) {
                // selectedGav = value;
                //
                // print(selectedGav);
                // selectedCity=null;
                // setState(() {
                //
                // });
              },
          buttonStyleData:  ButtonStyleData(padding: EdgeInsets.only(left: 8.w),),
              iconStyleData: const IconStyleData(

                icon: Icon(
                  Iconsax.arrow_down_14,
                  color: WhiteColors.textDarkGrey,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

            ),
          ),
        ),

        selectedGav==null?SizedBox(height: 56.h,):
        SizedBox(height: 24.h,),
        Container(height: 56.h,
         padding:  EdgeInsets.symmetric( horizontal: 16.0.w,),
          child: Directionality(
            textDirection: TextDirection.rtl,

            child: DropdownButtonFormField2<Map<String,dynamic>>(


              style:  MyFontStyles.greyRegular15,
              decoration: InputDecoration(

                contentPadding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),

                label: Text("المنطقة",    style:  Theme.of(context).textTheme.headlineSmall),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: WhiteColors.grey),

                  borderRadius: BorderRadius.circular(15), ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),),
                // Add more decoration..
              ),
              hint:  Text(
                "اختر المحافظة ",
                style: MyFontStyles.greyMedium18,
              ),
              items:CityList.where((element) => selectedGav?['GovId']==element['GovID'])
                  .map((item) => DropdownMenuItem<Map<String,dynamic>>(
                alignment: AlignmentDirectional.centerEnd,
                value: item,
                child: Text(
                  item['CityArabicName'],
                  style: MyFontStyles.greyMedium18,
                ),
              ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return "اختر المنطقة";
                }
                return null;
              },
              onChanged: (value) {
                selectedCity = value;
                },
              onSaved: (value) {

              },
              buttonStyleData:  ButtonStyleData(padding: EdgeInsets.only(left: 8.w),),
              iconStyleData: const IconStyleData(

                icon: Icon(
                  Iconsax.arrow_down_14,
                  color: WhiteColors.textDarkGrey,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

            ),
          ),
        ),
        SizedBox(height: 24.h,),
        Container(height: 56.h,
          padding:  EdgeInsets.symmetric( horizontal: 16.0.w,),
          child: Directionality(
            textDirection: TextDirection.rtl,

            child: DropdownButtonFormField2<String>(


              style:  MyFontStyles.greyRegular15,
              decoration: InputDecoration(

                contentPadding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),

                label: Text("اللغة",    style:  Theme.of(context).textTheme.headlineSmall),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: WhiteColors.grey),

                  borderRadius: BorderRadius.circular(15), ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),),
                // Add more decoration..
              ),
              hint:  Text(
                "العربية",
                style: MyFontStyles.greyMedium18,
              ),
              items:['العربية',"English"]
                  .map((item) => DropdownMenuItem<String>(
                alignment: AlignmentDirectional.centerEnd,
                value: item,
                child: Text(
                  item,
                  style: MyFontStyles.greyMedium18,
                ),
              ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return "اختر المنطقة";
                }
                return null;
              },
              onChanged: (value) {
             //   selectedCity = value;
              },
              onSaved: (value) {

              },
              buttonStyleData:  ButtonStyleData(padding: EdgeInsets.only(left: 8.w),),
              iconStyleData: const IconStyleData(

                icon: Icon(
                  Iconsax.arrow_down_14,
                  color: WhiteColors.textDarkGrey,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

            ),
          ),
        ),
        // SizedBox(height: 20.h,),
        SizedBox(height: 40.h),
        MainButton(title: "تسجيل الدخول",
        onPressed: (){
          THelperFunctions.navigateAndReplaceScreen(LoginScreen());

        },
        ),
        MainButtonOutLine(title: "إنشاء حساب",)
      ],),
    );
  }
}


 Map<String,dynamic>? selectedGav;
 Map<String,dynamic>? selectedCity;

List GovList= [
        {
            "GovId": 1,
            "ArabicName": "المنوفية"
        },
        {
            "GovId": 2,
            "ArabicName": "الاسكندرية"
        },
        {
            "GovId": 3,
            "ArabicName": "اسيوط"
        },
        {
            "GovId": 4,
            "ArabicName": "أسوان"
        },
        {
            "GovId": 5,
            "ArabicName": "بني سويف"
        },
        {
            "GovId": 6,
            "ArabicName": "البحيرة"
        },
        {
            "GovId": 7,
            "ArabicName": "القاهرة"
        },
        {
            "GovId": 8,
            "ArabicName": "الدقهلية"
        },
        {
            "GovId": 9,
            "ArabicName": "دمياط"
        },
        {
            "GovId": 10,
            "ArabicName": "الفيوم"
        },
        {
            "GovId": 11,
            "ArabicName": "الغربية"
        },
        {
            "GovId": 12,
            "ArabicName": "الجيزة"
        },
        {
            "GovId": 13,
            "ArabicName": "الاسماعيلية"
        },
        {
            "GovId": 14,
            "ArabicName": "كفر الشيخ"
        },
        {
            "GovId": 15,
            "ArabicName": "الاقصر"
        },
        {
            "GovId": 16,
            "ArabicName": "مرسى مطروح"
        },
        {
            "GovId": 17,
            "ArabicName": "المنيا"
        },
        {
            "GovId": 18,
            "ArabicName": "الوادي الجديد"
        },
        {
            "GovId": 19,
            "ArabicName": "الساحل الشمالي"
        },
        {
            "GovId": 20,
            "ArabicName": "شمال سيناء"
        },
        {
            "GovId": 21,
            "ArabicName": "بورسعيد"
        },
        {
            "GovId": 22,
            "ArabicName": "القليوبية"
        },
        {
            "GovId": 23,
            "ArabicName": "قنا"
        },
        {
            "GovId": 24,
            "ArabicName": "البحر الأحمر"
        },
        {
            "GovId": 25,
            "ArabicName": "الشرقية"
        },
        {
            "GovId": 26,
            "ArabicName": "سوهاج"
        },
        {
            "GovId": 27,
            "ArabicName": "جنوب سيناء"
        },
        {
            "GovId": 28,
            "ArabicName": "السويس"
        }
    ];
List CityList=[
        {
            "CityID": 1,
            "CityArabicName": "المنوفية",
            "GovID": 1
        },
        {
            "CityID": 2,
            "CityArabicName": "أشمون",
            "GovID": 1
        },
        {
            "CityID": 3,
            "CityArabicName": "بركة السبع",
            "GovID": 1
        },
        {
            "CityID": 4,
            "CityArabicName": "منوف",
            "GovID": 1
        },
        {
            "CityID": 5,
            "CityArabicName": "قويسنا",
            "GovID": 1
        },
        {
            "CityID": 6,
            "CityArabicName": "مدينه السادات",
            "GovID": 1
        },
        {
            "CityID": 7,
            "CityArabicName": "شبين الكوم",
            "GovID": 1
        },
        {
            "CityID": 8,
            "CityArabicName": "الشهداء",
            "GovID": 1
        },
        {
            "CityID": 9,
            "CityArabicName": "تلا",
            "GovID": 1
        },
        {
            "CityID": 10,
            "CityArabicName": "الباجور",
            "GovID": 1
        },
        {
            "CityID": 11,
            "CityArabicName": "أبيس",
            "GovID": 2
        },
        {
            "CityID": 12,
            "CityArabicName": "ابو قير",
            "GovID": 2
        },
        {
            "CityID": 13,
            "CityArabicName": " العامرية",
            "GovID": 2
        },
        {
            "CityID": 14,
            "CityArabicName": "البيطاش",
            "GovID": 2
        },
        {
            "CityID": 15,
            "CityArabicName": "النهضة أول العامرية",
            "GovID": 2
        },
        {
            "CityID": 16,
            "CityArabicName": "السيوف",
            "GovID": 2
        },
        {
            "CityID": 17,
            "CityArabicName": "الإسكندرية",
            "GovID": 2
        },
        {
            "CityID": 18,
            "CityArabicName": "العصافرة",
            "GovID": 2
        },
        {
            "CityID": 19,
            "CityArabicName": "عويد راس سودا",
            "GovID": 2
        },
        {
            "CityID": 20,
            "CityArabicName": "الازاريطه",
            "GovID": 2
        },
        {
            "CityID": 21,
            "CityArabicName": "بنجر السكر",
            "GovID": 2
        },
        {
            "CityID": 22,
            "CityArabicName": "برج العرب",
            "GovID": 2
        },
        {
            "CityID": 23,
            "CityArabicName": "سيتي سنتر",
            "GovID": 2
        },
        {
            "CityID": 24,
            "CityArabicName": "البرج القديم",
            "GovID": 2
        },
        {
            "CityID": 25,
            "CityArabicName": "العجمي",
            "GovID": 2
        },
        {
            "CityID": 26,
            "CityArabicName": "جليم",
            "GovID": 2
        },
        {
            "CityID": 27,
            "CityArabicName": "كفر عبده",
            "GovID": 2
        },
        {
            "CityID": 28,
            "CityArabicName": "خورشيد",
            "GovID": 2
        },
        {
            "CityID": 29,
            "CityArabicName": "لوران",
            "GovID": 2
        },
        {
            "CityID": 30,
            "CityArabicName": "المعمورة",
            "GovID": 2
        },
        {
            "CityID": 31,
            "CityArabicName": "محطة الرمل",
            "GovID": 2
        },
        {
            "CityID": 32,
            "CityArabicName": "المندرة",
            "GovID": 2
        },
        {
            "CityID": 33,
            "CityArabicName": "المنشية",
            "GovID": 2
        },
        {
            "CityID": 34,
            "CityArabicName": "ميامي",
            "GovID": 2
        },
        {
            "CityID": 35,
            "CityArabicName": "المنتزة",
            "GovID": 2
        },
        {
            "CityID": 36,
            "CityArabicName": "رشدي",
            "GovID": 2
        },
        {
            "CityID": 37,
            "CityArabicName": "سان ستفانو",
            "GovID": 2
        },
        {
            "CityID": 38,
            "CityArabicName": "سيدي بشر",
            "GovID": 2
        },
        {
            "CityID": 39,
            "CityArabicName": "سيدي جابر",
            "GovID": 2
        },
        {
            "CityID": 40,
            "CityArabicName": "سيدى كرير",
            "GovID": 2
        },
        {
            "CityID": 41,
            "CityArabicName": "سموحه",
            "GovID": 2
        },
        {
            "CityID": 42,
            "CityArabicName": "سبورتنج",
            "GovID": 2
        },
        {
            "CityID": 43,
            "CityArabicName": "ستانلي",
            "GovID": 2
        },
        {
            "CityID": 44,
            "CityArabicName": "زيزينيا",
            "GovID": 2
        },
        {
            "CityID": 45,
            "CityArabicName": "الإبراهيمية",
            "GovID": 2
        },
        {
            "CityID": 46,
            "CityArabicName": "قطاع الطريق الصحراوي",
            "GovID": 2
        },
        {
            "CityID": 47,
            "CityArabicName": "باب شرقي",
            "GovID": 2
        },
        {
            "CityID": 48,
            "CityArabicName": "الدخيلة",
            "GovID": 2
        },
        {
            "CityID": 49,
            "CityArabicName": "العطارين",
            "GovID": 2
        },
        {
            "CityID": 50,
            "CityArabicName": "اللبان",
            "GovID": 2
        },
        {
            "CityID": 51,
            "CityArabicName": "الجمرك",
            "GovID": 2
        },
        {
            "CityID": 52,
            "CityArabicName": "منيا البصل",
            "GovID": 2
        },
        {
            "CityID": 53,
            "CityArabicName": "كنج مريوط",
            "GovID": 2
        },
        {
            "CityID": 54,
            "CityArabicName": "الدائرة الجمركية",
            "GovID": 2
        },
        {
            "CityID": 55,
            "CityArabicName": "كرموس",
            "GovID": 2
        },
        {
            "CityID": 56,
            "CityArabicName": "محرم بك",
            "GovID": 2
        },
        {
            "CityID": 57,
            "CityArabicName": "قسم الرمل",
            "GovID": 2
        },
        {
            "CityID": 58,
            "CityArabicName": "أبنوب",
            "GovID": 3
        },
        {
            "CityID": 59,
            "CityArabicName": "قسم ابو تيج",
            "GovID": 3
        },
        {
            "CityID": 60,
            "CityArabicName": "أسيوط الجديدة",
            "GovID": 3
        },
        {
            "CityID": 61,
            "CityArabicName": "أسيوط",
            "GovID": 3
        },
        {
            "CityID": 62,
            "CityArabicName": "ديروط",
            "GovID": 3
        },
        {
            "CityID": 63,
            "CityArabicName": "البداري",
            "GovID": 3
        },
        {
            "CityID": 64,
            "CityArabicName": "الغنايم",
            "GovID": 3
        },
        {
            "CityID": 65,
            "CityArabicName": "القوصية",
            "GovID": 3
        },
        {
            "CityID": 66,
            "CityArabicName": "الفتح",
            "GovID": 3
        },
        {
            "CityID": 67,
            "CityArabicName": "منفلوط",
            "GovID": 3
        },
        {
            "CityID": 68,
            "CityArabicName": "ساحل سليم",
            "GovID": 3
        },
        {
            "CityID": 69,
            "CityArabicName": "سيرفا",
            "GovID": 3
        },
        {
            "CityID": 70,
            "CityArabicName": "صدفا",
            "GovID": 3
        },
        {
            "CityID": 71,
            "CityArabicName": "اسيوط 1",
            "GovID": 3
        },
        {
            "CityID": 72,
            "CityArabicName": "اسيوط",
            "GovID": 3
        },
        {
            "CityID": 73,
            "CityArabicName": "أبو سمبل",
            "GovID": 4
        },
        {
            "CityID": 74,
            "CityArabicName": "السد العالي",
            "GovID": 4
        },
        {
            "CityID": 75,
            "CityArabicName": "أسوان",
            "GovID": 4
        },
        {
            "CityID": 76,
            "CityArabicName": "دراو",
            "GovID": 4
        },
        {
            "CityID": 77,
            "CityArabicName": "إدفو",
            "GovID": 4
        },
        {
            "CityID": 78,
            "CityArabicName": "كلابشة",
            "GovID": 4
        },
        {
            "CityID": 79,
            "CityArabicName": "كوم امبو",
            "GovID": 4
        },
        {
            "CityID": 80,
            "CityArabicName": "مركز نصر",
            "GovID": 4
        },
        {
            "CityID": 81,
            "CityArabicName": "نصر النوبة",
            "GovID": 4
        },
        {
            "CityID": 82,
            "CityArabicName": "قسم أسوان",
            "GovID": 4
        },
        {
            "CityID": 83,
            "CityArabicName": "مركز  اسوان",
            "GovID": 4
        },
        {
            "CityID": 84,
            "CityArabicName": "صحراء كوم امبو",
            "GovID": 4
        },
        {
            "CityID": 85,
            "CityArabicName": "أبو سمبل",
            "GovID": 4
        },
        {
            "CityID": 86,
            "CityArabicName": "سد أسوان العالي",
            "GovID": 4
        },
        {
            "CityID": 87,
            "CityArabicName": "إهنسية",
            "GovID": 5
        },
        {
            "CityID": 88,
            "CityArabicName": "بنى سويف",
            "GovID": 5
        },
        {
            "CityID": 89,
            "CityArabicName": "ببا",
            "GovID": 5
        },
        {
            "CityID": 90,
            "CityArabicName": "الفشن",
            "GovID": 5
        },
        {
            "CityID": 91,
            "CityArabicName": "الكريمات",
            "GovID": 5
        },
        {
            "CityID": 92,
            "CityArabicName": "الواسطى",
            "GovID": 5
        },
        {
            "CityID": 93,
            "CityArabicName": "مركز ناصر",
            "GovID": 5
        },
        {
            "CityID": 94,
            "CityArabicName": "بنى سويف الجديدة",
            "GovID": 5
        },
        {
            "CityID": 95,
            "CityArabicName": "مركز سمسطا",
            "GovID": 5
        },
        {
            "CityID": 96,
            "CityArabicName": "مركز بنى سويف",
            "GovID": 5
        },
        {
            "CityID": 97,
            "CityArabicName": "أبو المطامير",
            "GovID": 6
        },
        {
            "CityID": 98,
            "CityArabicName": "أبو حمص",
            "GovID": 6
        },
        {
            "CityID": 99,
            "CityArabicName": "البحيرة",
            "GovID": 6
        },
        {
            "CityID": 100,
            "CityArabicName": "الدلنجات",
            "GovID": 6
        },
        {
            "CityID": 101,
            "CityArabicName": "المحمودية",
            "GovID": 6
        },
        {
            "CityID": 102,
            "CityArabicName": "الرحمانية",
            "GovID": 6
        },
        {
            "CityID": 103,
            "CityArabicName": "دمنهور",
            "GovID": 6
        },
        {
            "CityID": 104,
            "CityArabicName": "إدفينا",
            "GovID": 6
        },
        {
            "CityID": 105,
            "CityArabicName": "إدكو",
            "GovID": 6
        },
        {
            "CityID": 106,
            "CityArabicName": "النوبارية",
            "GovID": 6
        },
        {
            "CityID": 107,
            "CityArabicName": "إيتاى البارود",
            "GovID": 6
        },
        {
            "CityID": 108,
            "CityArabicName": "حوش عيسى",
            "GovID": 6
        },
        {
            "CityID": 109,
            "CityArabicName": "كفر الدوار",
            "GovID": 6
        },
        {
            "CityID": 110,
            "CityArabicName": "كوم حمادة",
            "GovID": 6
        },
        {
            "CityID": 111,
            "CityArabicName": "رشيد",
            "GovID": 6
        },
        {
            "CityID": 112,
            "CityArabicName": "شبراخيت",
            "GovID": 6
        },
        {
            "CityID": 113,
            "CityArabicName": "وادى النطرون",
            "GovID": 6
        },
        {
            "CityID": 114,
            "CityArabicName": "مطوبس",
            "GovID": 6
        },
        {
            "CityID": 115,
            "CityArabicName": "عين شمس",
            "GovID": 7
        },
        {
            "CityID": 116,
            "CityArabicName": "الأزهر",
            "GovID": 7
        },
        {
            "CityID": 117,
            "CityArabicName": "الظاهر",
            "GovID": 7
        },
        {
            "CityID": 118,
            "CityArabicName": "القلعة",
            "GovID": 7
        },
        {
            "CityID": 119,
            "CityArabicName": "القصر العيني",
            "GovID": 7
        },
        {
            "CityID": 120,
            "CityArabicName": "المطرية",
            "GovID": 7
        },
        {
            "CityID": 121,
            "CityArabicName": "الموسكي",
            "GovID": 7
        },
        {
            "CityID": 122,
            "CityArabicName": "الرحاب",
            "GovID": 7
        },
        {
            "CityID": 123,
            "CityArabicName": "مدينه السلام",
            "GovID": 7
        },
        {
            "CityID": 124,
            "CityArabicName": "الزيتون",
            "GovID": 7
        },
        {
            "CityID": 125,
            "CityArabicName": "الماظة",
            "GovID": 7
        },
        {
            "CityID": 126,
            "CityArabicName": "الأميرية",
            "GovID": 7
        },
        {
            "CityID": 127,
            "CityArabicName": "مدينة بدر",
            "GovID": 7
        },
        {
            "CityID": 128,
            "CityArabicName": "القاهرة",
            "GovID": 7
        },
        {
            "CityID": 129,
            "CityArabicName": "كورنيش النيل",
            "GovID": 7
        },
        {
            "CityID": 130,
            "CityArabicName": "دار السلام",
            "GovID": 7
        },
        {
            "CityID": 131,
            "CityArabicName": " وسط البلد",
            "GovID": 7
        },
        {
            "CityID": 132,
            "CityArabicName": "الحرفيين",
            "GovID": 7
        },
        {
            "CityID": 133,
            "CityArabicName": "المرج",
            "GovID": 7
        },
        {
            "CityID": 134,
            "CityArabicName": "مدينة الشروق",
            "GovID": 7
        },
        {
            "CityID": 135,
            "CityArabicName": "التحرير",
            "GovID": 7
        },
        {
            "CityID": 136,
            "CityArabicName": "عزبة النخل",
            "GovID": 7
        },
        {
            "CityID": 137,
            "CityArabicName": "الفسطاط",
            "GovID": 7
        },
        {
            "CityID": 138,
            "CityArabicName": "جاردن سيتي",
            "GovID": 7
        },
        {
            "CityID": 139,
            "CityArabicName": "جسر السويس",
            "GovID": 7
        },
        {
            "CityID": 140,
            "CityArabicName": "غمرة",
            "GovID": 7
        },
        {
            "CityID": 141,
            "CityArabicName": "حدائق القبة",
            "GovID": 7
        },
        {
            "CityID": 142,
            "CityArabicName": "حدائق الزيتون",
            "GovID": 7
        },
        {
            "CityID": 143,
            "CityArabicName": "حدائق حلوان",
            "GovID": 7
        },
        {
            "CityID": 144,
            "CityArabicName": "حدائق المعادي",
            "GovID": 7
        },
        {
            "CityID": 145,
            "CityArabicName": "هليوبوليس",
            "GovID": 7
        },
        {
            "CityID": 146,
            "CityArabicName": "الحلمية",
            "GovID": 7
        },
        {
            "CityID": 147,
            "CityArabicName": "حلمية الزيتون",
            "GovID": 7
        },
        {
            "CityID": 148,
            "CityArabicName": "حلوان",
            "GovID": 7
        },
        {
            "CityID": 149,
            "CityArabicName": "قطامية",
            "GovID": 7
        },
        {
            "CityID": 150,
            "CityArabicName": "المعادي",
            "GovID": 7
        },
        {
            "CityID": 151,
            "CityArabicName": "دجلة المعادي   ",
            "GovID": 7
        },
        {
            "CityID": 152,
            "CityArabicName": "مدينتى",
            "GovID": 7
        },
        {
            "CityID": 153,
            "CityArabicName": "منيل الروضة",
            "GovID": 7
        },
        {
            "CityID": 154,
            "CityArabicName": "مساكن شيراتون",
            "GovID": 7
        },
        {
            "CityID": 155,
            "CityArabicName": "ميراج سيتى",
            "GovID": 7
        },
        {
            "CityID": 156,
            "CityArabicName": "مصر القديمة",
            "GovID": 7
        },
        {
            "CityID": 157,
            "CityArabicName": "المقطم",
            "GovID": 7
        },
        {
            "CityID": 158,
            "CityArabicName": "مدينة ناصر",
            "GovID": 7
        },
        {
            "CityID": 159,
            "CityArabicName": "القاهرة الجديدة",
            "GovID": 7
        },
        {
            "CityID": 160,
            "CityArabicName": "المرج الجديدة",
            "GovID": 7
        },
        {
            "CityID": 161,
            "CityArabicName": "المعادى الجديدة",
            "GovID": 7
        },
        {
            "CityID": 162,
            "CityArabicName": "النزهة الجديدة",
            "GovID": 7
        },
        {
            "CityID": 163,
            "CityArabicName": "رمسيس",
            "GovID": 7
        },
        {
            "CityID": 164,
            "CityArabicName": "روض الفرج",
            "GovID": 7
        },
        {
            "CityID": 165,
            "CityArabicName": "السيدة زينب",
            "GovID": 7
        },
        {
            "CityID": 166,
            "CityArabicName": "شبرا",
            "GovID": 7
        },
        {
            "CityID": 167,
            "CityArabicName": "الزمالك",
            "GovID": 7
        },
        {
            "CityID": 168,
            "CityArabicName": "مصر الجديدة",
            "GovID": 7
        },
        {
            "CityID": 169,
            "CityArabicName": "الشرابية",
            "GovID": 7
        },
        {
            "CityID": 170,
            "CityArabicName": "الوايلي",
            "GovID": 7
        },
        {
            "CityID": 171,
            "CityArabicName": "العبور",
            "GovID": 7
        },
        {
            "CityID": 172,
            "CityArabicName": "الدرب الأحمر",
            "GovID": 7
        },
        {
            "CityID": 173,
            "CityArabicName": "النزهة",
            "GovID": 7
        },
        {
            "CityID": 174,
            "CityArabicName": "الشيخ زايد",
            "GovID": 7
        },
        {
            "CityID": 175,
            "CityArabicName": "عابدين",
            "GovID": 7
        },
        {
            "CityID": 176,
            "CityArabicName": "طرة",
            "GovID": 7
        },
        {
            "CityID": 177,
            "CityArabicName": "باب الشريعة",
            "GovID": 7
        },
        {
            "CityID": 178,
            "CityArabicName": "الساحل",
            "GovID": 7
        },
        {
            "CityID": 179,
            "CityArabicName": "البساتين",
            "GovID": 7
        },
        {
            "CityID": 180,
            "CityArabicName": "بولاق أبو العيلة",
            "GovID": 7
        },
        {
            "CityID": 181,
            "CityArabicName": "التبين",
            "GovID": 7
        },
        {
            "CityID": 182,
            "CityArabicName": "العاصمة الادارية الجديدة",
            "GovID": 7
        },
        {
            "CityID": 183,
            "CityArabicName": "الزاوية الحمراء",
            "GovID": 7
        },
        {
            "CityID": 184,
            "CityArabicName": "منشط ناصر",
            "GovID": 7
        },
        {
            "CityID": 185,
            "CityArabicName": "6 اكتوبر",
            "GovID": 7
        },
        {
            "CityID": 186,
            "CityArabicName": "شبرا مصر",
            "GovID": 7
        },
        {
            "CityID": 187,
            "CityArabicName": "15 مايو",
            "GovID": 7
        },
        {
            "CityID": 188,
            "CityArabicName": "قصر النيل",
            "GovID": 7
        },
        {
            "CityID": 189,
            "CityArabicName": "العجوزة",
            "GovID": 7
        },
        {
            "CityID": 190,
            "CityArabicName": "قسم الخليفة",
            "GovID": 7
        },
        {
            "CityID": 191,
            "CityArabicName": "الخليفة",
            "GovID": 7
        },
        {
            "CityID": 192,
            "CityArabicName": "الازبكية",
            "GovID": 7
        },
        {
            "CityID": 193,
            "CityArabicName": "الجمالية",
            "GovID": 7
        },
        {
            "CityID": 194,
            "CityArabicName": "عباسية",
            "GovID": 7
        },
        {
            "CityID": 195,
            "CityArabicName": "العتبة",
            "GovID": 7
        },
        {
            "CityID": 196,
            "CityArabicName": "دار السلام",
            "GovID": 7
        },
        {
            "CityID": 197,
            "CityArabicName": "السواح",
            "GovID": 7
        },
        {
            "CityID": 198,
            "CityArabicName": "اجا",
            "GovID": 8
        },
        {
            "CityID": 199,
            "CityArabicName": "الدقهلية",
            "GovID": 8
        },
        {
            "CityID": 200,
            "CityArabicName": "المنصورة",
            "GovID": 8
        },
        {
            "CityID": 201,
            "CityArabicName": "بلقاس",
            "GovID": 8
        },
        {
            "CityID": 202,
            "CityArabicName": "دكرنس",
            "GovID": 8
        },
        {
            "CityID": 203,
            "CityArabicName": "السنبلاوين",
            "GovID": 8
        },
        {
            "CityID": 204,
            "CityArabicName": "المنزله",
            "GovID": 8
        },
        {
            "CityID": 205,
            "CityArabicName": "ميت غمر",
            "GovID": 8
        },
        {
            "CityID": 206,
            "CityArabicName": "منية النصر",
            "GovID": 8
        },
        {
            "CityID": 207,
            "CityArabicName": "نبروة",
            "GovID": 8
        },
        {
            "CityID": 208,
            "CityArabicName": "شربين",
            "GovID": 8
        },
        {
            "CityID": 209,
            "CityArabicName": "طلخا",
            "GovID": 8
        },
        {
            "CityID": 210,
            "CityArabicName": "تمى الآمديد",
            "GovID": 8
        },
        {
            "CityID": 211,
            "CityArabicName": "الزرقا",
            "GovID": 9
        },
        {
            "CityID": 212,
            "CityArabicName": "دمياط",
            "GovID": 9
        },
        {
            "CityID": 213,
            "CityArabicName": "فارسكور",
            "GovID": 9
        },
        {
            "CityID": 214,
            "CityArabicName": "كفر سعد",
            "GovID": 9
        },
        {
            "CityID": 215,
            "CityArabicName": "دمياط الجديدة",
            "GovID": 9
        },
        {
            "CityID": 216,
            "CityArabicName": "رأس البر",
            "GovID": 9
        },
        {
            "CityID": 217,
            "CityArabicName": "قسم دمياط الاول",
            "GovID": 9
        },
        {
            "CityID": 218,
            "CityArabicName": "ميناء دمياط",
            "GovID": 9
        },
        {
            "CityID": 219,
            "CityArabicName": "قسم دمياط الثاني",
            "GovID": 9
        },
        {
            "CityID": 220,
            "CityArabicName": "الفيوم",
            "GovID": 10
        },
        {
            "CityID": 221,
            "CityArabicName": "أطسا",
            "GovID": 10
        },
        {
            "CityID": 222,
            "CityArabicName": "إبشواي",
            "GovID": 10
        },
        {
            "CityID": 223,
            "CityArabicName": "العجميين",
            "GovID": 10
        },
        {
            "CityID": 224,
            "CityArabicName": "كفور النيل",
            "GovID": 10
        },
        {
            "CityID": 225,
            "CityArabicName": "منشأة عبد الله",
            "GovID": 10
        },
        {
            "CityID": 226,
            "CityArabicName": "منشاة الجمال",
            "GovID": 10
        },
        {
            "CityID": 227,
            "CityArabicName": "الفيوم الجديدة",
            "GovID": 10
        },
        {
            "CityID": 228,
            "CityArabicName": "سنهور",
            "GovID": 10
        },
        {
            "CityID": 229,
            "CityArabicName": "سرسنا",
            "GovID": 10
        },
        {
            "CityID": 230,
            "CityArabicName": "سنورس",
            "GovID": 10
        },
        {
            "CityID": 231,
            "CityArabicName": "طامية",
            "GovID": 10
        },
        {
            "CityID": 232,
            "CityArabicName": "مركز يوسف الصديق",
            "GovID": 10
        },
        {
            "CityID": 233,
            "CityArabicName": "أبشواى",
            "GovID": 10
        },
        {
            "CityID": 234,
            "CityArabicName": "الغربية",
            "GovID": 11
        },
        {
            "CityID": 235,
            "CityArabicName": "المحلة الكبرى",
            "GovID": 11
        },
        {
            "CityID": 236,
            "CityArabicName": "السنطه",
            "GovID": 11
        },
        {
            "CityID": 237,
            "CityArabicName": "بسيون",
            "GovID": 11
        },
        {
            "CityID": 238,
            "CityArabicName": "كفر الزيات",
            "GovID": 11
        },
        {
            "CityID": 239,
            "CityArabicName": "مركز قطور",
            "GovID": 11
        },
        {
            "CityID": 240,
            "CityArabicName": "سمنود",
            "GovID": 11
        },
        {
            "CityID": 241,
            "CityArabicName": "طنطا",
            "GovID": 11
        },
        {
            "CityID": 242,
            "CityArabicName": "زفتى",
            "GovID": 11
        },
        {
            "CityID": 243,
            "CityArabicName": "مدينة السادس من أكتوبر",
            "GovID": 12
        },
        {
            "CityID": 244,
            "CityArabicName": "العجوزة",
            "GovID": 12
        },
        {
            "CityID": 245,
            "CityArabicName": "الكوم الأحمر",
            "GovID": 12
        },
        {
            "CityID": 246,
            "CityArabicName": "المعتمدية",
            "GovID": 12
        },
        {
            "CityID": 247,
            "CityArabicName": "المنيب",
            "GovID": 12
        },
        {
            "CityID": 248,
            "CityArabicName": "النوبارية",
            "GovID": 12
        },
        {
            "CityID": 249,
            "CityArabicName": "بولاق الدكرور",
            "GovID": 12
        },
        {
            "CityID": 250,
            "CityArabicName": "الدقي",
            "GovID": 12
        },
        {
            "CityID": 251,
            "CityArabicName": "فيصل",
            "GovID": 12
        },
        {
            "CityID": 252,
            "CityArabicName": "الجيزة",
            "GovID": 12
        },
        {
            "CityID": 253,
            "CityArabicName": "حدائق الاهرام",
            "GovID": 12
        },
        {
            "CityID": 254,
            "CityArabicName": "الهرم",
            "GovID": 12
        },
        {
            "CityID": 255,
            "CityArabicName": "إمبابة",
            "GovID": 12
        },
        {
            "CityID": 256,
            "CityArabicName": "الكيت كات",
            "GovID": 12
        },
        {
            "CityID": 257,
            "CityArabicName": "المنيل",
            "GovID": 12
        },
        {
            "CityID": 258,
            "CityArabicName": "المهندسين",
            "GovID": 12
        },
        {
            "CityID": 259,
            "CityArabicName": "قسم العمرانية",
            "GovID": 12
        },
        {
            "CityID": 260,
            "CityArabicName": "قسم الجيزة",
            "GovID": 12
        },
        {
            "CityID": 261,
            "CityArabicName": "ساقية مكي",
            "GovID": 12
        },
        {
            "CityID": 262,
            "CityArabicName": "مدينة الشيخ زايد",
            "GovID": 12
        },
        {
            "CityID": 263,
            "CityArabicName": "القرية الذكية",
            "GovID": 12
        },
        {
            "CityID": 264,
            "CityArabicName": "ترسا",
            "GovID": 12
        },
        {
            "CityID": 265,
            "CityArabicName": "وراق",
            "GovID": 12
        },
        {
            "CityID": 266,
            "CityArabicName": "منيل شيحة",
            "GovID": 12
        },
        {
            "CityID": 267,
            "CityArabicName": "ميت قادوس",
            "GovID": 12
        },
        {
            "CityID": 268,
            "CityArabicName": "الواحات البحرية",
            "GovID": 12
        },
        {
            "CityID": 269,
            "CityArabicName": "صفط اللبن",
            "GovID": 12
        },
        {
            "CityID": 270,
            "CityArabicName": "العياط",
            "GovID": 12
        },
        {
            "CityID": 271,
            "CityArabicName": "جزيرة الدهب",
            "GovID": 12
        },
        {
            "CityID": 272,
            "CityArabicName": "البحر الأعظم",
            "GovID": 12
        },
        {
            "CityID": 273,
            "CityArabicName": "ابو النمرس",
            "GovID": 12
        },
        {
            "CityID": 274,
            "CityArabicName": "طموة",
            "GovID": 12
        },
        {
            "CityID": 275,
            "CityArabicName": "الكشافة البحرية",
            "GovID": 12
        },
        {
            "CityID": 276,
            "CityArabicName": "البدرشين",
            "GovID": 12
        },
        {
            "CityID": 277,
            "CityArabicName": "المناوات",
            "GovID": 12
        },
        {
            "CityID": 278,
            "CityArabicName": "الحوامدية",
            "GovID": 12
        },
        {
            "CityID": 279,
            "CityArabicName": "مركز الصف",
            "GovID": 12
        },
        {
            "CityID": 280,
            "CityArabicName": "أطفيح",
            "GovID": 12
        },
        {
            "CityID": 281,
            "CityArabicName": "نزلة الأشطر",
            "GovID": 12
        },
        {
            "CityID": 282,
            "CityArabicName": "هضبة الأهرام",
            "GovID": 12
        },
        {
            "CityID": 283,
            "CityArabicName": "ميت شماس",
            "GovID": 12
        },
        {
            "CityID": 284,
            "CityArabicName": "أبو رواش",
            "GovID": 12
        },
        {
            "CityID": 285,
            "CityArabicName": "الواحات",
            "GovID": 12
        },
        {
            "CityID": 286,
            "CityArabicName": "طريق القاهرة - الإسكندرية الصحراوي",
            "GovID": 12
        },
        {
            "CityID": 287,
            "CityArabicName": "بهتيم",
            "GovID": 12
        },
        {
            "CityID": 288,
            "CityArabicName": " البراجيل",
            "GovID": 12
        },
        {
            "CityID": 289,
            "CityArabicName": "دهشور",
            "GovID": 12
        },
        {
            "CityID": 290,
            "CityArabicName": "الكريمات",
            "GovID": 12
        },
        {
            "CityID": 291,
            "CityArabicName": "منيل الروضة",
            "GovID": 12
        },
        {
            "CityID": 292,
            "CityArabicName": "صقارة",
            "GovID": 12
        },
        {
            "CityID": 293,
            "CityArabicName": "الزمالك",
            "GovID": 12
        },
        {
            "CityID": 294,
            "CityArabicName": "أبو سلطان",
            "GovID": 13
        },
        {
            "CityID": 295,
            "CityArabicName": "ابو صوير",
            "GovID": 13
        },
        {
            "CityID": 296,
            "CityArabicName": "التل الكبير",
            "GovID": 13
        },
        {
            "CityID": 297,
            "CityArabicName": "الصالحية الجديدة",
            "GovID": 13
        },
        {
            "CityID": 298,
            "CityArabicName": "فايد",
            "GovID": 13
        },
        {
            "CityID": 299,
            "CityArabicName": "الإسماعيلية",
            "GovID": 13
        },
        {
            "CityID": 300,
            "CityArabicName": "نفيشة",
            "GovID": 13
        },
        {
            "CityID": 301,
            "CityArabicName": "القنطره غرب",
            "GovID": 13
        },
        {
            "CityID": 302,
            "CityArabicName": "القنطره شرق",
            "GovID": 13
        },
        {
            "CityID": 303,
            "CityArabicName": "سرابيوم",
            "GovID": 13
        },
        {
            "CityID": 304,
            "CityArabicName": "أول الاسماعيلية",
            "GovID": 13
        },
        {
            "CityID": 305,
            "CityArabicName": "ثالث الاسماعيلية",
            "GovID": 13
        },
        {
            "CityID": 306,
            "CityArabicName": "ثان الاسماعيلية",
            "GovID": 13
        },
        {
            "CityID": 307,
            "CityArabicName": "خارج الاسماعيلية",
            "GovID": 13
        },
        {
            "CityID": 308,
            "CityArabicName": "الرياض",
            "GovID": 14
        },
        {
            "CityID": 309,
            "CityArabicName": "بلطيم",
            "GovID": 14
        },
        {
            "CityID": 310,
            "CityArabicName": "بيلا",
            "GovID": 14
        },
        {
            "CityID": 311,
            "CityArabicName": "البرلس",
            "GovID": 14
        },
        {
            "CityID": 312,
            "CityArabicName": "دسوق",
            "GovID": 14
        },
        {
            "CityID": 313,
            "CityArabicName": "",
            "GovID": 14
        },
        {
            "CityID": 314,
            "CityArabicName": "الحامول",
            "GovID": 14
        },
        {
            "CityID": 315,
            "CityArabicName": "كفر الشيخ",
            "GovID": 14
        },
        {
            "CityID": 316,
            "CityArabicName": "مطوبس",
            "GovID": 14
        },
        {
            "CityID": 317,
            "CityArabicName": "قلين",
            "GovID": 14
        },
        {
            "CityID": 318,
            "CityArabicName": "سيدي سالم",
            "GovID": 14
        },
        {
            "CityID": 319,
            "CityArabicName": "ارمنت غرب",
            "GovID": 15
        },
        {
            "CityID": 320,
            "CityArabicName": "ارمنت شرق",
            "GovID": 15
        },
        {
            "CityID": 321,
            "CityArabicName": "الكرنك",
            "GovID": 15
        },
        {
            "CityID": 322,
            "CityArabicName": "القرنة",
            "GovID": 15
        },
        {
            "CityID": 323,
            "CityArabicName": "إسنا",
            "GovID": 15
        },
        {
            "CityID": 324,
            "CityArabicName": "الاقصر",
            "GovID": 15
        },
        {
            "CityID": 325,
            "CityArabicName": "طيبة",
            "GovID": 15
        },
        {
            "CityID": 326,
            "CityArabicName": "الزينيه",
            "GovID": 15
        },
        {
            "CityID": 327,
            "CityArabicName": "البياضية",
            "GovID": 15
        },
        {
            "CityID": 328,
            "CityArabicName": "الطود",
            "GovID": 15
        },
        {
            "CityID": 329,
            "CityArabicName": "العلمين",
            "GovID": 16
        },
        {
            "CityID": 330,
            "CityArabicName": "الضبعة",
            "GovID": 16
        },
        {
            "CityID": 331,
            "CityArabicName": "مرسى مطروح",
            "GovID": 16
        },
        {
            "CityID": 332,
            "CityArabicName": "مطروح",
            "GovID": 16
        },
        {
            "CityID": 333,
            "CityArabicName": "سيدي عبد الرحمن",
            "GovID": 16
        },
        {
            "CityID": 334,
            "CityArabicName": "رأس الحكمة",
            "GovID": 16
        },
        {
            "CityID": 335,
            "CityArabicName": "الحمام",
            "GovID": 16
        },
        {
            "CityID": 336,
            "CityArabicName": "النجيلة",
            "GovID": 16
        },
        {
            "CityID": 337,
            "CityArabicName": "ماربيلا",
            "GovID": 16
        },
        {
            "CityID": 338,
            "CityArabicName": "مراقيا",
            "GovID": 16
        },
        {
            "CityID": 339,
            "CityArabicName": "مارينا",
            "GovID": 16
        },
        {
            "CityID": 340,
            "CityArabicName": "سيوة",
            "GovID": 16
        },
        {
            "CityID": 341,
            "CityArabicName": "أبو قرقاص",
            "GovID": 17
        },
        {
            "CityID": 342,
            "CityArabicName": "المنيا",
            "GovID": 17
        },
        {
            "CityID": 343,
            "CityArabicName": "بني مزار",
            "GovID": 17
        },
        {
            "CityID": 344,
            "CityArabicName": "ديرمواس",
            "GovID": 17
        },
        {
            "CityID": 345,
            "CityArabicName": "العدوة",
            "GovID": 17
        },
        {
            "CityID": 346,
            "CityArabicName": "مالاوي",
            "GovID": 17
        },
        {
            "CityID": 347,
            "CityArabicName": "مطاي",
            "GovID": 17
        },
        {
            "CityID": 348,
            "CityArabicName": "مغاغة",
            "GovID": 17
        },
        {
            "CityID": 349,
            "CityArabicName": "المنيا",
            "GovID": 17
        },
        {
            "CityID": 350,
            "CityArabicName": "سمالوط",
            "GovID": 17
        },
        {
            "CityID": 351,
            "CityArabicName": "المنيا الجديدة",
            "GovID": 17
        },
        {
            "CityID": 352,
            "CityArabicName": "العدوة",
            "GovID": 17
        },
        {
            "CityID": 353,
            "CityArabicName": "الواحات الداخلة",
            "GovID": 18
        },
        {
            "CityID": 354,
            "CityArabicName": "باريس",
            "GovID": 18
        },
        {
            "CityID": 355,
            "CityArabicName": "الخارجة",
            "GovID": 18
        },
        {
            "CityID": 356,
            "CityArabicName": "الفرافرة",
            "GovID": 18
        },
        {
            "CityID": 357,
            "CityArabicName": "الوادى الجديد",
            "GovID": 18
        },
        {
            "CityID": 358,
            "CityArabicName": "توشكى",
            "GovID": 18
        },
        {
            "CityID": 359,
            "CityArabicName": "لساحل الشمالي",
            "GovID": 19
        },
        {
            "CityID": 360,
            "CityArabicName": "",
            "GovID": 20
        },
        {
            "CityID": 361,
            "CityArabicName": "رفح",
            "GovID": 20
        },
        {
            "CityID": 362,
            "CityArabicName": "بور فؤاد",
            "GovID": 21
        },
        {
            "CityID": 363,
            "CityArabicName": "بور سعيد",
            "GovID": 21
        },
        {
            "CityID": 364,
            "CityArabicName": " حي الزهور",
            "GovID": 21
        },
        {
            "CityID": 365,
            "CityArabicName": "المناصرة",
            "GovID": 21
        },
        {
            "CityID": 366,
            "CityArabicName": "شرق التفرية",
            "GovID": 21
        },
        {
            "CityID": 367,
            "CityArabicName": "حي الضواحي",
            "GovID": 21
        },
        {
            "CityID": 368,
            "CityArabicName": "قسم الجنوب الثاني",
            "GovID": 21
        },
        {
            "CityID": 369,
            "CityArabicName": "قسم العرب",
            "GovID": 21
        },
        {
            "CityID": 370,
            "CityArabicName": "قسم الشرق",
            "GovID": 21
        },
        {
            "CityID": 371,
            "CityArabicName": "قسم الجنوب الاول",
            "GovID": 21
        },
        {
            "CityID": 372,
            "CityArabicName": "قسم المناخ",
            "GovID": 21
        },
        {
            "CityID": 373,
            "CityArabicName": "أبو زعبل",
            "GovID": 22
        },
        {
            "CityID": 374,
            "CityArabicName": "الخانكة",
            "GovID": 22
        },
        {
            "CityID": 375,
            "CityArabicName": "الشارع الجديد",
            "GovID": 22
        },
        {
            "CityID": 376,
            "CityArabicName": "بهتيم",
            "GovID": 22
        },
        {
            "CityID": 377,
            "CityArabicName": "بنها",
            "GovID": 22
        },
        {
            "CityID": 378,
            "CityArabicName": "القناطر الخيرية",
            "GovID": 22
        },
        {
            "CityID": 379,
            "CityArabicName": "الخصوص",
            "GovID": 22
        },
        {
            "CityID": 380,
            "CityArabicName": "مدينة العبور",
            "GovID": 22
        },
        {
            "CityID": 381,
            "CityArabicName": "القلج",
            "GovID": 22
        },
        {
            "CityID": 382,
            "CityArabicName": "مركز كفر شكر",
            "GovID": 22
        },
        {
            "CityID": 383,
            "CityArabicName": "ميت نما",
            "GovID": 22
        },
        {
            "CityID": 384,
            "CityArabicName": "مسطرد",
            "GovID": 22
        },
        {
            "CityID": 385,
            "CityArabicName": "أم بيومي",
            "GovID": 22
        },
        {
            "CityID": 386,
            "CityArabicName": "عرابي",
            "GovID": 22
        },
        {
            "CityID": 387,
            "CityArabicName": "قها",
            "GovID": 22
        },
        {
            "CityID": 388,
            "CityArabicName": "قليوب",
            "GovID": 22
        },
        {
            "CityID": 389,
            "CityArabicName": "القليوبية",
            "GovID": 22
        },
        {
            "CityID": 390,
            "CityArabicName": "شبين القناطر",
            "GovID": 22
        },
        {
            "CityID": 391,
            "CityArabicName": "شبرا الخيمة",
            "GovID": 22
        },
        {
            "CityID": 392,
            "CityArabicName": "طوخ",
            "GovID": 22
        },
        {
            "CityID": 393,
            "CityArabicName": "القناطر الخيرية",
            "GovID": 22
        },
        {
            "CityID": 394,
            "CityArabicName": "بيجام",
            "GovID": 22
        },
        {
            "CityID": 395,
            "CityArabicName": "قها",
            "GovID": 22
        },
        {
            "CityID": 396,
            "CityArabicName": "أبو طشت",
            "GovID": 23
        },
        {
            "CityID": 397,
            "CityArabicName": "دشنا",
            "GovID": 23
        },
        {
            "CityID": 398,
            "CityArabicName": "فرشوط",
            "GovID": 23
        },
        {
            "CityID": 399,
            "CityArabicName": "نجع حمادي",
            "GovID": 23
        },
        {
            "CityID": 400,
            "CityArabicName": "نقادة",
            "GovID": 23
        },
        {
            "CityID": 401,
            "CityArabicName": "قنا",
            "GovID": 23
        },
        {
            "CityID": 402,
            "CityArabicName": "قوص",
            "GovID": 23
        },
        {
            "CityID": 403,
            "CityArabicName": "أرمنت",
            "GovID": 23
        },
        {
            "CityID": 404,
            "CityArabicName": "إسنا",
            "GovID": 23
        },
        {
            "CityID": 405,
            "CityArabicName": "الوقف",
            "GovID": 23
        },
        {
            "CityID": 406,
            "CityArabicName": "قفط",
            "GovID": 23
        },
        {
            "CityID": 407,
            "CityArabicName": "قنا الجديدة",
            "GovID": 23
        },
        {
            "CityID": 408,
            "CityArabicName": "الجونة",
            "GovID": 24
        },
        {
            "CityID": 409,
            "CityArabicName": "الغردقة",
            "GovID": 24
        },
        {
            "CityID": 410,
            "CityArabicName": "مرسى علم",
            "GovID": 24
        },
        {
            "CityID": 411,
            "CityArabicName": "القصير",
            "GovID": 24
        },
        {
            "CityID": 412,
            "CityArabicName": "رأس غارب",
            "GovID": 24
        },
        {
            "CityID": 413,
            "CityArabicName": "البحر الأحمر",
            "GovID": 24
        },
        {
            "CityID": 414,
            "CityArabicName": "سفاجا",
            "GovID": 24
        },
        {
            "CityID": 415,
            "CityArabicName": "شلاتين",
            "GovID": 24
        },
        {
            "CityID": 416,
            "CityArabicName": "العريش",
            "GovID": 24
        },
        {
            "CityID": 417,
            "CityArabicName": "راس شقير",
            "GovID": 24
        },
        {
            "CityID": 418,
            "CityArabicName": "مدينة العاشر من رمضان",
            "GovID": 25
        },
        {
            "CityID": 419,
            "CityArabicName": "أبو حماد",
            "GovID": 25
        },
        {
            "CityID": 420,
            "CityArabicName": "أبو كبير",
            "GovID": 25
        },
        {
            "CityID": 421,
            "CityArabicName": "الحسنية",
            "GovID": 25
        },
        {
            "CityID": 422,
            "CityArabicName": "الإبراهيمية",
            "GovID": 25
        },
        {
            "CityID": 423,
            "CityArabicName": "الصالحية الجديدة",
            "GovID": 25
        },
        {
            "CityID": 424,
            "CityArabicName": "الشرقية",
            "GovID": 25
        },
        {
            "CityID": 425,
            "CityArabicName": "أولاد صقر",
            "GovID": 25
        },
        {
            "CityID": 426,
            "CityArabicName": "بلبيس",
            "GovID": 25
        },
        {
            "CityID": 427,
            "CityArabicName": "ديرب نجم",
            "GovID": 25
        },
        {
            "CityID": 428,
            "CityArabicName": "فاقوس",
            "GovID": 25
        },
        {
            "CityID": 429,
            "CityArabicName": "ههيا",
            "GovID": 25
        },
        {
            "CityID": 430,
            "CityArabicName": "كفر صقر",
            "GovID": 25
        },
        {
            "CityID": 431,
            "CityArabicName": "مركز مشتول",
            "GovID": 25
        },
        {
            "CityID": 432,
            "CityArabicName": "منيا القمح",
            "GovID": 25
        },
        {
            "CityID": 433,
            "CityArabicName": "الزقازيق",
            "GovID": 25
        },
        {
            "CityID": 434,
            "CityArabicName": "القرين",
            "GovID": 25
        },
        {
            "CityID": 435,
            "CityArabicName": "القنايات",
            "GovID": 25
        },
        {
            "CityID": 436,
            "CityArabicName": "إنشاص",
            "GovID": 25
        },
        {
            "CityID": 437,
            "CityArabicName": "أخميم",
            "GovID": 26
        },
        {
            "CityID": 438,
            "CityArabicName": "دار السلام",
            "GovID": 26
        },
        {
            "CityID": 439,
            "CityArabicName": "المنشاه",
            "GovID": 26
        },
        {
            "CityID": 440,
            "CityArabicName": "البالينا",
            "GovID": 26
        },
        {
            "CityID": 441,
            "CityArabicName": "جرجا",
            "GovID": 26
        },
        {
            "CityID": 442,
            "CityArabicName": "جهينة",
            "GovID": 26
        },
        {
            "CityID": 443,
            "CityArabicName": "المراغة",
            "GovID": 26
        },
        {
            "CityID": 444,
            "CityArabicName": "ساقلتة",
            "GovID": 26
        },
        {
            "CityID": 445,
            "CityArabicName": "سوهاج",
            "GovID": 26
        },
        {
            "CityID": 446,
            "CityArabicName": "طهطا",
            "GovID": 26
        },
        {
            "CityID": 447,
            "CityArabicName": "طما",
            "GovID": 26
        },
        {
            "CityID": 448,
            "CityArabicName": "العسيرات",
            "GovID": 26
        },
        {
            "CityID": 449,
            "CityArabicName": "سوهاج 1 ",
            "GovID": 26
        },
        {
            "CityID": 450,
            "CityArabicName": "مدينة سوهاج الجديدة",
            "GovID": 26
        },
        {
            "CityID": 451,
            "CityArabicName": " سوهاج 2",
            "GovID": 26
        },
        {
            "CityID": 452,
            "CityArabicName": "شرم الشيخ",
            "GovID": 27
        },
        {
            "CityID": 453,
            "CityArabicName": "راس سدر",
            "GovID": 27
        },
        {
            "CityID": 454,
            "CityArabicName": "راس أبو رديس",
            "GovID": 27
        },
        {
            "CityID": 455,
            "CityArabicName": "الطور",
            "GovID": 27
        },
        {
            "CityID": 456,
            "CityArabicName": "دهب",
            "GovID": 27
        },
        {
            "CityID": 457,
            "CityArabicName": "نويبع",
            "GovID": 27
        },
        {
            "CityID": 458,
            "CityArabicName": "طابا",
            "GovID": 27
        },
        {
            "CityID": 459,
            "CityArabicName": "العين السخنة",
            "GovID": 28
        },
        {
            "CityID": 460,
            "CityArabicName": "الأدبية",
            "GovID": 28
        },
        {
            "CityID": 461,
            "CityArabicName": "السويس",
            "GovID": 28
        },
        {
            "CityID": 462,
            "CityArabicName": "عتاقة",
            "GovID": 28
        },
        {
            "CityID": 463,
            "CityArabicName": "حى الاربعين",
            "GovID": 28
        },
        {
            "CityID": 464,
            "CityArabicName": "حي الجناين",
            "GovID": 28
        },
        {
            "CityID": 465,
            "CityArabicName": "السويس",
            "GovID": 28
        },
        {
            "CityID": 466,
            "CityArabicName": "الجلالة",
            "GovID": 28
        },
        {
            "CityID": 467,
            "CityArabicName": "بورتوفيق",
            "GovID": 28
        },
        {
            "CityID": 468,
            "CityArabicName": "فيصل",
            "GovID": 28
        },
        {
            "CityID": 469,
            "CityArabicName": "القنطره شرق",
            "GovID": 28
        }
    ];