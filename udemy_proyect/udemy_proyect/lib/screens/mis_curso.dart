import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_proyect/constants/color.dart';
import 'package:udemy_proyect/constants/size.dart';
import 'package:udemy_proyect/models/category.dart';
import 'package:udemy_proyect/screens/course_screen.dart';
import 'package:udemy_proyect/screens/course_screen_dg.dart';
import 'package:udemy_proyect/screens/course_screen_fin.dart';
import 'package:udemy_proyect/screens/course_screen_ofi.dart';
import 'package:udemy_proyect/constants/icons.dart';
import 'package:udemy_proyect/screens/user_screen.dart'; // Importar la pantalla UserScreen

final Map<String, WidgetBuilder> categoryScreenMap = {
  'Programacion': (context) => CourseScreen(),
  'Ofimatica': (context) => CourseScreenOfi(),
  'Diseño grafico': (context) => CourseScreenDg(),
  'Finanzas': (context) => CourseScreenFin(),
};

class MisCursosScreen extends StatefulWidget {
  final List<String> userCategories;
  const MisCursosScreen({Key? key, required this.userCategories}) : super(key: key);

  @override
  _MisCursosScreenState createState() => _MisCursosScreenState();
}

class _MisCursosScreenState extends State<MisCursosScreen> {
  List<Category> _filteredCategories = [];

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

Future<void> _loadCategories() async {
  final prefs = await SharedPreferences.getInstance();
  final categoryIds = prefs.getStringList('Categorias') ?? [];
  print('Categorías cargadas desde SharedPreferences: $categoryIds');
  setState(() {
    _filteredCategories = categoryList.where((category) => categoryIds.contains(category.cat_Id.toString())).toList();
  });
}

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            _filteredCategories.isNotEmpty ? Body(filteredCategories: _filteredCategories) : NoCursosMessage(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final List<Category> filteredCategories;

  const Body({Key? key, required this.filteredCategories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: filteredCategories[index],
            );
          },
          itemCount: filteredCategories.length,
        ),
      ],
    );
  }
}
class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetBuilder? screenBuilder = categoryScreenMap[category.name];
        if (screenBuilder != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: screenBuilder,
            ),
          );
        } else {
          // Manejar caso donde no hay constructor para la categoría
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                category.thumbnail,
                height: kCategoryCardImageSize,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(category.name),
            Text(
              "${category.noOfCourses.toString()} cursos",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

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
                "Mis Cursos,\n",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: () {
                  // Navegar a la pantalla UserScreen al hacer clic en el botón de configuración
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_screen()),
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

class NoCursosMessage extends StatelessWidget {
  const NoCursosMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No estás suscrito a ningún curso',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
