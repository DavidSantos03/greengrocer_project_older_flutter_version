import 'package:flutter/material.dart';
import 'package:greengrocer_project_older_flutter_version/src/auth/components/custom_text_field.dart';
import 'package:greengrocer_project_older_flutter_version/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Nome app
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Green',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'grocer',
                        style: TextStyle(
                          color: CustomColors.customContrastColor,
                        ),
                      ),
                    ],
                  ),
                ),

                //Subtítulo
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: 'Alimentos naturais',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                //Categorias "Laking animated_text_kit implementation"
                /*SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),

          //Formulário
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //E-mail
                const CustomTextField(
                  icon: Icons.email,
                  label: 'E-mail',
                ),
                //Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                //Botão: Entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                //Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: CustomColors.customContrastColor,
                      ),
                    ),
                  ),
                ),
                //Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Ou',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                //Botão: Criar Conta
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
