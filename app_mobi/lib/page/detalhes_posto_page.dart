import 'package:app_mobi/api/eletroposto_api.dart';
import 'package:app_mobi/model/eletroposto.dart';
import 'package:flutter/material.dart';

class DetalhesPostoPage extends StatefulWidget {
  final Eletroposto eletroposto;

  const DetalhesPostoPage({Key? key, required this.eletroposto})
      : super(key: key);

  @override
  State<DetalhesPostoPage> createState() => _DetalhesPostoPageState();
}

class _DetalhesPostoPageState extends State<DetalhesPostoPage> {
  final api = EletropostoApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("Detalhes"),
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List>(
          future: api.pegarEletroposto(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Erro ao carregar o Eletroposto',
                ),
              );
            }

            if (snapshot.hasData) {
              return Column(
                children: [
                  Text(
                    widget.eletroposto.nome.toString(),
                  ),
                ],
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
