import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo extends Equatable {
  // Equatable로 상속되면 내부는 불변객체로 봐야함. 불변객체로 작업하면 에러가 덜 난다.
  final int id;
  final String tags;

  @JsonKey(name: 'previewURL')
  final String previewUrl;

  const Photo({
    required this.id,
    required this.tags,
    required this.previewUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);

  @override
  List<Object?> get props => [id];
}
