import 'package:flutter/material.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.graphql.dart';
import 'package:spacex_graphql/screens/details_page.dart';

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
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              left: 10,
              child: Text(
                data.mission_name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: Text(
                "using ${data.rocket.rocket_name}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
