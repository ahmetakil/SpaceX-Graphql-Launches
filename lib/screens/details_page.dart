import 'package:flutter/material.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.dart';

class DetailsPage extends StatelessWidget {

  final PastLaunchesList$Query$LaunchesPast data;

  const DetailsPage({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: data.id,
            child: Image.network(data.links.flickr_images[0]),
          ),
        ],
      ),
    );
  }
}
