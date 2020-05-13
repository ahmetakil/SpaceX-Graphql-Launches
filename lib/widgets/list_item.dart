import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      child: LayoutBuilder(
        builder: (ctx, constraints) => Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    data.links.flickr_images[0],
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: constraints.maxHeight,
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                left: 10,
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: constraints.maxWidth * 0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.mission_name,
                          maxLines: 2,
                          style: GoogleFonts.martelSans(
                              color: Colors.white,
                              fontSize:
                                  Util.getDetailsTextFontSize(constraints.maxWidth) *
                                      1.3,
                              fontWeight: FontWeight.w700),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "",
                              style: TextStyle(
                                color: Color(0xffAAAAAA),
                                fontSize:
                                Util.getMissionInfoFontSize(constraints.maxWidth),
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
                                    style: TextStyle(
                                        color: Colors.amber[800].withOpacity(0.8)))
                              ]),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
