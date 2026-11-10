import "package:bloc/bloc.dart";
import "package:logger/logger.dart";

class BlocObservers extends BlocObserver {
  BlocObservers();

  final _logger = Logger(printer: PrettyPrinter(methodCount: 0));

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _logger.i(
      "Bloc: ${bloc.runtimeType} changed from ${change.currentState} state to ${change.nextState} state",
    );
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    _logger.i("Bloc: ${bloc.runtimeType} was closed");
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    _logger.t("Bloc: ${bloc.runtimeType} was created.");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger
        .e("Bloc: ${bloc.runtimeType}, error: $error, stackTrace: $stackTrace");
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger
        .i("Event ${event.runtimeType} was added by bloc ${bloc.runtimeType}");
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
    _logger.d(
      "In bloc ${bloc.runtimeType}, ${transition.currentState} state transitioned to ${transition.nextState} state when ${transition.event} event was added.",
    );
  }
}
