import 'package:flutter_riverpod/flutter_riverpod.dart';
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
