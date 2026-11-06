import 'NotificationService.dart';
import 'EmailClient.dart';
class EmailAdapter implements NotificationService {
  final EmailClient _emailClient;

  EmailAdapter(this._emailClient);

  @override
  void send(String recipient, String message) {
    _emailClient.sendEmail(recipient, "Notification", message);
  }
}