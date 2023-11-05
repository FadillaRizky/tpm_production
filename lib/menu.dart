import 'package:flutter/material.dart';
import 'package:tpm_production/screen/clit_all_line.dart';
import 'package:tpm_production/screen/dashboard_line.dart';
import 'package:tpm_production/screen/dashboard_produksi.dart';
import 'package:tpm_production/screen/form_audit.dart';
import 'package:tpm_production/screen/materi_tpm.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TPM MENU",style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset("assets/logo.png",width: 200,),
              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => DashboardProduksi()));
                    },
                    child: Text("Dashboard Produksi")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => DashboardLine()));
                }, child: Text("Dashboard All Line")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => ClitAllLine()));
                }, child: Text("Clit All Line")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => FormAudit()));
                }, child: Text("Form Audit TPM")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => MateriTPM()));
                }, child: Text("Materi TPM")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
