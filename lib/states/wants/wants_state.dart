import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/want/want.dart';

// Include auto-generated code
part 'wants_state.freezed.dart';

// Immutable
@freezed
class WantsState with _$WantsState {
  const factory WantsState.initial() = _Initial;
  const factory WantsState.loading(double progress) = _Loading;
  const factory WantsState.success(List<Want> data) = _Wants;
  const factory WantsState.error(Exception error) = _Error;
}

extension WantsStateX on WantsState {
  List<Want>? get success => maybeWhen(success: (data) => data, orElse: () => null);
}
