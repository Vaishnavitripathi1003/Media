import 'package:flutter/material.dart';

import 'LocalNotification.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalNotification.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
