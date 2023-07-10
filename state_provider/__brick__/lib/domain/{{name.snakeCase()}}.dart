import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
final {{name.camelCase()}}StateProvider = StateProvider<{{data}}>((ref) {
  {{#dependencies}}final {{dependencyName.camelCase()}} = ref.watch({{dependencyName.camelCase()}}Provider);
  {{/dependencies}}

  return {{data}};
});
