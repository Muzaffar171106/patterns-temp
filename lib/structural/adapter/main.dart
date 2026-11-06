import 'NotificationService.dart';
import 'SmsNotificationService.dart';
import 'EmailClient.dart';
import 'EmailAdapter.dart';
import 'TelegramClient.dart';
import 'TelegramAdapter.dart';

void main() {
  final smsService = SmsNotificationService();
  final emailClient = EmailClient();
  
  smsService.send(
    "1234567890", 
    "Hello via SMS!");
  print("-----------------------------");

  final emailAdapter = EmailAdapter(emailClient);
  emailAdapter.send(
    "user@example.com",
    "Hello via Email!"
  );
  print("-----------------------------");

  final telegramClient = TelegramClient();
  final telegramAdapter = TelegramAdapter(telegramClient);
  telegramAdapter.send(
    "chat123",
    "Hello via Telegram!"
  );
  print("-----------------------------");
}