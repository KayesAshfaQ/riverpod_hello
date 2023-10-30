import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/activity/activity.dart';
import '../provider/provider.dart';

class BoredPage extends ConsumerWidget {
  const BoredPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bored'),
      ),
      body: Center(
        child: Text(
          activity.when(
            data: (activity) => activity.activity,
            loading: () => 'Loading...',
            error: (error, stackTrace) => 'Oops! Something went wrong!',
          ),
        ),
      ),
    );
  }
}
