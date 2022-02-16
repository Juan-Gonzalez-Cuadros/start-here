import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mi_changarro/pages/inicio_producto.dart';
import 'package:mi_changarro/pages/inicio_resena.dart';

class InicioTienda extends StatefulWidget {
  InicioTienda({Key? key}) : super(key: key);

  @override
  State<InicioTienda> createState() => _InicioTiendaState();
}

class _InicioTiendaState extends State<InicioTienda>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFF),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(176),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              children: <Widget>[
                Stack(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'lib/img/tienda1.png',
                        fit: BoxFit.fill,
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: DecoratedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'TIENDA',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFFFFFFFC)),
                              ),
                              RatingBar(
                                  initialRating: 4,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemSize: 14,
                                  itemCount: 4,
                                  ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star,
                                          color: Color(0xFFFFFFFC)),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    // setState(() {
                                    //   _ratingValue = value;
                                    // });
                                  }),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFBD2D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Envío PRECIO',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF2A3D45)),
                      ),
                      const Text(
                        'Tipo Tienda',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF2A3D45)),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            color: Color(0xFF2A3D45),
                          ),
                          Text(
                            '00-00',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF2A3D45)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: const Color(0xFFFDFDFF),
            bottom: TabBar(
              controller: _controller,
              indicator: BoxDecoration(
                border: Border.all(color: const Color(0xFFFFBD2D)),
              ),
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    'Productos',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFF5D39),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Reseñas',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFF5D39),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(controller: _controller, children: <Widget>[
          InicioProducto(),
          InicioResena(),
        ]),
      ),
    );
  }
}
