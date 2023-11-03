import 'package:flutter/material.dart';
import './poli_item.dart';
import '../model/poli.dart';
import './poli_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Poli"),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PoliForm()));
              },
              child: Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT"))
        ],
      ),
    );
  }
}
