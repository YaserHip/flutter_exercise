sealed class EventPostDetails {}

class EventGetPostDetails extends EventPostDetails {
  final int id;
  EventGetPostDetails(this.id);
}
