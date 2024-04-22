class Course {
  String name;
  double completedPercentage;
  String instructor;
  String thumbnail;

  Course({
    required this.instructor,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    instructor: "Jason Villanueva",
    completedPercentage: .75,
    name: "Flutter",
    thumbnail: "assets/images/icons/flutter.jpg",
  ),
  Course(
    instructor: "Madian Reyes",
    completedPercentage: .60,
    name: "Java",
    thumbnail: "assets/images/icons/java.jpg",
  ),
  Course(
    instructor: "Jason Villanueva",
    completedPercentage: .75,
    name: ".NET",
    thumbnail: "assets/images/icons/net.png",
  ),
  Course(
    instructor: "Alejandro Velasquez",
    completedPercentage: .75,
    name: "JavaScript",
    thumbnail: "assets/images/icons/js.png",
  ),
  Course(
    instructor: "Pavel Ponce",
    completedPercentage: .60,
    name: "TypeScript",
    thumbnail: "assets/images/icons/ts.png",
  ),
  Course(
    instructor: "Dany Franco",
    completedPercentage: .75,
    name: "Python",
    thumbnail: "assets/images/icons/python.png",
  ),
];
