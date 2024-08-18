import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_clase_widget.dart' show EditarClaseWidget;
import 'package:flutter/material.dart';

class EditarClaseModel extends FlutterFlowModel<EditarClaseWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreClase widget.
  FocusNode? txtEditNombreClaseFocusNode;
  TextEditingController? txtEditNombreClaseTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreClaseTextControllerValidator;
  String? _txtEditNombreClaseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5qvtn65i' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'wei9taw7' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_Edit_DescClase widget.
  FocusNode? txtEditDescClaseFocusNode;
  TextEditingController? txtEditDescClaseTextController;
  String? Function(BuildContext, String?)?
      txtEditDescClaseTextControllerValidator;
  String? _txtEditDescClaseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gnh2mt94' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'kfg5jans' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  // State field(s) for txt_Edit_CantClientes widget.
  FocusNode? txtEditCantClientesFocusNode;
  TextEditingController? txtEditCantClientesTextController;
  String? Function(BuildContext, String?)?
      txtEditCantClientesTextControllerValidator;
  // State field(s) for dd_Edit_InstructorAsig widget.
  String? ddEditInstructorAsigValue;
  FormFieldController<String>? ddEditInstructorAsigValueController;

  @override
  void initState(BuildContext context) {
    txtEditNombreClaseTextControllerValidator =
        _txtEditNombreClaseTextControllerValidator;
    txtEditDescClaseTextControllerValidator =
        _txtEditDescClaseTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreClaseFocusNode?.dispose();
    txtEditNombreClaseTextController?.dispose();

    txtEditDescClaseFocusNode?.dispose();
    txtEditDescClaseTextController?.dispose();

    txtEditCantClientesFocusNode?.dispose();
    txtEditCantClientesTextController?.dispose();
  }
}
