import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:udemy_proyect/constants/icons.dart';
import 'package:udemy_proyect/screens/user_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [

            CustomAppBar(),

            AppBar(),
            Row(
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TotalEnrollmentsCard(),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TotalCoursesCard(),
                    ),
                  ),
                ),
              ],
            ),

            Card(
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: PieChartSample1(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xff002244),
            Color(0xFF0C4A6E),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gráficos",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => user_screen(),
              )
                  );
              },
                icon: Image.asset(
                  icUserOulined,
                  height: 40,
               ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class PieChartSample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Altura específica para el gráfico
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 1,
              color: Colors.green,
              title: 'Programacion\n50%',
              radius: 50,
              titlePositionPercentageOffset: 0.55,
              titleStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              value: 1,
              color: Colors.yellow,
              title: 'Ofimatica\n50%',
              radius: 50,
              titlePositionPercentageOffset: 0.55,
              titleStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              value: 0,
              color: Colors.orange,
              title: 'Diseño Grf\n17%',
              radius: 50,
              titlePositionPercentageOffset: 0.55,
              titleStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              value: 0,
              color: Colors.purple,
              title: 'Finanzas\n14%',
              radius: 50,
              titlePositionPercentageOffset: 0.55,
              titleStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 30,
        ),
      ),
    );
  }
}

class TotalEnrollmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aquí puedes calcular el total de inscripciones
    // Por ejemplo, si tienes los datos de inscripciones, sería el total de esos datos.
    int totalEnrollments = 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total de Inscripciones:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 50),
        Text(
          '$totalEnrollments',
          style: TextStyle(
            fontSize: 100,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class TotalCoursesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aquí puedes calcular el total de cursos
    // Por ejemplo, si tienes los datos de cursos, sería el total de esos datos.
    int totalCourses = 4;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total de Cursos:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 50),
        Text(
          '$totalCourses',
          style: TextStyle(
            fontSize: 100,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashBoardScreen(),
  ));
}
