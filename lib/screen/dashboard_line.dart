import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardLine extends StatefulWidget {
  const DashboardLine({Key? key}) : super(key: key);

  @override
  State<DashboardLine> createState() => _DashboardLineState();
}

class _DashboardLineState extends State<DashboardLine> {
  final Uri url1 = Uri.parse('https://tinyurl.com/dashboardAMAutobot');
  final Uri url2 = Uri.parse('https://tinyurl.com/dashboardAMBrave');
  final Uri url3 = Uri.parse('https://tinyurl.com/dashboardAMChampion');
  final Uri url4 = Uri.parse('https://tinyurl.com/dashboardAMD-One');
  final Uri url5 = Uri.parse('https://tinyurl.com/dashboardAMEvolution');
  final Uri url6 = Uri.parse('https://tinyurl.com/dashboardAMFuntastic');
  final Uri url7 = Uri.parse('https://tinyurl.com/dashboardAMGoldenGlory');
  final Uri url8 = Uri.parse('https://tinyurl.com/dashboardAMHero');
  final Uri url9 = Uri.parse('https://tinyurl.com/dashboardAMIncredible');
  final Uri url10 = Uri.parse('https://tinyurl.com/dashboardAMRobotic');


  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard All Lines"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buttonLink("Line A", url1),
            buttonLink("Line B", url2),
            buttonLink("Line C", url3),
            buttonLink("Line D", url4),
            buttonLink("Line E", url5),
            buttonLink("Line F", url6),
            buttonLink("Line G", url7),
            buttonLink("Line H", url8),
            buttonLink("Line I", url9),
            buttonLink("Line Robotic",url10),
          ],
        ),
      ),
    );
  }

  Widget buttonLink(String title,url) {
    return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  _launchUrl(url);
                },
                child: Text(title)),
          );
  }
}
