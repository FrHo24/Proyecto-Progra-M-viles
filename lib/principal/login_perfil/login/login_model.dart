import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for passwordR widget.
  FocusNode? passwordRFocusNode;
  TextEditingController? passwordRTextController;
  late bool passwordRVisibility;
  String? Function(BuildContext, String?)? passwordRTextControllerValidator;
  // State field(s) for confirmPasswordR widget.
  FocusNode? confirmPasswordRFocusNode;
  TextEditingController? confirmPasswordRTextController;
  late bool confirmPasswordRVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordRTextControllerValidator;
  // State field(s) for emailAddressL widget.
  FocusNode? emailAddressLFocusNode;
  TextEditingController? emailAddressLTextController;
  String? Function(BuildContext, String?)? emailAddressLTextControllerValidator;
  // State field(s) for passwordL widget.
  FocusNode? passwordLFocusNode;
  TextEditingController? passwordLTextController;
  late bool passwordLVisibility;
  String? Function(BuildContext, String?)? passwordLTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordRVisibility = false;
    confirmPasswordRVisibility = false;
    passwordLVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordRFocusNode?.dispose();
    passwordRTextController?.dispose();

    confirmPasswordRFocusNode?.dispose();
    confirmPasswordRTextController?.dispose();

    emailAddressLFocusNode?.dispose();
    emailAddressLTextController?.dispose();

    passwordLFocusNode?.dispose();
    passwordLTextController?.dispose();
  }
}
