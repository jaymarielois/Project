import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,

  });



  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];


  static List<Category> categories = [
    Category(name: 'Flower Bouquet', imageUrl: 'https://i.pinimg.com/564x/95/cb/78/95cb7869f81a80b8c43b495931c452b8.jpg'),
    Category(name: 'Box Bouquet', imageUrl: 'https://i.pinimg.com/564x/fa/a8/84/faa884a10e56d67afaf2fcae9504c6d2.jpg'),
    Category(name: 'Balloon Bouquet', imageUrl: 'https://i.pinimg.com/564x/15/06/9a/15069a82e4fff19718e9559697bef3df.jpg'),
    Category(name: 'Gifts', imageUrl: 'https://i.pinimg.com/564x/7a/fe/b3/7afeb369a915a9a092aa28836e84c8e8.jpg'),
  ];
}


