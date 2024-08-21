import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'asistencia_model.dart';
export 'asistencia_model.dart';

class AsistenciaWidget extends StatefulWidget {
  const AsistenciaWidget({super.key});

  @override
  State<AsistenciaWidget> createState() => _AsistenciaWidgetState();
}

class _AsistenciaWidgetState extends State<AsistenciaWidget> {
  late AsistenciaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsistenciaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF175F6D),
        appBar: AppBar(
          backgroundColor: const Color(0xFFE17518),
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'kfi1l967' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<ClientesRecord>>(
                stream: queryClientesRecord(
                  queryBuilder: (clientesRecord) =>
                      clientesRecord.orderBy('nombreCliente'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<ClientesRecord> listViewClientesRecordList =
                      snapshot.data!;

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewClientesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewClientesRecord =
                          listViewClientesRecordList[listViewIndex];
                      return Theme(
                        data: ThemeData(
                          checkboxTheme: const CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValueMap[
                              listViewClientesRecord] ??= false,
                          onChanged: (newValue) async {
                            setState(() => _model.checkboxListTileValueMap[
                                listViewClientesRecord] = newValue!);
                          },
                          title: Text(
                            listViewClientesRecord.nombreCliente,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          subtitle: Text(
                            listViewClientesRecord.cedulaCliente,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      );
                    },
                  );
                },
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  'dx0uvjdp' /* guardar */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFFE17518),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
