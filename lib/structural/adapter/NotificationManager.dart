
class NotificationManager {
  final NotificationService _notificationService;

  NotificationManager(this._notificationService);

  void sendNotification(String recipient, String message) {
    _notificationService.sendNotification(recipient, message);
  }
}