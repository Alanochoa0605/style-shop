class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

// Datos de prueba basados en tus categorías
List<Product> mockProducts = [
  Product(id: '1', name: 'Playera Casual', category: 'Ropa', price: 299.99, imageUrl: ''),
  Product(id: '2', name: 'Lentes de Sol', category: 'Accesorios', price: 150.00, imageUrl: ''),
  Product(id: '3', name: 'Tenis Urbanos', category: 'Calzado', price: 899.00, imageUrl: ''),
];