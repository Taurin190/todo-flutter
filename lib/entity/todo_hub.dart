class TodoHub {
  List<Todo> todoList;
}

class Todo {
  int id;
  String title;
  String discription;

  static fromJsonList(Map<String, dynamic> parsedJson) {
    dynamic todoJsonList = parsedJson['results'];
    return List<Todo>.from(todoJsonList.map((json) => Todo(json)).toList());
  }

  Todo(dynamic result) {
    id = result['id'];
    title = result['title'];
    discription = result['discription'];
  }
}