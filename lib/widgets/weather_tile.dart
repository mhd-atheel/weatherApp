import 'package:flutter/material.dart';

class WeatherTile extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;

  WeatherTile({
    required this.icon,
    required this.title,
    required this.subtitle
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          Icon(icon,color: Colors.purple,)
        ],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
      subtitle: Text(
          subtitle,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff9e9e9e)
        ),
      ),
    );
  }
}
