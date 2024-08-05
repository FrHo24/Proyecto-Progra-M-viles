import '/flutter_flow/flutter_flow_util.dart';
import 'inventarios1_widget.dart' show Inventarios1Widget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Inventarios1Model extends FlutterFlowModel<Inventarios1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for txtNUsuario widget.
  FocusNode? txtNUsuarioFocusNode;
  TextEditingController? txtNUsuarioTextController;
  String? Function(BuildContext, String?)? txtNUsuarioTextControllerValidator;
  // State field(s) for txtAusuario widget.
  FocusNode? txtAusuarioFocusNode;
  TextEditingController? txtAusuarioTextController;
  String? Function(BuildContext, String?)? txtAusuarioTextControllerValidator;
  // State field(s) for txtUCorreo widget.
  FocusNode? txtUCorreoFocusNode;
  TextEditingController? txtUCorreoTextController;
  String? Function(BuildContext, String?)? txtUCorreoTextControllerValidator;
  // State field(s) for txtUID widget.
  FocusNode? txtUIDFocusNode;
  TextEditingController? txtUIDTextController;
  String? Function(BuildContext, String?)? txtUIDTextControllerValidator;
  // State field(s) for txtUNT widget.
  FocusNode? txtUNTFocusNode;
  TextEditingController? txtUNTTextController;
  String? Function(BuildContext, String?)? txtUNTTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    expandableExpandableController1.dispose();
    txtNUsuarioFocusNode?.dispose();
    txtNUsuarioTextController?.dispose();

    txtAusuarioFocusNode?.dispose();
    txtAusuarioTextController?.dispose();

    txtUCorreoFocusNode?.dispose();
    txtUCorreoTextController?.dispose();

    txtUIDFocusNode?.dispose();
    txtUIDTextController?.dispose();

    txtUNTFocusNode?.dispose();
    txtUNTTextController?.dispose();

    expandableExpandableController2.dispose();
    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    textFieldFocusNode3?.dispose();
    textController8?.dispose();

    textFieldFocusNode4?.dispose();
    textController9?.dispose();

    textFieldFocusNode5?.dispose();
    textController10?.dispose();

    expandableExpandableController3.dispose();
    textFieldFocusNode6?.dispose();
    textController11?.dispose();

    textFieldFocusNode7?.dispose();
    textController12?.dispose();

    textFieldFocusNode8?.dispose();
    textController13?.dispose();

    textFieldFocusNode9?.dispose();
    textController14?.dispose();

    textFieldFocusNode10?.dispose();
    textController15?.dispose();

    textFieldFocusNode11?.dispose();
    textController16?.dispose();

    expandableExpandableController4.dispose();
    textFieldFocusNode12?.dispose();
    textController17?.dispose();

    textFieldFocusNode13?.dispose();
    textController18?.dispose();

    textFieldFocusNode14?.dispose();
    textController19?.dispose();

    textFieldFocusNode15?.dispose();
    textController20?.dispose();

    textFieldFocusNode16?.dispose();
    textController21?.dispose();

    textFieldFocusNode17?.dispose();
    textController22?.dispose();
  }
}
