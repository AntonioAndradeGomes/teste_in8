class Product {
  final int id;
  final String name;
  final double price;
  final List<String> images;
  final List<String> about;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.about,
  });
}

List<Product> mockProducts = [
  Product(
    id: 1,
    name: 'Lenovo - IdeaPad L340 15 Gaming',
    price: 717.80,
    images: [
      'assets/images/products/3192783133_1SZ1.png',
      'assets/images/products/3192783133_1SZ1.png',
      'assets/images/products/3192783133_1SZ1.png',
      'assets/images/products/3192783133_1SZ1.png',
    ],
    about: [
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
      'Windows 10 Pro 64-Bit Edition',
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
    ],
  ),
  Product(
    id: 2,
    name: 'Lenovo 15.6" ThinkPad P15s Gen 1',
    price: 1519.00,
    images: [
      'assets/images/products/lenovo15_2.png',
      'assets/images/products/lenovo15.png',
      'assets/images/products/lenovo15.png',
    ],
    about: [
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
      'Windows 10 Pro 64-Bit Edition',
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
    ],
  ),
  Product(
    id: 3,
    name: 'Notebook Lenovo 2 em 1',
    price: 4699.00,
    images: [
      'assets/images/products/ideapad-flex-i5-hero-subseries-br1.png',
      'assets/images/products/ideapad-flex-i5-hero-subseries-br1.png',
    ],
    about: [
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
      'Windows 10 Pro 64-Bit Edition',
      '1.8 GHz Intel Core i7-10510U Quad-Core Processor',
      '16GB of DDR4 RAM | 512GB SSD',
      '15.6" 1920 x 1080 IPS Display',
      'NVIDIA Quadro P520',
    ],
  ),
];
