class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});

  static List<Product> product = [
    Product(
      name: 'John',
      price: 2.4,
      imageUrl:
          'https://images.unsplash.com/photo-1613747495731-3add0988073a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    ),
    Product(
      name: 'Apple',
      price: 3.8,
      imageUrl:
          'https://images.unsplash.com/photo-1613747495731-3add0988073a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    ),
    Product(
      name: 'Dhaniya',
      price: 1.2,
      imageUrl:
          'https://images.unsplash.com/photo-1613747495731-3add0988073a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    ),
  ];
}
