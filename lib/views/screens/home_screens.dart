
// import 'package:flutter/material.dart';
// import 'package:uyishi_43/views/widgets/custom_drawer.dart';

// class HomeScreen extends StatelessWidget {
//   final ValueChanged<bool> onThemeModeChanged;

//   HomeScreen({
//     super.key,
//     required this.onThemeModeChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Bosh Sahifa"),
//       ),
//       drawer: CustomDrawer(
//         onThemeModeChanged:onThemeModeChanged,
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import 'package:uyishi_43/views/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;

  HomeScreen({
    super.key,
    required this.onThemeModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: _appBarColor,
        title: Text("Bosh Sahifa"),
      ),
      drawer: CustomDrawer(onThemeModeChanged: onThemeModeChanged),
    );
  }
}
