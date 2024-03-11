class Product {
  String nom, description, image, categorie;
  int prix;
  //Constructeur paramètres obligatoires nommés
  Product({
    required this.nom,
    required this.description,
    required this.image,
    required this.categorie,
    required this.prix,
  });
  //Fonction fléchée
  String getPrice() => "${prix / 100} €";
}

void main() {
  //Inférence de type, création de liste

  final listProduct = [
    Product(
        nom: "iPhone13",
        description: "téléphone",
        image: "https://",
        categorie: "Smartphone",
        prix: 130000),
    Product(
        nom: "iPhone14",
        description: "téléphone",
        image: "https://",
        categorie: "Smartphone",
        prix: 140000),
    Product(
        nom: "iPhone15",
        description: "téléphone",
        image: "https://",
        categorie: "Smartphone",
        prix: 150000),
    Product(
        nom: "iPhone16",
        description: "téléphone",
        image: "https://",
        categorie: "Smartphone",
        prix: 160000),
  ];
  //String interpolation
  print("Le prix du produite est : ${listProduct[0].getPrice()}");
}
