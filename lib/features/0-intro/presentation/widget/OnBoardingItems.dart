


import '../../../../core/constants/image_strings.dart';
import 'OnBoardingInfo.dart';

class OnBoardingItems{
  List<OnBoardingInfo> items = [
    OnBoardingInfo(
        title: "نعمل علي راحتك",
        descriptions: "نسعي الي تحقيق راحتك الكاملة من خلال توفير خصومات علي جميع الخدمات الطبية.",
        image: ImageApp.onBoarding1,
        line: ImageApp.onBoardingLine1,
    ),

    OnBoardingInfo(
        title:"معامل طبية",
        descriptions: "لن يكون العثور على أفضل الخدمات الطبية بأسعار معقولة أمرًا صعبًا بعد الآن.",
      image: ImageApp.onBoarding2,
      line: ImageApp.onBoardingLine2,
    ),

    OnBoardingInfo(
        title: "زيارة منزلية",
      descriptions: "مع إمكانية التوصيل السريعة لراحة افضل لأننا نعمل دائما علي راحتك.",
      line: ImageApp.onBoardingLine3,
      image: ImageApp.onBoarding3,

    ),



  ];
 }