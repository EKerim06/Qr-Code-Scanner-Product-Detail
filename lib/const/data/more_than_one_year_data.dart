import 'package:qr_code_stt_scanner/model/firebase_response_model/qr_code_firebase_response.dart';

final StaticDataParseModel moreThanOneYearData = StaticDataParseModel(
  additives: Additives(
    colorant: Colorant(
      colorantOne: "Renklendirici yok",
      colorantThree: "Renklendirici yok",
      colorantTwo: "Renklendirici yok",
    ),
    fragrant: Fragrant(
      fragrantOne: "Koku verici yok",
      fragrantTwo: "Koku verici yok",
    ),
    naturalIngredients: NaturalIngredients(
      naturalIngredientsValueFive: "fiveValue",
      naturalIngredientsValueFour: "fourValue",
      naturalIngredientsValueOne: "%80'i süt",
      naturalIngredientsValueSix: "sixValue",
      naturalIngredientsValueThree: "threeValue",
      naturalIngredientsValueTwo: "twoValue",
    ),
    protectors: Protectors(
      protectorsFour: "Katki maddesi yok",
      protectorsOne: "Katki maddesi yok",
      protectorsThree: "Katki maddesi yok",
      protectorsTwo: "Katki maddesi yok",
    ),
    sweetener: Sweetener(
      sweetenerOne: "Tatlandirici yok",
      sweetenerThree: "Tatlandirici yok",
      sweetenerTwo: "Tatlandirici yok",
    ),
    thickener: Thickener(
      thickenerOne: "Kivam arttirici yok",
      thickenerTwo: "Kivam arttirici yok",
    ),
  ),
  carbonCertificate: "1-2-3",
  company: Company(
    companyCommunication: "(+90) 444 4 855 (444 4 TTK)",
    companyRetail: "https://www.kooperatifmarket.com.tr/",
  ),
  foodCertificate: "1-2-3-4-5",
  itemName: "Tarim kredi tam yagli sut",
  mainArticle: "",
  manufacturer: "Turkiye Tarim kooperatifi",
  partyNumber: "1",
  price: "Türk Lirasi",
  productClass: "GIDA",
  productDate: "2026-01-04T14:30:00",
  productGeneralFeature: ProductGeneralFeature(
    netWeight: "1 lt 200 gram",
    packingWeight: "1 litre",
    productAudit: "üretim-toptanci-parekende",
    productRecycle: "200 gram-karton-alim yeri",
  ),
  productImage:
      "https://firebasestorage.googleapis.com/v0/b/qrcode-app-57dc6.appspot.com/o/sut.jpeg?alt=media&token=8e34ee13-ff4f-40c5-bace-f324dcfc9b70",
  productNumber: "12",
  productPlace: "ANKARA/KAHRAMANMARAS",
  productionProcces: "productionProcces",
  recommendedConsumptionDate: "1-2 gün",
  recommendedOpeningTheProduct: "serin / 14⁰C",
  serialNumber: "1",
  storageConditions: "45 gün",
  valuesOfProduct: ValuesOfProduct(
    carbohydrate: "4,10g",
    energy: "243kj 58kcal",
    fats: Fats(
      fat: "3,10g",
      monounsaturatedFat: "0",
      polyunsaturatedFat: "0",
      saturatedFat: "2,10g",
    ),
    fiber: "0",
    protein: "2,90g",
    servingSize: "1 Litre",
    sodium: "0",
  ),
);
