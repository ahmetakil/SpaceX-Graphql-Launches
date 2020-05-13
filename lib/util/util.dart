import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.dart';
import 'package:timeago/timeago.dart' as timeago;

class Util {
  static LinearGradient background = LinearGradient(
      colors: [
        Color(0xff111524),
        Color(0xff122132),
      ],
      tileMode: TileMode.clamp,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  static double getMissionInfoFontSize(double width) {
    if (width < 300) {
      return 15;
    }
    if (width < 650) {
      return 18;
    }
    return 26;
  }

  static double getDetailsTextFontSize(double width) {
    if (width < 300) {
      // Small and Medium mobile phones.
      return 18;
    }
    if (width < 800) {
      // Large phone and tablets.
      return 20;
    }
    return 28;
  }

  static Color blackColor = Color(0xFF08090A);
}

extension LaunchExtension on PastLaunchesList$Query$LaunchesPast {
  String get relativeDate {
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch(this.launch_date_unix * 1000);
    DateTime now = DateTime.now();
    Duration difference = now.difference(time);
    return timeago.format(now.subtract(difference), locale: 'en');
  }
}
