import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.graphql.dart';
import 'package:spacex_graphql/screens/details_page.dart';
import '../util/util.dart';

class ListItem extends StatelessWidget {
  final PastLaunchesList$Query$LaunchesPast data;

  const ListItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DetailsPage(data: data)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.9)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Hero(
                  tag: data.id,
                  child: Image.network(
                    data.links.flickr_images[0],
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              left: 10,
              child: FittedBox(
                fit: BoxFit.cover,
                child: AutoSizeText(
                  data.mission_name,
                  stepGranularity: 1,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: RichText(
                text: TextSpan(
                    text: "",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(text: "Launched "),
                      TextSpan(
                          text: "${data.relativeDate} ",
                          style: TextStyle(
                            color: Colors.amber[800].withOpacity(0.8),
                          )),
                      TextSpan(
                        text: "using ",
                      ),
                      TextSpan(
                          text: "${data.rocket.rocket_name}",
                          style: TextStyle(color: Colors.amber[800]))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
