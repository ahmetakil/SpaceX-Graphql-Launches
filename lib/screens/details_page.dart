import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spacex_graphql/models/graphql/graphql_api.dart';

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
    return Scaffold(
      backgroundColor: Color(0xFF191c1f),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.data.mission_name),
        backgroundColor: Color(0xFF08090A),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.data.id,
              child: Container(
                height: 500,
                width: double.infinity,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 2,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (_, index) => ImageCard(
                    imageUrl: imageUrls[index],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: "Launch was : ",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  children: [
                    widget.data.launch_success
                        ? const TextSpan(
                            text: "Sucessful",
                            style: TextStyle(color: Colors.green,fontSize: 20),
                          )
                        : const TextSpan(
                            text: "Failed", style: TextStyle(color: Colors.red))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: AutoSizeText(
                widget.data.details,
                textAlign: TextAlign.start,
                minFontSize: 16,
                softWrap: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
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
