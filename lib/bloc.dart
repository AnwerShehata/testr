import './event.dart';
import './model/users.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, List<User>> {
  @override
  List<User> get initialState => List<User>();

  @override
  Stream<List<User>> mapEventToState(UserEvent event) async* {
    switch (event.eventType) {
      case EventType.addUser:
        yield event.userList;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }
}
