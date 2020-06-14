class User {
  int id;
  String name;
  String username;
  String email;
  bool isSelectedUser;

  int userID;
  int idTodos;
  String title;
  bool completed;
  bool isSelectedTodos;

  User({this.email, this.id, this.name, this.username, this.completed,
      this.idTodos, this.title, this.userID,this.isSelectedTodos,this.isSelectedUser});

  User.fromMapUsers(Map mapD) {
    id = mapD["id"];
    name = mapD["name"];
    username = mapD["username"];
    email = mapD["email"];
    isSelectedUser = false;
  }

  User.fromMapTodos(Map mapD) {
    userID = mapD["userId"];
    idTodos = mapD["id"];
    title = mapD["title"];
    completed = mapD["completed"];
    
  }
}
