sealed class EventFriendProfile {}

class EventGetFriendProfile extends EventFriendProfile {
  final int id;
  EventGetFriendProfile(this.id);
}
