import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rain_guard/widgets/clock_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';

    return Scaffold(
      backgroundColor: Color(0xff2d2f41),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Column(children: [
                    FlutterLogo(),
                    Text(
                      "Clock",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ]))
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Clock",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Text(
                    "Clock",
                    style: TextStyle(fontSize: 64, color: Colors.white),
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ClockView(),
                  Text(
                    "Timezone",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "UTC ${offsetSign} + ${timezoneString}",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
