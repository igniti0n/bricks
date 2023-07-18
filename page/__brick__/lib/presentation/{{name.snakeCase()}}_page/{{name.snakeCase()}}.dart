import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/{{name.snakeCase()}}_app_bar.dart';
import 'components/{{name.snakeCase()}}_page_body.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
class {{name.pascalCase()}} extends ConsumerWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: {{name.pascalCase()}}AppBar(),
      body: {{name.pascalCase()}}Body(),
    );
  }
}