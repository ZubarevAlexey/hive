import 'package:freezed_annotation/freezed_annotation.dart';

part 'charcoal.freezed.dart';
part 'charcoal.g.dart';

@freezed
class Charcoal with _$Charcoal {
  const factory Charcoal({
    required String name,
    int? price,
  }) = _Charcoal;

  factory Charcoal.fromJson(Map<String, dynamic> json) =>
      _$CharcoalFromJson(json);
}
