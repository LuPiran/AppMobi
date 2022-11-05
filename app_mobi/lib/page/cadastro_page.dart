

import 'package:app_mobi/page/login_page.dart';
import 'package:app_mobi/widgets/custom_buttom_widget.dart';
import 'package:app_mobi/widgets/text_buttom_widget.dart';
import 'package:app_mobi/widgets/text_field_widget.dart';
import 'package:app_mobi/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController nomeContoller = TextEditingController();
  TextEditingController emailContoller = TextEditingController();
  TextEditingController senhaContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
                const SizedBox(
                  height: 50,
                ),
                TextWidget(
                  title: "Olá é novo por aqui?",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  title: "Cadastre-se para gerenciar seu carro!",
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFieldWidget(
                  controller: nomeContoller,
                  hintText: "Qual é seu nome",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: emailContoller,
                  hintText: "Qual é seu e-mail",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: senhaContoller,
                  hintText: "Crie sua senha",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomButtomWidget(
                    color: Colors.red,
                    onTap: () {},
                    textColor: Colors.white,
                    title: "Cadastrar",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      title: "Já é membro?",
                      fontWeight: FontWeight.bold,
                    ),
                    TextButtomWidget(
                      title: "Entrar",
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}