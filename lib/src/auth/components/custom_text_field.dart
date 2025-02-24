import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.label,
    this.isSecret = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  //Ocorre antes da construção do Widget na tela.
  @override
  void initState() {
    super.initState();
    //print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! $isObscure');
    isObscure = widget.isSecret;
    //print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! $isObscure');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        // variable ? Widget : null  [Condicional Ternária]
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                )
              : null,
          /* IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isObscure = widget.isObscure;
                    });
                  },
                  icon: const Icon(Icons.visibility_off),
                ), */
          /* IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isObscure = !widget.isObscure;
                    });
                  },
                  icon: const Icon(Icons.visibility)), */
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
