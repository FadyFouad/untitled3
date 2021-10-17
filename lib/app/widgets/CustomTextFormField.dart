import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 20-Sep-21 at 16:01.***
///****************************************************

class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final Icon icon;
  final bool isSecured;

  const AuthTextField(
      {Key? key,
      required this.controller,
      required this.hint,
      required this.icon,
      required this.label,
      required this.isSecured})
      : super(key: key);

  @override
  _AuthTextFieldState createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${widget.label}'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: widget.controller,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              obscureText: _passwordVisible,
              decoration: widget.isSecured
                  ? InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: widget.icon,
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          }),
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.white, width: 0.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      labelText: 'Password',
                      hintText: '')
                  : InputDecoration(
                      prefixIcon: widget.icon,
                      filled: true,
                      fillColor: Colors.grey[200],
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.white, width: 0.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      hintText: '${widget.hint}'),
            ),
          ),
        ],
      ),
    );
  }
}
