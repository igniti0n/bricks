import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
final {{name.camelCase()}}Provider = Provider<{{outputValue}}>((ref) {
   {{#dependencies}}final {{dependencyName.camelCase()}} = ref.watch({{dependencyName.camelCase()}}Provider);
   {{/dependencies}}

  // Return value
  return {{data}};
});
