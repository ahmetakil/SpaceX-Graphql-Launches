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
    // TODO: implement initState
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
              title: Text(widget.data.mission_name),
              backgroundColor: Util.blackColor),
          body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: Util.background,
            ),
            child: SingleChildScrollView(
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
                        text: "Mission was : ",
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
                                  text: "Failed",
                                  style: TextStyle(color: Colors.red))
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
            ),
          ),
        );
      },
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          imageUrl,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ),
    );
  }
}
