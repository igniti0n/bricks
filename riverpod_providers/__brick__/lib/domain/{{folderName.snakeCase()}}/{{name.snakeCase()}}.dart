import 'package:hooks_riverpod/hooks_riverpod.dart';


{{#isProvider}}
final {{name.camelCase()}}Provider = Provider<{{data}}>((ref) {
  // Dependnecies
  final selectedWidgets = ref.watch(selectedWidgetsNotifier);
  final mouseOffset = ref.watch(mousePositionStateProvider);

  // Return value
  return ConnectingPositions(first: screenOffset, second: mouseOffset);
});
{{/isProvider}}

{{#isStateProvider}}
final {{name.camelCase()}}StateProvider = StateProvider<{{data}}>((ref) {
   // Dependnecies
  final selectedWidgets = ref.watch(selectedWidgetsNotifier);
  final mouseOffset = ref.watch(mousePositionStateProvider);

// Return value
  return Offset.zero;
});
{{/isStateProvider}}


{{#isNotifier}}{{/isNotifier}}


{{#isInteractor}}
final {{name.camelCase()}}Notifier = StateNotifierProvider<FetchTranslationsPresenter, {{data}}>(
  (ref) => FetchTranslationsPresenter(TranslationsInteractorImpl()),
);

class FetchTranslationsPresenter extends RequestNotifier<void> {
  FetchTranslationsPresenter(this.translationsInteractor);

   // Dependnecies
  final TranslationsInteractor translationsInteractor;

  //Methods
  Future<void> fetch() async {
    executeRequest(requestBuilder: () async {
      await translationsInteractor.fetch();
    });
  }
}
{{/isInteractor}}
