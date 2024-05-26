



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_care_app/core/constants/colors.dart';
import 'package:medical_care_app/core/constants/image_strings.dart';



class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.teal[50],
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text("طلبات"),
          //   backgroundColor: Colors.teal,
          //   actions: [
          //     IconButton(
          //       icon: Icon(Icons.account_circle),
          //       onPressed: () {
          //         // Profile action
          //       },
          //     ),
          //   ],
          // ),
          body: Column(
            children: [
              UserProfileSection(),
              TabBarSection(),
              Expanded(child: OrderList()),
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 20.0.h, horizontal: 16.0.w),
      color: AppColor.primaryPO.shade100,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(TImages.person_dr),
            radius: 30,
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'أمل عبدالله',
                style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.bold),
              ),
              Text(
                'نتمنى لك الشفاء العاجل بإذن الله',
                style: TextStyle(fontSize: 14.w, color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TabBarSection extends StatefulWidget {
  @override
  _TabBarSectionState createState() => _TabBarSectionState();
}

class _TabBarSectionState extends State<TabBarSection> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,

      tabs: [
        Tab(text: 'غير مكتملة'),
        Tab(text: 'المكتملة'),
      ],

      labelColor: Colors.teal,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.teal,
    );
  }
}

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OrderCard(
          status: 'غير مدفوع',
          labName: 'عز لب',
          paymentType: 'بطاقة الائتمانية',
          totalAmount: '0 ج.م',
          statusColor: Colors.red,
          labIcon: TImages.person_dr,
        ),
        OrderCard(
          status: 'قيد المراجعة',
          labName: 'كيور أكسيميد',
          paymentType: 'بطاقة الائتمانية',
          totalAmount: '300 ج.م',
          statusColor: Colors.orange,
          labIcon: TImages.person_dr,
        ),
      ],
    );
  }
}

class OrderCard extends StatelessWidget {
  final String status;
  final String labName;
  final String paymentType;
  final String totalAmount;
  final Color statusColor;
  final String labIcon;

  OrderCard({
    required this.status,
    required this.labName,
    required this.paymentType,
    required this.totalAmount,
    required this.statusColor,
    required this.labIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(fontSize: 12.w, color: statusColor),
                  ),
                ),
                Spacer(),
                Text(
                  'رقم الطلب #2841',
                  style: TextStyle(fontSize: 14.w, color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(labIcon),
                  radius: 20,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اسم المعمل: $labName',
                      style: TextStyle(fontSize: 14.w, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'نوع الدفع: $paymentType',
                      style: TextStyle(fontSize: 14.w, color: Colors.grey[600]),
                    ),
                    Text(
                      'إجمالي الدفع: $totalAmount',
                      style: TextStyle(fontSize: 14.w, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
