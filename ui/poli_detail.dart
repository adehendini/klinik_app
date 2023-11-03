import 'package:flutter/material.dart';
import '../model/poli.dart';
import './poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});
  _PoliDetailState createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("Nama Poli : " + widget.poli.namaPoli,
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PoliUpdateForm(poli: widget.poli)));
                  },
                  child: Text("Ubah"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green)),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Hapus"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red))
            ],
          )
        ],
      ),
    );
  }
}
