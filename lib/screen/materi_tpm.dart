import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MateriTPM extends StatefulWidget {
  const MateriTPM({Key? key}) : super(key: key);

  @override
  State<MateriTPM> createState() => _MateriTPMState();
}

class _MateriTPMState extends State<MateriTPM> {
  final Uri url1 = Uri.parse('https://docs.google.com/presentation/d/1lz_g2YnaoHmbVa_JoHRLc6MyL7-x0X-n/edit?usp=drive_link&ouid=112447758252695974739&rtpof=true&sd=true');

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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _launchUrl(url1);
                  },
                  child: Text("Step 4.3")),
            ),
          ],
        ),
      ),
    );
  }
}
