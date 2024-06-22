// import 'package:flutter/material.dart';
//
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   bool isDarkTheme = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isDarkTheme ? AppThemes.darkTheme : AppThemes.lightTheme,
//
//       home: HomePage(
//         isDarkTheme: isDarkTheme,
//         toggleTheme: () {
//           setState(() {
//             isDarkTheme = !isDarkTheme;
//           });
//         },
//       ),
//     );
//   }
// }
//
//
// class HomePage extends StatelessWidget {
//   final bool isDarkTheme;
//   final VoidCallback toggleTheme;
//
//   HomePage({required this.isDarkTheme, required this.toggleTheme});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Theme Demo"),
//         backgroundColor: isDarkTheme ? Colors.black : AppColors.primaryColor,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             Text("Headline 1", style: Theme.of(context).textTheme.displayLarge),
//             Text("Headline 2", style: Theme.of(context).textTheme.displayMedium),
//             Text("Headline 3", style: Theme.of(context).textTheme.displaySmall),
//             Text("Subtitle 1", style: Theme.of(context).textTheme.titleMedium),
//             Text("Subtitle 2", style: Theme.of(context).textTheme.titleSmall),
//             Text("Body Text 1", style: Theme.of(context).textTheme.bodyLarge),
//             Text("Body Text 2", style: Theme.of(context).textTheme.bodyMedium),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _showBottomSheet(context),
//               style: ElevatedButton.styleFrom(backgroundColor: AppColors.accentColor),
//               child: Text("Show Bottom Sheet"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: toggleTheme,
//               style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor),
//               child: Text("Toggle Theme"),
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Text("Switch: "),
//                 Switch(
//                   value: isDarkTheme,
//                   onChanged: (value) => toggleTheme(),
//                   activeColor: AppColors.switchColor,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Text("Radio: "),
//                 Radio(
//                   value: true,
//                   groupValue: isDarkTheme,
//                   onChanged: (value) => toggleTheme(),
//                   activeColor: AppColors.radioColor,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Text("CheckBox: "),
//                 Checkbox(
//                   value: isDarkTheme,
//                   onChanged: (value) => toggleTheme(),
//                   activeColor: AppColors.checkboxColor,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _showBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           padding: EdgeInsets.all(16.0),
//           height: 200,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("This is a bottom sheet", style: Theme.of(context).textTheme.titleLarge),
//               SizedBox(height: 10),
//               Text("You can put any content here.", style: Theme.of(context).textTheme.bodyMedium),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: Text("Close"),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
//
//
// class AppCoslors {
//   static const Color primaryColor = Colors.blue;
//   static const Color secondaryColor = Colors.green;
//   static const Color accentColor = Colors.purple;
//   static const Color switchColor = Colors.yellow;
//   static const Color radioColor = Colors.red;
//   static const Color checkboxColor = Colors.green;
// }
//
// class AppTextStyles {
//   static const TextStyle headline1 = TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.red);
//   static const TextStyle headline2 = TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green);
//   static const TextStyle headline3 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue);
//   static const TextStyle subtitle1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.orange);
//   static const TextStyle subtitle2 = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.purple);
//   static const TextStyle bodyText1 = TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.teal);
//   static const TextStyle bodyText2 = TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.pink);
// }
//
// class AppThemes {
//   static final ThemeData lightTheme = ThemeData(
//     primaryColor: AppColors.primaryColor,
//     textTheme: const TextTheme(
//       displayLarge: AppTextStyles.headline1,
//       displayMedium: AppTextStyles.headline2,
//       displaySmall: AppTextStyles.headline3,
//       titleMedium: AppTextStyles.subtitle1,
//       titleSmall: AppTextStyles.subtitle2,
//       bodyLarge: AppTextStyles.bodyText1,
//       bodyMedium: AppTextStyles.bodyText2,
//     ),
//   );
//
//   static final ThemeData darkTheme = ThemeData(
//     primaryColor: AppColors.primaryColor,
//     brightness: Brightness.dark,
//     textTheme: const TextTheme(
//       displayLarge: AppTextStyles.headline1,
//       displayMedium: AppTextStyles.headline2,
//       displaySmall: AppTextStyles.headline3,
//       titleMedium: AppTextStyles.subtitle1,
//       titleSmall: AppTextStyles.subtitle2,
//       bodyLarge: AppTextStyles.bodyText1,
//       bodyMedium: AppTextStyles.bodyText2,
//     ),
//   );
// }
