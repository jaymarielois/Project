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
    Category(name: 'Roses', imageUrl: 'https://images.pexels.com/photos/3117159/pexels-photo-3117159.jpeg?cs=srgb&dl=pexels-eriks-abzinovs-3117159.jpg&fm=jpg'),
    Category(name: 'Sunflower', imageUrl: 'https://images.pexels.com/photos/9168326/pexels-photo-9168326.jpeg?cs=srgb&dl=pexels-nur-yilmaz-9168326.jpg&fm=jpg'),
    Category(name: 'Gerbera', imageUrl: 'https://images.pexels.com/photos/11356919/pexels-photo-11356919.jpeg?cs=srgb&dl=pexels-mg-photography-11356919.jpg&fm=jpg'),
    Category(name: 'Tulip', imageUrl: 'https://images.pexels.com/photos/3854583/pexels-photo-3854583.jpeg?cs=srgb&dl=pexels-olena-bohovyk-3854583.jpg&fm=jpg'),
  ];
}


