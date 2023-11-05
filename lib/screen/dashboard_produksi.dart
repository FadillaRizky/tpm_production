import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardProduksi extends StatefulWidget {
  const DashboardProduksi({Key? key}) : super(key: key);

  @override
  State<DashboardProduksi> createState() => _DashboardProduksiState();
}

class _DashboardProduksiState extends State<DashboardProduksi> {
  final Uri url1 = Uri.parse('https://tinyurl.com/dashboardProduksi');

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Produksi"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Production Link",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _launchUrl(url1);
                  },
                  child: Text("Click Me")),
            ),
          ],
        ),
      ),
    );
  }
}
