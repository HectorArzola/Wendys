import 'caja.dart';
import '../wendyspack/deslizador.dart';
import '../wendyspack/iconos.dart';
import '../wendyspack/temas.dart';
import '../wendyspack/utils.dart';
import '../wendyspack/widgets.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PromocionesWidget extends StatefulWidget {
  const PromocionesWidget({Key key}) : super(key: key);

  @override
  _PromocionesWidgetState createState() => _PromocionesWidgetState();
}

class _PromocionesWidgetState extends State<PromocionesWidget> {
  String dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xFFFF0000),
              size: 30,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: Align(
            alignment: AlignmentDirectional(0.01, 0.45),
            child: SvgPicture.asset(
              'assets/images/Wendy\\\'s_logo_2012_(1).svg',
              height: 90,
              fit: BoxFit.contain,
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWidget(),
                  ),
                );
              },
            ),
          ],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: FlutterFlowDropDown(
                  options: [
                    'Promociones',
                    'Combos',
                    'Al Week Menu',
                    'Kids Meal'
                  ],
                  onChanged: (val) => setState(() => dropDownValue = val),
                  width: 180,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                  hintText: 'Selecciona Una Categoria',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.79, 0.72),
                        child: Text(
                          'Burgers & Nuggets\nPack',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Work Sans',
                                    color: Color(0xFFFF0005),
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Image.asset(
                          'assets/images/f17e5ceb-4f91-4395-865d-b30c35f8f903.jpeg',
                          width: 320,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.92, 0.85),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CajaWidget(),
                              ),
                            );
                          },
                          text: '\$299.99',
                          options: FFButtonOptions(
                            width: 80,
                            height: 48,
                            color: Color(0xFF00A6CD),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            elevation: 13,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.9),
                  child: Container(
                    width: 320,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Image.asset(
                                  'assets/images/descarga_(1).jfif',
                                  width: 320,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.79, 0.72),
                                child: Text(
                                  'Party Pack',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Work Sans',
                                        color: Color(0xFFFF0005),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.92, 0.85),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CajaWidget(),
                                  ),
                                );
                              },
                              text: '\$399.99',
                              options: FFButtonOptions(
                                width: 80,
                                height: 48,
                                color: Color(0xFF00A6CD),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                elevation: 13,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.9),
                  child: Container(
                    width: 320,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Image.asset(
                                  'assets/images/101103591_2116681728475169_5479751840125943808_n.jpg',
                                  width: 320,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.79, 0.72),
                                child: Text(
                                  'Duo Melt',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Work Sans',
                                        color: Color(0xFFFF0005),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.92, 0.85),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CajaWidget(),
                                  ),
                                );
                              },
                              text: '\$199.99',
                              options: FFButtonOptions(
                                width: 80,
                                height: 48,
                                color: Color(0xFF00A6CD),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                elevation: 13,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
