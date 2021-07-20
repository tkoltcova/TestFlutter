import 'package:flutter/material.dart';
import 'package:test_flutter/drawer/index.dart';
import 'package:test_flutter/generated/l10n.dart';

class AboutMePage extends StatelessWidget {
  Widget _infoRow(Icon icon, String head, String description, context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Table(
        children: [
          TableRow(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                icon,
                Padding(
                  padding: EdgeInsets.only(right: 17),
                  child: Text(
                    head,
                    style: TextStyle(fontSize: 18),
                    textDirection: TextDirection.ltr,
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
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://sun9-66.userapi.com/impf/c631923/v631923940/2daf7/j007a20dla8.jpg?size=1438x2160&quality=96&sign=ab40027ca22542413f2891bc0423e1c0&type=album"),
                        radius: 70,
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
              context,
            ),
            _infoRow(
              Icon(
                Icons.engineering_outlined,
                color: Colors.orange,
              ),
              'Должность',
              'Старший инженер',
              context,
            ),
            _infoRow(
              Icon(
                Icons.engineering_outlined,
                color: Colors.orange,
              ),
              'Стаж работы',
              '2 года и 11 месяцев',
              context,
            ),
            _infoRow(
              Icon(
                Icons.store,
                color: Colors.orange,
              ),
              'Опыт',
              'Опыт в коммерческой разработке чуть меньше года. Изучение и работа с Dart/Flutter началась с Ноября 2020 (в проект нужен был человек, который будет писать мобильное приложение)',
              context,
            ),
            _infoRow(
              Icon(
                Icons.insert_chart,
                color: Colors.orange,
              ),
              'О себе',
              'Добросовестно подхожу к выполнению задачи. Сторонник практики, а не теории. Ответственная и коммуникабельная',
              context,
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
