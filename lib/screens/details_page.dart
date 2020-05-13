import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.dart';
import 'package:spacex_graphql/util/util.dart';

class DetailsPage extends StatefulWidget {
  final PastLaunchesList$Query$LaunchesPast data;

  const DetailsPage({Key key, this.data}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<String> imageUrls;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.data.links.flickr_images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    imageUrls = widget.data.links.flickr_images;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constrains) {
        return Scaffold(
          floatingActionButton: constrains.maxWidth < 800
              ? FloatingActionButton(
                  onPressed: () => Navigator.of(context).pop(),
                  backgroundColor: Util.blackColor,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )
              : null,
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                widget.data.mission_name,
                style: GoogleFonts.martelSans(
                    fontWeight: FontWeight.w600,
                    fontSize: Util.getDetailsTextFontSize(constrains.maxWidth),
                    color: Colors.white),
              ),
              backgroundColor: Util.blackColor),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: Util.background,
            ),
            child: SingleChildScrollView(
              child: constrains.maxWidth < 800
                  ? Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          mainContent(context, constrains),
                          SizedBox(
                            height: 20,
                          ),
                          secondContent(
                              context, constrains, widget.data.rocket, false)
                        ],
                      ),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: mainContent(context, constrains),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height,
                            child: secondContent(
                                context, constrains, widget.data.rocket, true)),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }

  Widget secondContent(BuildContext context, BoxConstraints constrains,
      PastLaunchesList$Query$LaunchesPast$Rocket rocket, bool largeScreen) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        border: largeScreen
            ? Border(
                left: BorderSide(
                color: Colors.black,
                width: 2,
              ))
            : Border(
                top: BorderSide(
                color: Colors.black,
                width: 2,
              )),
      ),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: "Rocket: ",
                  style: GoogleFonts.martelSans(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Util.getDetailsTextFontSize(constrains.maxWidth) *
                              1.2,
                      color: Colors.white),
                  children: [
                    TextSpan(
                        text: "${rocket.rocket_name}",
                        style: TextStyle(color: Colors.amber[800]))
                  ]),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: "Cost Per Launch: ",
                  style: GoogleFonts.martelSans(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Util.getMissionInfoFontSize(constrains.maxWidth),
                      color: Color(0xffAAAAAA)),
                  children: [
                    TextSpan(
                        text: "\$${rocket.rocket.cost_per_launch}",
                        style: TextStyle(color: Colors.green))
                  ]),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: "Height: ",
                  style: GoogleFonts.martelSans(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Util.getMissionInfoFontSize(constrains.maxWidth),
                      color: Color(0xffAAAAAA)),
                  children: [
                    TextSpan(
                        text: "${rocket.rocket.height.meters} meters",
                        style: TextStyle(color: Colors.white))
                  ]),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: "Country: ",
                  style: GoogleFonts.martelSans(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Util.getMissionInfoFontSize(constrains.maxWidth),
                      color: Color(0xffAAAAAA)),
                  children: [
                    TextSpan(
                        text: "${rocket.rocket.country}",
                        style: TextStyle(color: Colors.blueAccent))
                  ]),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: "Engines: ",
                  style: GoogleFonts.martelSans(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          Util.getMissionInfoFontSize(constrains.maxWidth),
                      color: Color(0xffAAAAAA)),
                  children: [
                    TextSpan(
                        text: "${rocket.rocket.engines.number}",
                        style: TextStyle(color: Colors.white))
                  ]),
            ),
          ),
          SizedBox(
            height: largeScreen ? 40 : 20,
          ),
          Container(
            child: Text(
              "${rocket.rocket.description}",
              style: TextStyle(
                color: Color(0xffAAAAAA),
                fontWeight: FontWeight.w300,
                wordSpacing: 0.3,
                fontSize: Util.getDetailsTextFontSize(constrains.maxWidth),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget mainContent(BuildContext context, BoxConstraints constrains) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.85,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 1,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(
                  milliseconds: 500,
                ),
                autoPlayCurve: Curves.easeOutCubic,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (_, index) => ImageCard(
                imageUrl: imageUrls[index],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: "Mission was ",
                style: GoogleFonts.martelSans(
                    fontWeight: FontWeight.w600,
                    fontSize:
                        Util.getDetailsTextFontSize(constrains.maxWidth) * 1.2,
                    color: Colors.white),
                children: [
                  widget.data.launch_success
                      ? const TextSpan(
                          text: "Sucessful",
                          style: TextStyle(color: Colors.green),
                        )
                      : const TextSpan(
                          text: "Failed", style: TextStyle(color: Colors.red))
                ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: MediaQuery.of(context).size.width * 0.08),
            child: Text(
              widget.data.details,
              textAlign: TextAlign.start,
              softWrap: true,
              style: TextStyle(
                  color: Color(0xffAAAAAA),
                  fontWeight: FontWeight.w300,
                  wordSpacing: 0.3,
                  fontSize: Util.getDetailsTextFontSize(constrains.maxWidth)),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: double.infinity,
      color: Util.blackColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          imageUrl,
          fit: BoxFit.scaleDown,
          width: MediaQuery.of(context).size.width * 0.9,
          height: double.infinity,
        ),
      ),
    );
  }
}
