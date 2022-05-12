import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

part 'check_token_availity_bloc.freezed.dart';

part 'check_token_availity_event.dart';

part 'check_token_availity_state.dart';

@injectable
class CheckTokenAvailityBloc
    extends Bloc<CheckTokenAvailityEvent, CheckTokenAvailityState> {
  CheckTokenAvailityBloc() : super(const CheckTokenAvailityState.loading()) {
    on<CheckTokenAvailityEvent>((event, emit) async {
      await event.map(checkIfTokenExist: (_) async {
        if (Hive.isBoxOpen("securedBox")) {
          final encryptedBox = Hive.box('securedBox');
          final token = encryptedBox.get('token');
          changeState(token);
        } else {
          final box = await Hive.openBox("securedBox");
          final token = box.get("token");
          changeState(token);
        }
      });
    });
  }

  void changeState(dynamic token) {
    if (token != null) {
      emit(const CheckTokenAvailityState.exists());
    } else {
      emit(const CheckTokenAvailityState.doesntExists());
    }
  }

}
