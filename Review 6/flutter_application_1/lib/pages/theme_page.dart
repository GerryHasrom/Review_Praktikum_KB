import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama Kalian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Headline Large',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Body Large',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Body Medium',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Body Small',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
