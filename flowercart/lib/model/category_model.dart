import 'package:equatable/equatable.dart';

class Categogy extends Equatable {
  final String name;
  final String imageUrl;

  const Categogy({
    required this.name,
    required this.imageUrl,

  });



  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];}