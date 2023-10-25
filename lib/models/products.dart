class Product{
  late int id , price ;
  late String title , subtitle , images ;
  Product({
    required this.title ,
    //required this.descriptions ,
    required this.id , required this.images , required this.price ,
    required this.subtitle
});
}
List<Product> products = [
  Product(
    id: 1,
    price:60,
    title: "wireless headphones",
    subtitle: "High sound quality",
   // descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/airpod.png",
  ),
  Product(
    id: 2,
    price: 2000,
    title: "Mobile phone",
    subtitle: "Mobile has become powerful",
   // descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/mobile.png",
  ),
  Product(
    id: 3,
    price: 40,
    title: "3D glasses",
    subtitle: "Transfer you to the virtual world",
  //  descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/class.png",
  ),
  Product(
    id: 4,
    price: 60,
    title: "headphones",
    subtitle: "for long listening hours",
   // descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/headset.png",
  ),
  Product(
    id: 5,
    price: 70,
    title: "Voice Recorder",
    subtitle: "Record important moments around you",
    // descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/speaker.png",
  ),
  Product(
    id: 4,
    price: 60,
    title: "Computer cameras",
    subtitle: "With high image quality and accuracy",
    // descriptions: "Experience wireless freedom and immersive sound with these cutting-edge headphones",
    images: "assets/images/camera.png",
  )
];
