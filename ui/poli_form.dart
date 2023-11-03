import 'package:flutter/material.dart';
import '../model/poli.dart';
import './poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({super.key});
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Poli")),
      body: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), _tombolSimpan()],
          )),
    );
  }

  _fieldNamaPoli() {
    return TextField(
        controller: _namaPoliCtrl,
        decoration: InputDecoration(labelText: "Nama Poli"));
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: Text("Simpan"));
  }
}
