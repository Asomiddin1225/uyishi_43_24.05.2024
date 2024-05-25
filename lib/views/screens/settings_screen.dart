import 'package:flutter/material.dart';
import 'package:uyishi_43/utils/app_constants.dart';
import 'package:uyishi_43/views/widgets/custom_drawer.dart';

Color _appBarColor = Colors.blue; //
final List<Color> _containerColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.brown,
  Colors.white,
];
int _selectedColorIndex = 0;

Color _ScaffoldColor = Colors.blue; //
final List<Color> _scaffold = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.brown,
  Colors.white,
];

class SettingsScreen extends StatefulWidget {
  final ValueChanged<bool> onThemeModeChanged;

  const SettingsScreen({
    Key? key,
    required this.onThemeModeChanged,
  }) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void _changeAppBarColor(int index) {
    setState(() {
      _appBarColor = _containerColors[index];
      _selectedColorIndex = index;
    });
  }

  void _changeScaffoldColor(int index1) {
    setState(() {
      _ScaffoldColor = _scaffold[index1];
      _selectedColorIndex = index1;
    });
  }

  void changeScaffoldColor(Color color) {
    setState(() {
      _ScaffoldColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _ScaffoldColor,
      appBar: AppBar(
        title: Text("Sozlamalar"),
        backgroundColor: _appBarColor,
      ),
      drawer: CustomDrawer(
        onThemeModeChanged: widget.onThemeModeChanged,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SwitchListTile(
                  value: AppConstants.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    widget.onThemeModeChanged(value);
                  },
                  title: Text("Tun Holati"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Til O'zgartirish"),
                    Spacer(),
                    PopupMenuButton<String>(
                      onSelected: (String result) {
                        print(result);
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Uzb',
                          child: Text('Uzb'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Rus',
                          child: Text('Rus'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'eng',
                          child: Text('Eng'),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("AppBar Rangini O'zgartirish"),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _containerColors.map((color) {
                        int index = _containerColors.indexOf(color);
                        return GestureDetector(
                          onTap: () => _changeAppBarColor(index),
                          child: Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black), // Radius
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Skafold Rangini O'zgartirish"),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _containerColors.map((color) {
                        int index1 = _containerColors.indexOf(color);
                        return GestureDetector(
                          onTap: () => _changeScaffoldColor(index1),
                          child: Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black), // Radius
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
