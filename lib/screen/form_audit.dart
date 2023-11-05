import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FormAudit extends StatefulWidget {
  const FormAudit({Key? key}) : super(key: key);

  @override
  State<FormAudit> createState() => _FormAuditState();
}

class _FormAuditState extends State<FormAudit> {
  final Uri url1 = Uri.parse('https://docs.google.com/spreadsheets/d/13L6qx-eRtoznE-XY-HlCrC4kVPIFfhFh/edit?usp=drive_link&ouid=112447758252695974739&rtpof=true&sd=true');

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Audit TPM"),
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
                  child: Text("Step 4")),
            ),
          ],
        ),
      ),
    );
  }
}
