import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../image_open/image_open_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePropertyPageWidget extends StatefulWidget {
  SinglePropertyPageWidget({Key key}) : super(key: key);

  @override
  _SinglePropertyPageWidgetState createState() =>
      _SinglePropertyPageWidgetState();
}

class _SinglePropertyPageWidgetState extends State<SinglePropertyPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageOpenWidget(),
                              ),
                            );
                          },
                          child: Image.network(
                            'https://picsum.photos/seed/259/600',
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Image.network(
                          'https://picsum.photos/seed/269/600',
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://picsum.photos/seed/259/600',
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://picsum.photos/seed/214/600',
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: Text(
                    '2 Bed Brand New Grand Luxry Appartment Near Gulberg',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF6B6B6B),
                    ),
                  ),
                ),
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.star_sharp,
                          color: Color(0xFF7667E7),
                          size: 24,
                        ),
                      ),
                      Text(
                        '4.82',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          '(68 reviews)',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          '.',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'Lahore, Panjab, Pakistan',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider()
              ],
            )
          ],
        ),
      ),
    );
  }
}
