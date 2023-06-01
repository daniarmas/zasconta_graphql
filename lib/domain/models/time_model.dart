import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart';
part 'time_model.g.dart';

@freezed
class TimeModel with _$TimeModel {
  const factory TimeModel({
    required int unixTime,
    required String timeStamp,
  }) = _TimeModel;

  factory TimeModel.fromJson(Map<String, dynamic> json) =>
      _$TimeModelFromJson(json);
}
