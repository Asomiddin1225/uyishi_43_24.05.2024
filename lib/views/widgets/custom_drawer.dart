// import 'package:flutter/material.dart';
// import 'package:uyishi_43/views/screens/home_screens.dart';
// import 'package:uyishi_43/views/screens/settings_screen.dart';

// class CustomDrawer extends StatelessWidget {
//   final ValueChanged<bool> onThemeModeChanged;

//   const CustomDrawer({
//     super.key,
//     required this.onThemeModeChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           AppBar(
//             automaticallyImplyLeading: false,
//             title: Text("Menyu"),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (ctx) {
//                     return HomeScreen(
//                       onThemeModeChanged: onThemeModeChanged,
//                     );
//                   },
//                 ),
//               );
//             },
//             leading: Icon(Icons.home),
//             title: Text("Bosh Sahifa"),
//             trailing: Icon(
//               Icons.chevron_right_rounded,
//             ),
//           ),
// //--------------------------------------------------

//           ListTile(
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (ctx) {
//                     return SettingsScreen(
//                       onThemeModeChanged: onThemeModeChanged,
//                     );
//                   },
//                 ),
//               );
//             },
//             leading: Icon(Icons.settings),
//             title: Text("Sozlamalar"),
//             trailing: Icon(
//               Icons.chevron_right_rounded,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

//===========================================================

import 'package:flutter/material.dart';
import 'package:uyishi_43/views/screens/home_screens.dart';
import 'package:uyishi_43/views/screens/settings_screen.dart';

class CustomDrawer extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;

  const CustomDrawer({
    super.key,
    required this.onThemeModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("Menyu"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return HomeScreen(
                      onThemeModeChanged: onThemeModeChanged,
                    );
                  },
                ),
              );
            },
            leading: Icon(Icons.home),
            title: Text("Bosh Sahifa"),
            trailing: Icon(
              Icons.chevron_right_rounded,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return SettingsScreen(
                      onThemeModeChanged: onThemeModeChanged,
                    );
                  },
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Sozlamalar"),
            trailing: Icon(Icons.chevron_right_rounded),
          )
        ],
      ),
    );
  }
}
