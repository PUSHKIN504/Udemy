import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy_proyect/constants/color.dart';
import 'package:udemy_proyect/constants/size.dart';
import 'package:udemy_proyect/models/category.dart';
import 'package:udemy_proyect/screens/course_screen.dart';
import 'package:udemy_proyect/screens/course_screen_dg.dart';
import 'package:udemy_proyect/screens/course_screen_fin.dart';
import 'package:udemy_proyect/screens/course_screen_ofi.dart';
import '../widgets/search_testfield.dart';
// Definir un mapa que asocie cada categoría con su pantalla correspondiente
final Map<String, WidgetBuilder> categoryScreenMap = {
  // ignore: prefer_const_constructors
  'Programacion': (context) => CourseScreen(),
  // ignore: prefer_const_constructors
  'Ofimatica': (context) => CourseScreenOfi(),
  // ignore: prefer_const_constructors
  'Diseño grafico': (context) => CourseScreenDg(),
  // ignore: prefer_const_constructors
  'Finanzas': (context) => CourseScreenFin(),
};

class FeaturedScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const FeaturedScreen({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Body({Key? key});

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
                "Categorias",
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
              category: categoryList[index],
            );
          },
          itemCount: categoryList.length,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  // ignore: use_super_parameters
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Obtener el constructor de la pantalla correspondiente a la categoría seleccionada
        WidgetBuilder? screenBuilder = categoryScreenMap[category.name];
        if (screenBuilder != null) {
          // Abrir la pantalla correspondiente
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: screenBuilder,
            ),
          );
        } else {
          // Manejar caso donde no hay constructor para la categoría
          // Puedes mostrar un mensaje de error o simplemente no hacer nada
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
            ), //BoxShadow
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

class AppBar extends StatelessWidget {
  // ignore: use_super_parameters
  const AppBar({
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
                "Bienvenido,\nNunca es tarde para aprender",
                style: Theme.of(context).textTheme.titleLarge,
              ),             
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
