import 'package:flutter/material.dart';

class {{name.pascalCase()}}PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const {{name.pascalCase()}}PageAppBar({super.key});

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('{{name.pascalCase()}}'),
    );
  }
}
