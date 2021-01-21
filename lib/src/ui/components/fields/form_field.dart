import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/styles.dart';

class AppFormField extends StatefulWidget {
  final TextEditingController controller;
  final IconData prefixIcon;
  final String hint;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final double borderRadius;
  final int maxLines;
  final String Function(String) validator;
  final String initialValue;

  const AppFormField({
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
    this.initialValue,
  }) : super(key: key);

  @override
  _AppFormFieldState createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
  bool _isObscureText;

  @override
  void initState() {
    super.initState();
    _isObscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          if (widget.hint?.isNotEmpty ?? false)
            Text(
              widget.hint,
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
              ),
            ),
          TextFormField(
            initialValue: widget.initialValue,
            validator: widget.validator,
            controller: widget.controller,
            obscureText: _isObscureText,
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 25, bottom: 10),
              prefixIcon:
                  (widget.prefixIcon == null) ? null : Icon(widget.prefixIcon),
              suffixIcon: widget.obscureText ? _buildObscureIcon() : null,
            ),
          ),
        ],
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
