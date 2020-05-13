import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.dart';
import 'package:spacex_graphql/util/util.dart';
import 'package:spacex_graphql/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF08090A),
        title: Text("SpaceX Launches"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: Util.background,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Query(
          options: QueryOptions(
              documentNode: PastLaunchesListQuery().document,
              variables: {
                'limit': 20,
              }),
          builder: (
            QueryResult result, {
            Future<QueryResult> Function() refetch,
            FetchMore fetchMore,
          }) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }
            if (result.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final List<PastLaunchesList$Query$LaunchesPast> launches =
                PastLaunchesList$Query.fromJson(result.data).launchesPast;

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(
                    seconds: 2,
                  ) ,
                  autoPlayCurve: Curves.easeOutCubic,
                  autoPlayInterval: Duration(seconds: 4),
                  aspectRatio: 0.6,
                  enlargeCenterPage: true,
                ),
                items: launches
                    .map((launchData) => ListItem(
                          data: launchData,
                        ))
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
