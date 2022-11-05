import 'package:app_mobi/page/cadastro_page.dart';
import 'package:app_mobi/widgets/custom_buttom_widget.dart';
import 'package:app_mobi/widgets/text_buttom_widget.dart';
import 'package:app_mobi/widgets/text_field_widget.dart';
import 'package:app_mobi/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
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
                  title: "Olá de novo",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  title: "Bem-vindo de volta, você faz falta!",
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFieldWidget(
                  controller: emailController,
                  hintText: "Entre com o seu e-mail",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: senhaController,
                  hintText: "Entre com a sua senha",
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
                    title: "Entrar",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      title: "Não é membro?",
                      fontWeight: FontWeight.bold,
                    ),
                    TextButtomWidget(
                      title: "Registre-se agora",
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CadastroPage(),
                          ),
                        );
                      },
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
