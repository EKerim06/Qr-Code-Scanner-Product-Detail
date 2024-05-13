import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qr_code_stt_scanner/feature/detail_page/cubit/detail_page_cubit.dart';
import 'package:qr_code_stt_scanner/model/firebase_response_model/qr_code_firebase_response.dart';
import 'package:qr_code_stt_scanner/utility/custom_text/blue_title_text.dart';
import 'package:qr_code_stt_scanner/utility/custom_text/title_text.dart';
import 'package:qr_code_stt_scanner/utility/custom_text/title_with_description_text.dart';
import 'package:qr_code_stt_scanner/utility/elevated_button/custom_button.dart';

class DetailPage extends StatefulWidget {
  final StaticDataParseModel data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final DetailPageCubit viewModel;
  late final DateTime remainingTime;

  @override
  void initState() {
    viewModel = DetailPageCubit();
    if (widget.data.productDate?.isNotEmpty ?? false) {
      viewModel.timeTicker(DateTime.parse(widget.data.productDate!));
      remainingTime = DateTime.parse(widget.data.productDate!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.data.itemName ?? 'N/a'),
          centerTitle: true,
        ),
        body: BlocConsumer<DetailPageCubit, DetailPageState>(
          listener: (context, state) {},
          builder: (context, state) {
            return ListView(
              padding: context.padding.normal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/milk.png'),
                    // context.sized.emptySizedHeightBoxLow,
                    TitleWithDescription(
                      title: "Üretici Firma : ",
                      description: '${widget.data.manufacturer}',
                    ),
                    TitleWithDescription(
                      title: "Ürün adı : ",
                      description: '${widget.data.itemName}',
                    ),
                    TitleWithDescription(
                      title: "Ürün sınıfı : ",
                      description: '${widget.data.productClass}',
                    ),
                    TitleWithDescription(
                      title: "Ürün numarası : ",
                      description: '${widget.data.partyNumber}',
                    ),
                    TitleWithDescription(
                      title: "Seri numarası : ",
                      description: '${widget.data.serialNumber}',
                    ),
                    TitleWithDescription(
                      title: "Üretim yeri : ",
                      description: '${widget.data.productPlace}',
                    ),
                    // Row(
                    //   children: [
                    //     NormalText(
                    //       message: "STT : ${widget.data.productDate}",
                    //     ),
                    //     NormalText(
                    //       message: "/  ${state.dateTime}  ",
                    //     ),
                    //   ],
                    // ),
                    TitleWithDescription(
                      title: 'Son Tuketim Tarihi : ',
                      description: '${state.dateTime}',
                    ),
                    Row(
                      children: [
                        TitleWithDescription(
                          title: "Ürün genel Raf bilgisi : ",
                          description:
                              '${((state.dateTime?.year ?? 0) * 365 + (state.dateTime?.day ?? 0) + ((state.dateTime?.month ?? 0) * 30))} GUN / ',
                        ),
                        Container(
                          width: context.sized.dynamicWidth(.19),
                          height: context.sized.dynamicHeight(.018),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.elliptical(12, 12),
                            ),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                          ),
                          // color: Colors.red,
                          child: SelectedRowItems(
                            selectedColor: state.selectedColor ?? Colors.black,
                            selectedCount: state.selectedIndex ?? 0,
                          ),
                        ),
                      ],
                    ),
                    TitleWithDescription(
                      title: "Saklama koşulları : ",
                      description:
                          '${widget.data.recommendedOpeningTheProduct}',
                    ),
                    TitleWithDescription(
                      title: "Ürün açıldıktan sonra tuketme zamani : ",
                      description: '${widget.data.recommendedConsumptionDate}',
                    ),
                    const TitleText(
                      message: "Ürün içerik bilgileri",
                    ),
                    Row(
                      children: [
                        const BlueTitleText(message: 'Ana madde yuzdesi : '),
                        LinearPercentIndicator(
                          width: context.sized.dynamicWidth(.38),
                          lineHeight: context.sized.dynamicHeight(.015),
                          percent: 0.8,
                          barRadius: const Radius.circular(12),
                          leading: const Text('%0'),
                          trailing: const Text("%100 sut"),
                          center: const Text("%80"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/project_bootleg_picture/contents.png',
                      width: double.infinity,
                    ),
                    // const TitleText(message: 'Koruyucular'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.additives?.protectors != null)
                    //       ...widget.data.additives!.protectors!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (entry) => TitleWithDescription(
                    //                 title: '${entry.key} : ',
                    //                 description: entry.value),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Renklendiriciler'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.additives?.colorant != null)
                    //       ...widget.data.additives!.colorant!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (entry) => TitleWithDescription(
                    //                 title: '${entry.key} : ',
                    //                 description: entry.value),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Tadlandiricilar'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.additives?.sweetener != null)
                    //       ...widget.data.additives!.sweetener!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (entry) => TitleWithDescription(
                    //                 title: '${entry.key} : ',
                    //                 description: entry.value),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Koku verici'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.additives?.fragrant != null)
                    //       ...widget.data.additives!.fragrant!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (entry) => TitleWithDescription(
                    //                 title: '${entry.key} : ',
                    //                 description: entry.value),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Kivam Arttirici'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.additives?.thickener != null)
                    //       ...widget.data.additives!.thickener!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (entry) => TitleWithDescription(
                    //                 title: '${entry.key} : ',
                    //                 description: entry.value),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Urun besin degerleri'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.valuesOfProduct != null)
                    //       ...widget.data.valuesOfProduct!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (e) => TitleWithDescription(
                    //               title: '${e.key} : ',
                    //               description: '${e.value}',
                    //             ),
                    //           ),
                    //   ],
                    // ),
                    // const TitleText(message: 'Yağ Değerleri'),
                    // ListView(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   children: [
                    //     if (widget.data.valuesOfProduct?.fats != null)
                    //       ...widget.data.valuesOfProduct!.fats!
                    //           .toJson()
                    //           .entries
                    //           .where((entry) => entry.value != null)
                    //           .map(
                    //             (e) => TitleWithDescription(
                    //               title: '${e.key} : ',
                    //               description: '${e.value}',
                    //             ),
                    //           ),
                    //   ],
                    // ),
                    Image.asset(
                      'assets/project_bootleg_picture/nutritional_values.png',
                      width: context.sized.dynamicWidth(.6),
                    ),
                    Image.asset(
                      'assets/project_bootleg_picture/other_summary.png',
                      width: context.sized.dynamicWidth(.6),
                    ),
                    const TitleText(message: 'Urunun genel ozellikleri'),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        if (widget.data.productGeneralFeature != null)
                          ...widget.data.productGeneralFeature!
                              .toJson()
                              .entries
                              .where((element) => element.value != null)
                              .map(
                                (e) => TitleWithDescription(
                                  title: '${e.key} : ',
                                  description: '${e.value}',
                                ),
                              )
                      ],
                    ),
                    const BlueTitleText(
                        message: 'urun uretim isletim dogrusu : '),
                    LinearPercentIndicator(
                      width: context.sized.dynamicWidth(.4),
                      lineHeight: context.sized.dynamicHeight(.015),
                      percent: 0.2,
                      barRadius: const Radius.circular(12),
                      leading: const Text('Organik'),
                      trailing: const Text('endustriyel islem'),
                      center: const Text("%20"),
                      progressColor: Colors.green,
                    ),
                    const BlueTitleText(
                        message: 'Uretici firma iletisim bilgileri : '),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '+90 ...\n', // İlk metin parçası
                          ),
                          TextSpan(
                            text: 'https://...', // İkinci metin parçası
                          ),
                        ],
                      ),
                    ),

                    const BlueTitleText(
                      message: 'urun carbon emisyon bilgileri : ',
                    ),
                    Row(
                      children: [
                        LinearPercentIndicator(
                          width: context.sized.dynamicWidth(.38),
                          lineHeight: context.sized.dynamicHeight(.015),
                          percent: 0.323,
                          barRadius: const Radius.circular(12),
                          leading: const Text('0 KG'),
                          trailing: const Text("100 KG"),
                          center: const Text("0.323 KG/TON"),
                          progressColor: Colors.green,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const BlueTitleText(message: 'Gida Sertifikalari : '),
                        Image.asset(
                          'assets/image/domestic_production.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/food_icon,png.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/helal.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/no_gluten.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/no_trans_fat.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/recycle.png',
                          width: context.sized.dynamicWidth(.06),
                        ),
                        Image.asset(
                          'assets/image/tse.png',
                          width: context.sized.dynamicWidth(.08),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: context.sized.dynamicHeight(.2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(child: Text('Urun Yorumlari')),
                    ),
                    context.sized.emptySizedHeightBoxLow3x,

                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(message: 'Satin Al'),
                        CustomButton(message: 'Ekle & Hatirlat'),
                        CustomButton(message: 'Iade Et'),
                      ],
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(message: 'Sil'),
                        CustomButton(message: 'Geri Donusum'),
                        CustomButton(message: 'Yorum Yap'),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SelectedRowItems extends StatelessWidget {
  const SelectedRowItems({
    required this.selectedCount,
    required this.selectedColor,
    super.key,
  });

  final int selectedCount;

  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Yuvarlak şekil
            color: selectedCount == index
                ? selectedColor
                : Colors.transparent, // İç rengi kontrolü
            border: Border.all(
                color:
                    selectedCount == index ? Colors.transparent : Colors.black,
                width: 2), // Kenar çerçevesi kontrolü
          ),
          child: selectedCount == index
              ? null
              : const Center(
                  // İçerik kontrolü
                  child:
                      Icon(Icons.person, size: 30, color: Colors.white), // İkon
                ),
        );
      },
    );
  }
}
// Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const CircleAvatar(
//           backgroundColor: Colors.red,
//         ),
//         context.sized.emptySizedWidthBoxLow,
//         const CircleAvatar(
//           backgroundColor: Colors.red,
//         ),
//         context.sized.emptySizedWidthBoxLow,
//         const CircleAvatar(
//           backgroundColor: Colors.red,
//         ),
//         context.sized.emptySizedWidthBoxLow,
//         const CircleAvatar(
//           backgroundColor: Colors.red,
//         ),
//         context.sized.emptySizedWidthBoxLow,
//         const CircleAvatar(
//           backgroundColor: Colors.red,
//         ),
//         context.sized.emptySizedWidthBoxLow,
//       ],
//     );

// Center(
//           child: CircleAvatar(
//             backgroundColor: index == selectedCount ? Colors.red : Colors.white,

//           ),
//         );
