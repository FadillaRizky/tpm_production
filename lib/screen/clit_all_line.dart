import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';

class ClitAllLine extends StatefulWidget {
  const ClitAllLine({Key? key}) : super(key: key);

  @override
  State<ClitAllLine> createState() => _ClitAllLineState();
}

class _ClitAllLineState extends State<ClitAllLine> {
  final Uri url1 = Uri.parse('https://flutter.dev');
  final Uri url2 = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clit All Line"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    EasyLoading.showInfo('Coming Soon...');
                  },
                  child: Text("Link A")),
            ),
          ],
        ),
      ),
    );
  }
}
