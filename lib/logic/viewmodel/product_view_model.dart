import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/product.dart';

class ProductViewModel {
  
  List<Product> productsItems;

  ProductViewModel({this.productsItems});

  getProducts() => <Product>[
        Product(
            brand: "Fiat",
            description: "Diesel, Manual, 1300cm3 90cv , 02/2010 40,252km",
            date:"02/2010" ,
            fuel: "Diesel",
            km:"40 252km",
            engine: "1 300 cm3 95 cv",
            gearbox: "Manual",
            image:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/2017_Fiat_500_facelift.jpg/1920px-2017_Fiat_500_facelift.jpg",
            name: "500",
            price: "£20,000",
            rating: 4.0,
            colors: [
              ProductColor(
                color: Colors.red,
                colorName: "Red",
              ),
              ProductColor(
                color: Colors.green,
                colorName: "Green",
              ),
              ProductColor(
                color: Colors.blue,
                colorName: "Blue",
              ),
              ProductColor(
                color: Colors.cyan,
                colorName: "Cyan",
              )
            ],
            
            sizes: ["S", "M", "L", "XL"],
            totalReviews: 170),
        Product(
            brand: "BMW",
            description: "I8 series",
            image:
                "https://images.autouncle.com/pt/car_images/medium_5b2da5b6-19aa-4d0c-ac93-6fa1c37380cc_bmw-i8-edrive-365cv.jpg",
            name: "I8",
            price: "£103,000",
            rating: 5.0,
            totalReviews: 10),
        Product(
            brand: "Ferrari",
            description: "LaFerrari",
            image:
                "https://cdn.jamesedition.com/media/W1siZiIsImxpc3RpbmdfaW1hZ2VzLzIwMTgvMDgvMTUvMDgvMTAvMDQvMzQxYzU1NGEtZGZjYS00YmJkLTgyYjAtMGY5YjEwZDk0OTVlL0xhRiAxLmpwZWciXSxbInAiLCJ0aHVtYiIsIjEwNDB4NjIwIyJdLFsicCIsImVuY29kZSIsImpwZyIsbnVsbF1d/2015-ferrari-laferrari-delivery-mileage.jpg?sha=2d7dbb7f5f000b64",
            name: "LaFerrari",
            price: "£1,123,000",
            rating: 4.7,
            totalReviews: 0),
        Product(
            brand: "Porshe",
            description: "Carrera GT",
            image:
                "https://assets.hemmings.com/uimage/63184506-770-0@2X.jpg?rev=1",
            name: "Carrera GT",
            price: "£959,000",
            rating: 4.0,
            totalReviews: 5),
        Product(
              brand: "Mercedez",
              description: "AMG -GT",
              image:
                  "https://cdn1.evo.co.uk/sites/evo/files/styles/gallery_adv/public/2018/02/edo-8.jpg?itok=KPk3R-Kz",
              name: "AMG",
              price: "£200,399",
              rating: 4.8,
              totalReviews: 12),
          Product(
              brand: "Fendt",
              description: "Farmer20000",
              image:
                  "https://canalrural.uol.com.br/wp-content/uploads/2019/05/Trator-Fendt-05-640x426.png",
              name: "farmer",
              price: "£280,099",
              rating: 4.2,
              totalReviews: 28),
          Product(
              brand: "Lotus",
              description: "Evora",
              image:
                  "https://media.bizj.us/view/img/10913820/lotus-evora-jld8865*1200xx3635-2045-0-136.jpg",
              name: "Evora",
              price: "£70,099",
              rating: 4.7,
              totalReviews: 120),
          Product(
              brand: "Fiat",
              description: "X1/9",
              image:
                  "https://cdn.bringatrailer.com/wp-content/uploads/2017/06/IMG_1506-e1502217129406-940x725.jpg",
            name: "Fiat",
            price: "£26,059",
            rating: 4.0,
            totalReviews: 33),
        Product(
            brand: "Aston Martin",
            description: "DB11",
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMNuvrDWnzx5UQoZqyo1hXqunZyk8HhmQ8erf2e3U9xDE8QG2E",
            name: "DB11",
            price: "£125,059",
            rating: 4.4,
            totalReviews: 44),
        Product(
            brand: "BMW",
            description: "2002 turbo",
            image:
                "https://bonsrapazes.com/wp-content/uploads/2018/10/https_2F2Fhypebeast.com2Fimage2F20182F102Fbmw-2002-turbo-original-1975-chamonix-white-auction-2.jpg",
            name: "BMW",
            price: "£159,909",
            rating: 4.1,
            totalReviews: 22),
      ];
}
