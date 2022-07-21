import 'package:mason/mason.dart';

void run(HookContext context) {
  final logger = context.logger;

  final injectionType = context.vars['injection_type'].toString().toLowerCase();
  final isFactory = injectionType == 'factory';
  final isSingleton = injectionType == 'lazy-singleton';
  final isLazySingleton = injectionType == 'singleton';

  context.vars = {
    ...context.vars,
    'isFactory': isFactory,
    'isSingleton': isSingleton,
    'isLazySingleton': isLazySingleton,
  };

  if (logger.confirm(
    '? Do you want to add dependencies to your service?',
    defaultValue: true,
  )) {
    logger.alert(lightYellow.wrap('enter "e" to exit adding dependencies'));
    logger.alert('Format: dependencyName');
    final dependencies = <Map<String, dynamic>>[];
    while (true) {
      final dependency =
          logger.prompt(':').replaceAll(RegExp('\\s+'), ' ').trim();
      if (dependency.toLowerCase() == 'e') {
        break;
      }
      if (dependency.contains(' ')) {
        logger.alert(
            'That was not a valid format, no spaces just the name -> dependencyName');
        continue;
      }
      if (dependency == '' || dependency == '\n' || dependency.length == 1) {
        continue;
      }
      dependencies.add({'name': dependency});
    }
    context.vars = {
      ...context.vars,
      'dependencies': dependencies,
    };
  }
  if (!logger.confirm(
    '? Do you want to add methods to your service?',
    defaultValue: true,
  )) {
    return;
  }
  logger.alert(lightYellow.wrap('enter "e" to exit adding methods'));
  logger.alert('Format: returnType methodName e.g, String myMethod:');
  final methods = <Map<String, dynamic>>[];
  while (true) {
    final method = logger.prompt(':').replaceAll(RegExp('\\s+'), ' ').trim();
    if (method.toLowerCase() == 'e') {
      break;
    }
    if (!method.contains(' ')) {
      logger.alert(
          'That was not a valid format -> returnType methodName e.g, String myMethod');
      continue;
    }
    final splitProperty = method.split(' ');
    final propertyType = splitProperty[0];
    final propertyName = splitProperty[1];
    methods.add({
      'name': propertyName,
      'type': propertyType,
    });
  }
  context.vars = {
    ...context.vars,
    'methods': methods,
  };
}
