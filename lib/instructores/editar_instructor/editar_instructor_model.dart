import '/flutter_flow/flutter_flow_util.dart';
import 'editar_instructor_widget.dart' show EditarInstructorWidget;
import 'package:flutter/material.dart';

class EditarInstructorModel extends FlutterFlowModel<EditarInstructorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_NI widget.
  FocusNode? txtNIFocusNode;
  TextEditingController? txtNITextController;
  String? Function(BuildContext, String?)? txtNITextControllerValidator;
  String? _txtNITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0iq5r7f3' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'wbvwjd1t' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NAI widget.
  FocusNode? txtNAIFocusNode;
  TextEditingController? txtNAITextController;
  String? Function(BuildContext, String?)? txtNAITextControllerValidator;
  String? _txtNAITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zs1xixiw' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xpeytyfs' /* Debe ingresar la duración del ... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NCI widget.
  FocusNode? txtNCIFocusNode;
  TextEditingController? txtNCITextController;
  String? Function(BuildContext, String?)? txtNCITextControllerValidator;
  String? _txtNCITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n8dyzqv4' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'lm2r7pt8' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NIDI widget.
  FocusNode? txtNIDIFocusNode;
  TextEditingController? txtNIDITextController;
  String? Function(BuildContext, String?)? txtNIDITextControllerValidator;
  String? _txtNIDITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gg4di69a' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '69q61qav' /* Debe ingresar las áreas de enf... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NTI widget.
  FocusNode? txtNTIFocusNode;
  TextEditingController? txtNTITextController;
  String? Function(BuildContext, String?)? txtNTITextControllerValidator;
  String? _txtNTITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0gy7dqin' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zznt67bl' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NATI widget.
  FocusNode? txtNATIFocusNode;
  TextEditingController? txtNATITextController;
  String? Function(BuildContext, String?)? txtNATITextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNITextControllerValidator = _txtNITextControllerValidator;
    txtNAITextControllerValidator = _txtNAITextControllerValidator;
    txtNCITextControllerValidator = _txtNCITextControllerValidator;
    txtNIDITextControllerValidator = _txtNIDITextControllerValidator;
    txtNTITextControllerValidator = _txtNTITextControllerValidator;
  }

  @override
  void dispose() {
    txtNIFocusNode?.dispose();
    txtNITextController?.dispose();

    txtNAIFocusNode?.dispose();
    txtNAITextController?.dispose();

    txtNCIFocusNode?.dispose();
    txtNCITextController?.dispose();

    txtNIDIFocusNode?.dispose();
    txtNIDITextController?.dispose();

    txtNTIFocusNode?.dispose();
    txtNTITextController?.dispose();

    txtNATIFocusNode?.dispose();
    txtNATITextController?.dispose();
  }
}
