import 'package:freezed_annotation/freezed_annotation.dart';

part 'university.freezed.dart';
part 'university.g.dart';

@freezed
class University with _$University {
  const factory University({
    required String name,
    required String address,
    int? coast,
  }) = _University;

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);
}
