import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppRoundedOutlineTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final IconData prefixIcon;
  final String hint;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final double borderRadius;
  final int maxLines;
  final String Function(String) validator;

  const AppRoundedOutlineTextFormField({
    Key key,
    this.controller,
    this.prefixIcon,
    this.hint,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
    this.borderRadius = 30,
    this.maxLines = 1,
    this.validator,
  }) : super(key: key);

  @override
  _AppRoundedOutlineTextFormFieldState createState() =>
      _AppRoundedOutlineTextFormFieldState();
}

class _AppRoundedOutlineTextFormFieldState
    extends State<AppRoundedOutlineTextFormField> {
  bool _isObscureText;

  @override
  void initState() {
    super.initState();
    _isObscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) => Material(
        elevation: 3,
        shadowColor: Colors.black87,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextFormField(
            validator: widget.validator,
            controller: widget.controller,
            obscureText: _isObscureText,
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              prefixIcon:
                  (widget.prefixIcon == null) ? null : Icon(widget.prefixIcon),
              suffixIcon: widget.obscureText ? _buildObscureIcon() : null,
              hintText: widget.hint,
              border: InputBorder.none,
            ),
          ),
        ),
      );

  Widget _buildObscureIcon() => InkWell(
        onTap: () {
          setState(() {
            _isObscureText = !_isObscureText;
          });
        },
        child: Icon(
          _isObscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
          size: 18,
        ),
      );
}
