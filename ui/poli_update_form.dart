import 'package:flutter/material.dart';
import '../model/poli.dart';
import './poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({super.key, required this.poli});
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ubah Poli")),
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
        child: Text("Simpan Perubahan"));
  }
}
