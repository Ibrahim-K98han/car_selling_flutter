class CarModel {
  List<SliderData> sliders;
  List<Brand> brands;
  List<Car> featuredCars;
  List<dynamic> adsBanners;
  List<Dealer> dealers;
  JoinDealer joinDealer;
  List<Car> latestCars;

  CarModel({
    required this.sliders,
    required this.brands,
    required this.featuredCars,
    required this.adsBanners,
    required this.dealers,
    required this.joinDealer,
    required this.latestCars,
  });
}

class Brand {
  int id;
  String image;
  String slug;
  Status status;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  int totalCar;

  Brand({
    required this.id,
    required this.image,
    required this.slug,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.totalCar,
  });
  
}

enum Status { DISABLE, ENABLE }

class Dealer {
  int id;
  String name;
  String username;
  String designation;
  String image;
  Status status;
  String isBanned;
  int isDealer;
  Address address;
  String email;
  String phone;
  Status kycStatus;
  int totalCar;

  Dealer({
    required this.id,
    required this.name,
    required this.username,
    required this.designation,
    required this.image,
    required this.status,
    required this.isBanned,
    required this.isDealer,
    required this.address,
    required this.email,
    required this.phone,
    required this.kycStatus,
    required this.totalCar,
  });
}

enum Address {
  LOS_ANGELES_CA_USA,
  THE_1901_THORNRIDGE_CIR_SHILOH_LONDON_UNITED_KINGDOM,
}

class Car {
  int id;
  String slug;
  int brandId;
  dynamic expiredDate;
  String regularPrice;
  dynamic offerPrice;
  String thumbImage;
  Purpose purpose;
  Condition condition;
  Status isFeatured;
  Status status;
  ApprovedByAdmin approvedByAdmin;
  String title;
  String description;
  String videoDescription;
  Address address;
  String seoTitle;
  String seoDescription;

  Car({
    required this.id,
    required this.slug,
    required this.brandId,
    required this.expiredDate,
    required this.regularPrice,
    required this.offerPrice,
    required this.thumbImage,
    required this.purpose,
    required this.condition,
    required this.isFeatured,
    required this.status,
    required this.approvedByAdmin,
    required this.title,
    required this.description,
    required this.videoDescription,
    required this.address,
    required this.seoTitle,
    required this.seoDescription,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'],
      slug: json['slug'],
      brandId: json['brand_id'],
      expiredDate: json['expired_date'],
      regularPrice: json['regular_price'],
      offerPrice: json['offer_price'],
      thumbImage: json['thumb_image'],
      purpose: Purpose.values.firstWhere(
        (e) => e.name == json['purpose'],
        orElse: () => Purpose.SALE, 
      ),
      condition: Condition.values.firstWhere(
        (e) => e.name == json['condition'],
        orElse: () => Condition.USED, 
      ),
      isFeatured: Status.values.firstWhere(
        (e) => e.name == json['is_featured'],
        orElse: () => Status.DISABLE, 
      ),
      status: Status.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => Status.DISABLE, 
      ),
      approvedByAdmin: ApprovedByAdmin.values.firstWhere(
        (e) => e.name == json['approved_by_admin'],
        orElse: () => ApprovedByAdmin.APPROVED, 
      ),
      title: json['title'],
      description: json['description'],
      videoDescription: json['video_description'],
      address: Address.values.firstWhere(
        (e) => e.name == json['address'],
        orElse: () => Address.LOS_ANGELES_CA_USA,
      ),
      seoTitle: json['seo_title'],
      seoDescription: json['seo_description'],
    );
  }
}

enum ApprovedByAdmin { APPROVED }

enum Condition { NEW, USED }

enum Purpose { RENT, SALE }

class JoinDealer {
  String image;
  String shortTitle;
  String title;

  JoinDealer({
    required this.image,
    required this.shortTitle,
    required this.title,
  });
}

class SliderData {
  int id;
  String image;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  SliderData({
    required this.id,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SliderData.fromJson(Map<String, dynamic> json) {
    return SliderData(
      id: json['id'],
      image: json['image'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
