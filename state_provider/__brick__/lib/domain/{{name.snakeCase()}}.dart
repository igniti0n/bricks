import 'package:flutter_riverpod/flutter_riverpod.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
final {{name.camelCase()}}StateProvider = StateProvider<{{outputValue}}>((ref) {
  {{#dependencies}}final {{dependencyName.camelCase()}} = ref.watch({{dependencyName.camelCase()}}Provider);
  {{/dependencies}}

  return {{data}};
});
