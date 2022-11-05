import 'package:app_mobi/api/eletroposto_api.dart';
import 'package:app_mobi/page/detalhes_posto_page.dart';
import 'package:flutter/material.dart';

class PostoPage extends StatefulWidget {
  const PostoPage({super.key});

  @override
  State<PostoPage> createState() => _PostoPageState();
}

class _PostoPageState extends State<PostoPage> {
  EletropostoApi api = EletropostoApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Eletropostos"),
      ),
      body: FutureBuilder<List>(
        future: api.pegarEletroposto(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Erro ao carregar os Eletropostos',
              ),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var eletroposto = snapshot.data![index]['nome'];
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                     
                    },
                    child: Card(
                      child: Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.local_gas_station_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        eletroposto,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  //_getEletroposto(){
  // api.findEletroposto(eletroposto.toString()).then((eletrposto) => null)
  // }

}
