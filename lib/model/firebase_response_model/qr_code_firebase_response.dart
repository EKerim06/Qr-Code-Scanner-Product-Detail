import 'package:equatable/equatable.dart';

class StaticDataParseModel with EquatableMixin {
  Additives? additives;
  String? carbonCertificate;
  Company? company;
  String? foodCertificate;
  String? itemName;
  String? mainArticle;
  String? manufacturer;
  String? partyNumber;
  String? price;
  String? productClass;
  String? productDate;
  ProductGeneralFeature? productGeneralFeature;
  String? productImage;
  String? productNumber;
  String? productPlace;
  String? productionProcces;
  String? recommendedConsumptionDate;
  String? recommendedOpeningTheProduct;
  String? serialNumber;
  String? storageConditions;
  ValuesOfProduct? valuesOfProduct;

  StaticDataParseModel({
    this.additives,
    this.carbonCertificate,
    this.company,
    this.foodCertificate,
    this.itemName,
    this.mainArticle,
    this.manufacturer,
    this.partyNumber,
    this.price,
    this.productClass,
    this.productDate,
    this.productGeneralFeature,
    this.productImage,
    this.productNumber,
    this.productPlace,
    this.productionProcces,
    this.recommendedConsumptionDate,
    this.recommendedOpeningTheProduct,
    this.serialNumber,
    this.storageConditions,
    this.valuesOfProduct,
  });

  @override
  List<Object?> get props => [
        additives,
        carbonCertificate,
        company,
        foodCertificate,
        itemName,
        mainArticle,
        manufacturer,
        partyNumber,
        price,
        productClass,
        productDate,
        productGeneralFeature,
        productImage,
        productNumber,
        productPlace,
        productionProcces,
        recommendedConsumptionDate,
        recommendedOpeningTheProduct,
        serialNumber,
        storageConditions,
        valuesOfProduct
      ];

  StaticDataParseModel copyWith({
    Additives? additives,
    String? carbonCertificate,
    Company? company,
    String? foodCertificate,
    String? itemName,
    String? mainArticle,
    String? manufacturer,
    String? partyNumber,
    String? price,
    String? productClass,
    String? productDate,
    ProductGeneralFeature? productGeneralFeature,
    String? productImage,
    String? productNumber,
    String? productPlace,
    String? productionProcces,
    String? recommendedConsumptionDate,
    String? recommendedOpeningTheProduct,
    String? serialNumber,
    String? storageConditions,
    ValuesOfProduct? valuesOfProduct,
  }) {
    return StaticDataParseModel(
      additives: additives ?? this.additives,
      carbonCertificate: carbonCertificate ?? this.carbonCertificate,
      company: company ?? this.company,
      foodCertificate: foodCertificate ?? this.foodCertificate,
      itemName: itemName ?? this.itemName,
      mainArticle: mainArticle ?? this.mainArticle,
      manufacturer: manufacturer ?? this.manufacturer,
      partyNumber: partyNumber ?? this.partyNumber,
      price: price ?? this.price,
      productClass: productClass ?? this.productClass,
      productDate: productDate ?? this.productDate,
      productGeneralFeature:
          productGeneralFeature ?? this.productGeneralFeature,
      productImage: productImage ?? this.productImage,
      productNumber: productNumber ?? this.productNumber,
      productPlace: productPlace ?? this.productPlace,
      productionProcces: productionProcces ?? this.productionProcces,
      recommendedConsumptionDate:
          recommendedConsumptionDate ?? this.recommendedConsumptionDate,
      recommendedOpeningTheProduct:
          recommendedOpeningTheProduct ?? this.recommendedOpeningTheProduct,
      serialNumber: serialNumber ?? this.serialNumber,
      storageConditions: storageConditions ?? this.storageConditions,
      valuesOfProduct: valuesOfProduct ?? this.valuesOfProduct,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'additives': additives,
      'carbonCertificate': carbonCertificate,
      'company': company,
      'foodCertificate': foodCertificate,
      'itemName': itemName,
      'mainArticle': mainArticle,
      'manufacturer': manufacturer,
      'partyNumber': partyNumber,
      'price': price,
      'productClass': productClass,
      'productDate': productDate,
      'productGeneralFeature': productGeneralFeature,
      'productImage': productImage,
      'productNumber': productNumber,
      'productPlace': productPlace,
      'productionProcces': productionProcces,
      'recommendedConsumptionDate': recommendedConsumptionDate,
      'recommendedOpeningTheProduct': recommendedOpeningTheProduct,
      'serialNumber': serialNumber,
      'storageConditions': storageConditions,
      'valuesOfProduct': valuesOfProduct,
    };
  }

  factory StaticDataParseModel.fromJson(Map<String, dynamic> json) {
    return StaticDataParseModel(
      additives: json['additives'] == null
          ? null
          : Additives.fromJson(json['additives'] as Map<String, dynamic>),
      carbonCertificate: json['carbonCertificate'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      foodCertificate: json['foodCertificate'] as String?,
      itemName: json['itemName'] as String?,
      mainArticle: json['mainArticle'] as String?,
      manufacturer: json['manufacturer'] as String?,
      partyNumber: json['partyNumber'] as String?,
      price: json['price'] as String?,
      productClass: json['productClass'] as String?,
      productDate: json['productDate'] as String?,
      productGeneralFeature: json['productGeneralFeature'] == null
          ? null
          : ProductGeneralFeature.fromJson(
              json['productGeneralFeature'] as Map<String, dynamic>),
      productImage: json['productImage'] as String?,
      productNumber: json['productNumber'] as String?,
      productPlace: json['productPlace'] as String?,
      productionProcces: json['productionProcces'] as String?,
      recommendedConsumptionDate: json['recommendedConsumptionDate'] as String?,
      recommendedOpeningTheProduct:
          json['recommendedOpeningTheProduct'] as String?,
      serialNumber: json['serialNumber'] as String?,
      storageConditions: json['storageConditions'] as String?,
      valuesOfProduct: json['valuesOfProduct'] == null
          ? null
          : ValuesOfProduct.fromJson(
              json['valuesOfProduct'] as Map<String, dynamic>),
    );
  }
}

class Additives with EquatableMixin {
  Colorant? colorant;
  Fragrant? fragrant;
  NaturalIngredients? naturalIngredients;
  Protectors? protectors;
  Sweetener? sweetener;
  Thickener? thickener;

  Additives({
    this.colorant,
    this.fragrant,
    this.naturalIngredients,
    this.protectors,
    this.sweetener,
    this.thickener,
  });

  @override
  List<Object?> get props => [
        colorant,
        fragrant,
        naturalIngredients,
        protectors,
        sweetener,
        thickener
      ];

  Additives copyWith({
    Colorant? colorant,
    Fragrant? fragrant,
    NaturalIngredients? naturalIngredients,
    Protectors? protectors,
    Sweetener? sweetener,
    Thickener? thickener,
  }) {
    return Additives(
      colorant: colorant ?? this.colorant,
      fragrant: fragrant ?? this.fragrant,
      naturalIngredients: naturalIngredients ?? this.naturalIngredients,
      protectors: protectors ?? this.protectors,
      sweetener: sweetener ?? this.sweetener,
      thickener: thickener ?? this.thickener,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'colorant': colorant,
      'fragrant': fragrant,
      'naturalIngredients': naturalIngredients,
      'protectors': protectors,
      'sweetener': sweetener,
      'thickener': thickener,
    };
  }

  factory Additives.fromJson(Map<String, dynamic> json) {
    return Additives(
      colorant: json['colorant'] == null
          ? null
          : Colorant.fromJson(json['colorant'] as Map<String, dynamic>),
      fragrant: json['fragrant'] == null
          ? null
          : Fragrant.fromJson(json['fragrant'] as Map<String, dynamic>),
      naturalIngredients: json['naturalIngredients'] == null
          ? null
          : NaturalIngredients.fromJson(
              json['naturalIngredients'] as Map<String, dynamic>),
      protectors: json['protectors'] == null
          ? null
          : Protectors.fromJson(json['protectors'] as Map<String, dynamic>),
      sweetener: json['sweetener'] == null
          ? null
          : Sweetener.fromJson(json['sweetener'] as Map<String, dynamic>),
      thickener: json['thickener'] == null
          ? null
          : Thickener.fromJson(json['thickener'] as Map<String, dynamic>),
    );
  }
}

class Colorant with EquatableMixin {
  String? colorantOne;
  String? colorantThree;
  String? colorantTwo;

  Colorant({
    this.colorantOne,
    this.colorantThree,
    this.colorantTwo,
  });

  @override
  List<Object?> get props => [colorantOne, colorantThree, colorantTwo];

  Colorant copyWith({
    String? colorantOne,
    String? colorantThree,
    String? colorantTwo,
  }) {
    return Colorant(
      colorantOne: colorantOne ?? this.colorantOne,
      colorantThree: colorantThree ?? this.colorantThree,
      colorantTwo: colorantTwo ?? this.colorantTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'colorantOne': colorantOne,
      'colorantThree': colorantThree,
      'colorantTwo': colorantTwo,
    };
  }

  factory Colorant.fromJson(Map<String, dynamic> json) {
    return Colorant(
      colorantOne: json['colorantOne'] as String?,
      colorantThree: json['colorantThree'] as String?,
      colorantTwo: json['colorantTwo'] as String?,
    );
  }
}

class Fragrant with EquatableMixin {
  String? fragrantOne;
  String? fragrantTwo;

  Fragrant({
    this.fragrantOne,
    this.fragrantTwo,
  });

  @override
  List<Object?> get props => [fragrantOne, fragrantTwo];

  Fragrant copyWith({
    String? fragrantOne,
    String? fragrantTwo,
  }) {
    return Fragrant(
      fragrantOne: fragrantOne ?? this.fragrantOne,
      fragrantTwo: fragrantTwo ?? this.fragrantTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fragrantOne': fragrantOne,
      'fragrantTwo': fragrantTwo,
    };
  }

  factory Fragrant.fromJson(Map<String, dynamic> json) {
    return Fragrant(
      fragrantOne: json['fragrantOne'] as String?,
      fragrantTwo: json['fragrantTwo'] as String?,
    );
  }
}

class NaturalIngredients with EquatableMixin {
  String? naturalIngredientsValueFive;
  String? naturalIngredientsValueFour;
  String? naturalIngredientsValueOne;
  String? naturalIngredientsValueSix;
  String? naturalIngredientsValueThree;
  String? naturalIngredientsValueTwo;

  NaturalIngredients({
    this.naturalIngredientsValueFive,
    this.naturalIngredientsValueFour,
    this.naturalIngredientsValueOne,
    this.naturalIngredientsValueSix,
    this.naturalIngredientsValueThree,
    this.naturalIngredientsValueTwo,
  });

  @override
  List<Object?> get props => [
        naturalIngredientsValueFive,
        naturalIngredientsValueFour,
        naturalIngredientsValueOne,
        naturalIngredientsValueSix,
        naturalIngredientsValueThree,
        naturalIngredientsValueTwo
      ];

  NaturalIngredients copyWith({
    String? naturalIngredientsValueFive,
    String? naturalIngredientsValueFour,
    String? naturalIngredientsValueOne,
    String? naturalIngredientsValueSix,
    String? naturalIngredientsValueThree,
    String? naturalIngredientsValueTwo,
  }) {
    return NaturalIngredients(
      naturalIngredientsValueFive:
          naturalIngredientsValueFive ?? this.naturalIngredientsValueFive,
      naturalIngredientsValueFour:
          naturalIngredientsValueFour ?? this.naturalIngredientsValueFour,
      naturalIngredientsValueOne:
          naturalIngredientsValueOne ?? this.naturalIngredientsValueOne,
      naturalIngredientsValueSix:
          naturalIngredientsValueSix ?? this.naturalIngredientsValueSix,
      naturalIngredientsValueThree:
          naturalIngredientsValueThree ?? this.naturalIngredientsValueThree,
      naturalIngredientsValueTwo:
          naturalIngredientsValueTwo ?? this.naturalIngredientsValueTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'naturalIngredientsValueFive': naturalIngredientsValueFive,
      'naturalIngredientsValueFour': naturalIngredientsValueFour,
      'naturalIngredientsValueOne': naturalIngredientsValueOne,
      'naturalIngredientsValueSix': naturalIngredientsValueSix,
      'naturalIngredientsValueThree': naturalIngredientsValueThree,
      'naturalIngredientsValueTwo': naturalIngredientsValueTwo,
    };
  }

  factory NaturalIngredients.fromJson(Map<String, dynamic> json) {
    return NaturalIngredients(
      naturalIngredientsValueFive:
          json['naturalIngredientsValueFive'] as String?,
      naturalIngredientsValueFour:
          json['naturalIngredientsValueFour'] as String?,
      naturalIngredientsValueOne: json['naturalIngredientsValueOne'] as String?,
      naturalIngredientsValueSix: json['naturalIngredientsValueSix'] as String?,
      naturalIngredientsValueThree:
          json['naturalIngredientsValueThree'] as String?,
      naturalIngredientsValueTwo: json['naturalIngredientsValueTwo'] as String?,
    );
  }
}

class Protectors with EquatableMixin {
  String? protectorsFour;
  String? protectorsOne;
  String? protectorsThree;
  String? protectorsTwo;

  Protectors({
    this.protectorsFour,
    this.protectorsOne,
    this.protectorsThree,
    this.protectorsTwo,
  });

  @override
  List<Object?> get props =>
      [protectorsFour, protectorsOne, protectorsThree, protectorsTwo];

  Protectors copyWith({
    String? protectorsFour,
    String? protectorsOne,
    String? protectorsThree,
    String? protectorsTwo,
  }) {
    return Protectors(
      protectorsFour: protectorsFour ?? this.protectorsFour,
      protectorsOne: protectorsOne ?? this.protectorsOne,
      protectorsThree: protectorsThree ?? this.protectorsThree,
      protectorsTwo: protectorsTwo ?? this.protectorsTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'protectorsFour': protectorsFour,
      'protectorsOne': protectorsOne,
      'protectorsThree': protectorsThree,
      'protectorsTwo': protectorsTwo,
    };
  }

  factory Protectors.fromJson(Map<String, dynamic> json) {
    return Protectors(
      protectorsFour: json['protectorsFour'] as String?,
      protectorsOne: json['protectorsOne'] as String?,
      protectorsThree: json['protectorsThree'] as String?,
      protectorsTwo: json['protectorsTwo'] as String?,
    );
  }
}

class Sweetener with EquatableMixin {
  String? sweetenerOne;
  String? sweetenerThree;
  String? sweetenerTwo;

  Sweetener({
    this.sweetenerOne,
    this.sweetenerThree,
    this.sweetenerTwo,
  });

  @override
  List<Object?> get props => [sweetenerOne, sweetenerThree, sweetenerTwo];

  Sweetener copyWith({
    String? sweetenerOne,
    String? sweetenerThree,
    String? sweetenerTwo,
  }) {
    return Sweetener(
      sweetenerOne: sweetenerOne ?? this.sweetenerOne,
      sweetenerThree: sweetenerThree ?? this.sweetenerThree,
      sweetenerTwo: sweetenerTwo ?? this.sweetenerTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sweetenerOne': sweetenerOne,
      'sweetenerThree': sweetenerThree,
      'sweetenerTwo': sweetenerTwo,
    };
  }

  factory Sweetener.fromJson(Map<String, dynamic> json) {
    return Sweetener(
      sweetenerOne: json['sweetenerOne'] as String?,
      sweetenerThree: json['sweetenerThree'] as String?,
      sweetenerTwo: json['sweetenerTwo'] as String?,
    );
  }
}

class Thickener with EquatableMixin {
  String? thickenerOne;
  String? thickenerTwo;

  Thickener({
    this.thickenerOne,
    this.thickenerTwo,
  });

  @override
  List<Object?> get props => [thickenerOne, thickenerTwo];

  Thickener copyWith({
    String? thickenerOne,
    String? thickenerTwo,
  }) {
    return Thickener(
      thickenerOne: thickenerOne ?? this.thickenerOne,
      thickenerTwo: thickenerTwo ?? this.thickenerTwo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'thickenerOne': thickenerOne,
      'thickenerTwo': thickenerTwo,
    };
  }

  factory Thickener.fromJson(Map<String, dynamic> json) {
    return Thickener(
      thickenerOne: json['thickenerOne'] as String?,
      thickenerTwo: json['thickenerTwo'] as String?,
    );
  }
}

class Company with EquatableMixin {
  String? companyCommunication;
  String? companyRetail;

  Company({
    this.companyCommunication,
    this.companyRetail,
  });

  @override
  List<Object?> get props => [companyCommunication, companyRetail];

  Company copyWith({
    String? companyCommunication,
    String? companyRetail,
  }) {
    return Company(
      companyCommunication: companyCommunication ?? this.companyCommunication,
      companyRetail: companyRetail ?? this.companyRetail,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'companyCommunication': companyCommunication,
      'companyRetail': companyRetail,
    };
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyCommunication: json['companyCommunication'] as String?,
      companyRetail: json['companyRetail'] as String?,
    );
  }
}

class ProductGeneralFeature with EquatableMixin {
  String? netWeight;
  String? packingWeight;
  String? productAudit;
  String? productRecycle;

  ProductGeneralFeature({
    this.netWeight,
    this.packingWeight,
    this.productAudit,
    this.productRecycle,
  });

  @override
  List<Object?> get props =>
      [netWeight, packingWeight, productAudit, productRecycle];

  ProductGeneralFeature copyWith({
    String? netWeight,
    String? packingWeight,
    String? productAudit,
    String? productRecycle,
  }) {
    return ProductGeneralFeature(
      netWeight: netWeight ?? this.netWeight,
      packingWeight: packingWeight ?? this.packingWeight,
      productAudit: productAudit ?? this.productAudit,
      productRecycle: productRecycle ?? this.productRecycle,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'netWeight': netWeight,
      'packingWeight': packingWeight,
      'productAudit': productAudit,
      'productRecycle': productRecycle,
    };
  }

  factory ProductGeneralFeature.fromJson(Map<String, dynamic> json) {
    return ProductGeneralFeature(
      netWeight: json['netWeight'] as String?,
      packingWeight: json['packingWeight'] as String?,
      productAudit: json['productAudit'] as String?,
      productRecycle: json['productRecycle'] as String?,
    );
  }
}

class ValuesOfProduct with EquatableMixin {
  String? carbohydrate;
  String? energy;
  Fats? fats;
  String? fiber;
  String? protein;
  String? servingSize;
  String? sodium;

  ValuesOfProduct({
    this.carbohydrate,
    this.energy,
    this.fats,
    this.fiber,
    this.protein,
    this.servingSize,
    this.sodium,
  });

  @override
  List<Object?> get props =>
      [carbohydrate, energy, fats, fiber, protein, servingSize, sodium];

  ValuesOfProduct copyWith({
    String? carbohydrate,
    String? energy,
    Fats? fats,
    String? fiber,
    String? protein,
    String? servingSize,
    String? sodium,
  }) {
    return ValuesOfProduct(
      carbohydrate: carbohydrate ?? this.carbohydrate,
      energy: energy ?? this.energy,
      fats: fats ?? this.fats,
      fiber: fiber ?? this.fiber,
      protein: protein ?? this.protein,
      servingSize: servingSize ?? this.servingSize,
      sodium: sodium ?? this.sodium,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'carbohydrate': carbohydrate,
      'energy': energy,
      'fats': fats,
      'fiber': fiber,
      'protein': protein,
      'servingSize': servingSize,
      'sodium': sodium,
    };
  }

  factory ValuesOfProduct.fromJson(Map<String, dynamic> json) {
    return ValuesOfProduct(
      carbohydrate: json['carbohydrate'] as String?,
      energy: json['energy'] as String?,
      fats: json['fats'] == null
          ? null
          : Fats.fromJson(json['fats'] as Map<String, dynamic>),
      fiber: json['fiber'] as String?,
      protein: json['protein'] as String?,
      servingSize: json['servingSize'] as String?,
      sodium: json['sodium'] as String?,
    );
  }
}

class Fats with EquatableMixin {
  String? fat;
  String? monounsaturatedFat;
  String? polyunsaturatedFat;
  String? saturatedFat;

  Fats({
    this.fat,
    this.monounsaturatedFat,
    this.polyunsaturatedFat,
    this.saturatedFat,
  });

  @override
  List<Object?> get props =>
      [fat, monounsaturatedFat, polyunsaturatedFat, saturatedFat];

  Fats copyWith({
    String? fat,
    String? monounsaturatedFat,
    String? polyunsaturatedFat,
    String? saturatedFat,
  }) {
    return Fats(
      fat: fat ?? this.fat,
      monounsaturatedFat: monounsaturatedFat ?? this.monounsaturatedFat,
      polyunsaturatedFat: polyunsaturatedFat ?? this.polyunsaturatedFat,
      saturatedFat: saturatedFat ?? this.saturatedFat,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fat': fat,
      'monounsaturatedFat': monounsaturatedFat,
      'polyunsaturatedFat': polyunsaturatedFat,
      'saturatedFat': saturatedFat,
    };
  }

  factory Fats.fromJson(Map<String, dynamic> json) {
    return Fats(
      fat: json['fat'] as String?,
      monounsaturatedFat: json['monounsaturatedFat'] as String?,
      polyunsaturatedFat: json['polyunsaturatedFat'] as String?,
      saturatedFat: json['saturatedFat'] as String?,
    );
  }
}
