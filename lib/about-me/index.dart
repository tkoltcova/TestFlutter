import 'package:flutter/material.dart';
import 'package:test_flutter/drawer/index.dart';
import 'package:test_flutter/generated/l10n.dart';

class AboutMePage extends StatelessWidget {
  Widget _infoRow(Icon icon, String head, String description) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Table(
        children: [
          TableRow(children: [
            Row(
              children: [
                icon,
                Padding(
                  padding: EdgeInsets.only(right: 17),
                  child: Text(
                    head,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Text(description,
                style: TextStyle(
                  fontSize: 18,
                ),
                textDirection: TextDirection.ltr),
          ])
        ],
      ),
    );
  }

  head(title) {
    return Text(title,
        style: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title_about_me),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 250,
                color: Colors.blue,
                child: Center(
                  child: Column(
                    children: [
                      Material(
                        child: Icon(
                          Icons.person,
                          size: 120,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.indigo,
                      ),
                      head(
                        'Кольцова',
                      ),
                      head(
                        'Татьяна Евгеньевна',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _infoRow(
              Icon(
                Icons.engineering_outlined,
                color: Colors.orange,
              ),
              'Место работы',
              'ООО"Воздушные Ворота Северная Столица',
            ),
            _infoRow(
              Icon(
                Icons.engineering_outlined,
                color: Colors.orange,
              ),
              'Должность',
              'Старший инженер',
            ),
            _infoRow(
              Icon(
                Icons.engineering_outlined,
                color: Colors.orange,
              ),
              'Стаж работы',
              '2 года и 11 месяцев',
            ),
            _infoRow(
              Icon(
                Icons.store,
                color: Colors.orange,
              ),
              'Опыт',
              'Опыт в коммерческой разработке чуть меньше года. Изучение и работа с Dart/Flutter началась с Ноября 2020 (в проект нужен был человек, который будет писать мобильное приложение)',
            ),
            _infoRow(
              Icon(
                Icons.insert_chart,
                color: Colors.orange,
              ),
              'О себе',
              'Добросовестно подхожу к выполнению задачи. Сторонник практики, а не теории. Ответственная и коммуникабельная',
            ),
          ],
        ),
      ),
      drawer: DrawerMenu(),
    );
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  bool reverse;

  WaveClipperTwo({this.reverse = false});

  @override
  Path getClip(Size size) {
    var path = Path();
    if (!reverse) {
      path.lineTo(0.0, size.height - 20);

      var firstControlPoint = Offset(size.width / 4, size.height);
      var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint =
          Offset(size.width - (size.width / 3.25), size.height - 65);
      var secondEndPoint = Offset(size.width, size.height - 40);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height - 40);
      path.lineTo(size.width, 0.0);
      path.close();
    } else {
      path.lineTo(0.0, 20);

      var firstControlPoint = Offset(size.width / 4, 0.0);
      var firstEndPoint = Offset(size.width / 2.25, 30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint = Offset(size.width - (size.width / 3.25), 65);
      var secondEndPoint = Offset(size.width, 40);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
