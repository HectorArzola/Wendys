import '../wendyspack/iconos.dart';
import '../wendyspack/temas.dart';
import '../wendyspack/utils.dart';
import 'login.dart';
import 'promociones.dart';
import 'combos.dart';
import 'allweek.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  PageController pageViewController;
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
          leading: Image.asset(
            'assets/images/wendys-logo-3-1.png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          flexibleSpace: Align(
            alignment: AlignmentDirectional(0.1, 0.45),
            child: SvgPicture.asset(
              'assets/images/Wendy\\\'s_logo_2012_(1).svg',
              height: 90,
              fit: BoxFit.cover,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFFFF0005),
        elevation: 8,
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: FaIcon(
            FontAwesomeIcons.hamburger,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PromocionesCopyWidget(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 400,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset(
                              'assets/images/96234918_3129024777152127_7156605135177646080_n.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/122493100_3665609903493609_1573730044185121180_n.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/descarga.jfif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.85),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: SlideEffect(
                              spacing: 8,
                              radius: 1,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: Colors.black,
                              activeDotColor: Color(0xFFFF0000),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.45),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromocionesCopyWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.local_fire_department_outlined,
                            color: Color(0xFFFF0000),
                          ),
                          title: Text(
                            'Combos',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lo más caliente!',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.85),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromocionesWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.local_offer_sharp,
                            color: Color(0xFFFF0000),
                          ),
                          title: Text(
                            'Promociones',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            '2X1 En Combos',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.05),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromocionesCopyCopyWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.calendar_today,
                            color: Color(0xFFFF0000),
                          ),
                          title: Text(
                            'All Week Menu',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Buscas algo especial?',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
