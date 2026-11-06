import 'NotificationService.dart';
import 'TelegramClient.dart';
class TelegramAdapter implements NotificationService {
  final TelegramClient _telegramClient;

  TelegramAdapter(this._telegramClient);

  @override
  void send(String recipient, String message) {
    _telegramClient.sendMessage(recipient, message);
  }
}