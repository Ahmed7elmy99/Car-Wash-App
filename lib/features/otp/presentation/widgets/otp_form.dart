/*
edited by : waleed
edited at (28/10/2024)
edits :
change the otp form to be only 4 fields 
 */

import 'package:car_wash_mobile_app/features/otp/presentation/widgets/otp_text_form_field.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key, this.onGenerateFields});
  final void Function(
          List<TextEditingController> controllers, List<FocusNode> focusNodes)?
      onGenerateFields;
  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  List<FocusNode> focusNodes = [];
  List<TextEditingController> controllers = [];
  List<Widget> fields = [];
  @override
  void initState() {
    _generateFields();
    super.initState();
  }

  void _generateFields() {
    for (var i = 0; i < 6; i++) {
      focusNodes.add(FocusNode());
      controllers.add(TextEditingController());
    }
    for (int i = 0; i < 6; i++) {
      fields.add(
        OtpTextFormField(
          controller: controllers[i],
          focusNode: focusNodes[i],
        ),
      );
    }
    widget.onGenerateFields!(controllers, focusNodes);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: fields,
    );
  }
}
