import './model/users.dart';
enum EventType { addUser}

class UserEvent {
  List<User> userList;
  EventType eventType;
  

  UserEvent.addList(List<User> employee) {
    this.eventType = EventType.addUser;
    this.userList = employee;
  }



}
