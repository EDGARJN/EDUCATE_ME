import 'package:flutter/material.dart';

class Images_link {
  caro_image() {
    List Carousel_images = [
      {
        "img_name": "assets/images/kid.jpg",
      },
      {
        "img_name": "assets/images/kid1.jpg",
      },
      {
        "img_name": "assets/images/kid2.jpg",
      },
      {
        "img_name": "assets/images/kid3.jpg",
      },
      {"img_name": "assets/images/kid4.jpg"},
      {"img_name":"assets/images/mpesa.png"}
    ];
    var data = [];

    for (var i in Carousel_images) {
      Imge imge = Imge(name: i["img_name"]);
      data.add(imge);
    }
    return data;
  }
}

class Imge {
  String? name;

  Imge({required this.name});
}
