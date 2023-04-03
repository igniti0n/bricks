import 'package:hooks_riverpod/hooks_riverpod.dart';

final {{name.camelCase()}}Provider = Provider<{{data}}>((ref) {
   {{#dependencies}}final {{dependencyName.camelCase()}} = ref.watch({{dependencyName.camelCase()}}Provider);
   {{/dependencies}}

  // Return value
  return {{data}};
});
