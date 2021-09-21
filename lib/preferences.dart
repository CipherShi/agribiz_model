import 'package:model/notificationPreference.dart';

class AppPreferences {
  final String theme;
  final List<NotificationPreference> notifications;

  AppPreferences({
    required this.theme,
    required this.notifications,
  });
}
