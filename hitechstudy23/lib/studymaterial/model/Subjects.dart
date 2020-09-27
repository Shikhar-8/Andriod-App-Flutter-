class Student {
  final String id;
  final String name;
  final String content;
  final String name_class;
  final String image;
  final String picture;
  final String chapter1;
  final String chapter2;
  final String chapter3;

  const Student({this.id, this.name, this.content,this.name_class,this.image, this.picture,this.chapter1,this.chapter2,this.chapter3,});
}

List<Student> students = [
  const Student(
      id: "1",
      name: "Physics",
      content: "3 Chapters | 12 Lectures",
      name_class: "XII class",
      chapter1:"Introduction",
      chapter2:"Gravity",
      chapter3:"Electromagnetic",
      image: 'assets/physics.png',
      picture: 'assets/physicsbackground.jpg'  ),
  const Student(
      id: "2",
      name: "Chemistry",
      content: "1 Chapters | 10 Lectures",
      name_class: "XII class",
      chapter1:"ThermoDynamics",
      chapter2:"Protons",
      chapter3:"Neutrons",
      image: 'assets/chemistry.png',
      picture: 'assets/chemistrybackground.png'
  ),
  const Student(
      id: "3",
      name: "Maths",
      content: "4 Chapters | 20 Lectures",
      name_class: "XII class",
      chapter1:"Integration",
      chapter2:"Graphs",
      chapter3:"PMI",
      image: 'assets/maths.png',
      picture: 'assets/mathsbackgroung.jpg'
  ),

];