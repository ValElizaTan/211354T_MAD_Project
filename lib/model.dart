class MyData {
  final String name;
  final String email;
  final String pwd;
  final String cfmpwd;  
  MyData(this.email, this.pwd,[this.cfmpwd, this.name]);
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}