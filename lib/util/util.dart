import 'package:spacex_graphql/models/graphql/graphql_api.dart';
import 'package:timeago/timeago.dart' as timeago;

class Util {}

extension LaunchExtension on PastLaunchesList$Query$LaunchesPast {
  String get relativeDate {
    DateTime time =
        DateTime.fromMillisecondsSinceEpoch(this.launch_date_unix * 1000);
    DateTime now = DateTime.now();
    Duration difference = now.difference(time);
    return timeago.format(now.subtract(difference), locale: 'en');
  }
}
