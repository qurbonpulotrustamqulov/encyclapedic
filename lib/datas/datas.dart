
import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/models/category.dart';
import 'package:ensyclopedic/models/dinosaurs.dart';

sealed class Datas {
  static List<Information> select(Type type) {
    switch (type) {
      case Type.dinosaurs:
        return [
          Information(
              imageName: "assets/images/app_bar_background/thyreophorans-removebg-preview.png",
              name: "thyreophorans".tr(),
              category: type.name,
              about: "thyreophorans_desc".tr(),
              videoUrl: ['https://youtu.be/fBB9QobgSKA']),
          Information(
              imageName:
                  "assets/images/app_bar_background/marginocephalians-removebg-preview.png",
              name: "marginocephalians".tr(),
              category: type.name,
              about: "marginocephalians_desc".tr(),
              videoUrl: ['https://youtu.be/0seq8w8XW7c']),
          Information(
              imageName: "assets/images/app_bar_background/ornithopods-removebg-preview.png",
              name: "ornithopods".tr(),
              category: type.name,
              about: "ornithopods_desc".tr(),
              videoUrl: ['https://youtu.be/9DYAfW_Q25w']),
          Information(
              imageName: "assets/images/app_bar_background/theropods-removebg-preview.png",
              name: "theropods".tr(),
              category: type.name,
              about: "theropods_desc".tr(),
              videoUrl: ['https://youtu.be/FKPa7Vg87u0']),
          Information(
              imageName: "assets/images/app_bar_background/sauropodomorphs-removebg-preview.png",
              name: "sauropodomorphs".tr(),
              category: type.name,
              about: "sauropodomorphs_desc".tr(),
              videoUrl: ['https://youtu.be/3QUK8gN1oSY']),
        ];

      case Type.world:
        return [

          Information(
              imageName: "assets/images/app_bar_background/usa-removebg-preview.png",
              name: "usa".tr(),
              category: type.name,
              about: "usa_desc".tr(),
              videoUrl: ['https://youtu.be/OdigP3FVZBE']),
          Information(
              imageName: "assets/images/app_bar_background/africa-removebg-preview (1).png",
              name: "africa".tr(),
              category: type.name,
              about: "africa_desc".tr(),
              videoUrl: ['https://youtu.be/KcNVNsvyFfA']),
          Information(
              imageName: "assets/images/app_bar_background/europe-removebg-preview (1).png",
              name: "europe".tr(),
              category: type.name,
              about: "europe_desc".tr(),
              videoUrl: ['https://youtu.be/07Zoc5fgoOA']),
          Information(
              imageName: "assets/images/app_bar_background/asia-removebg-preview (1).png",
              name: "asia".tr(),
              category: type.name,
              about: "asia_desc".tr(),
              videoUrl: ['https://youtu.be/1pNBDTNVhCw']),
          Information(
              imageName: "assets/images/app_bar_background/australia-removebg-preview.png",
              name: "australia".tr(),
              category: type.name,
              about: "australia_desc".tr(),
              videoUrl: ['https://youtu.be/zmon5Tv6bYU']),
          Information(
              imageName: "assets/images/app_bar_background/antarctica-removebg-preview (1).png",
              name: "antarctica".tr(),
              category: type.name,
              about: "antarctica_desc".tr(),
              videoUrl: ['https://youtu.be/go1Vg6mik24']),

        ];
      case Type.people:
        return [
          Information(
              imageName: "assets/images/app_bar_background/astronauts-removebg-preview (1).png",
              name: "astronauts".tr(),
              category: type.name,
              about: "astronauts_desc".tr(),
              videoUrl: ['https://youtu.be/jhD8GFwy734']),
          Information(
              imageName: "assets/images/app_bar_background/market_sellers-removebg-preview.png",
              name: "market_sellers".tr(),
              category: type.name,
              about: "market_sellers_desc".tr(),
              videoUrl: ['https://youtu.be/qi7JB4Cm-64']),
          Information(
              imageName: "assets/images/app_bar_background/vets-removebg-preview.png",
              name: "vets".tr(),
              category: type.name,
              about: "vets_desc".tr(),
              videoUrl: ['https://youtu.be/IQSRhLhs9Wg']),
          Information(
              imageName: "assets/images/app_bar_background/teaches-removebg-preview.png",
              name: "teaches".tr(),
              category: type.name,
              about: "teaches_desc".tr(),
              videoUrl: ['https://youtu.be/srlhUBYJ1YQ']),
          Information(
              imageName: "assets/images/app_bar_background/fermers-removebg-preview (1).png",
              name: "fermers".tr(),
              category: type.name,
              about: "fermers_desc".tr(),
              videoUrl: ['https://youtu.be/gQRxCMaG6fg']),

        ];
      case Type.history:
        return [
          Information(
              imageName: "assets/images/app_bar_background/early_people-removebg-preview (1).png",
              name: "early_people".tr(),
              category: type.name,
              about: "early_people_desc".tr(),
              videoUrl: ['https://youtu.be/UFE3t7qNJSs']),
          Information(
              imageName: "assets/images/app_bar_background/powerful_kings-removebg-preview.png",
              name: "powerful_kings".tr(),
              category: type.name,
              about: "powerful_kings_desc".tr(),
              videoUrl: ['https://youtu.be/yHughcfloZM']),

          Information(
              imageName: "assets/images/app_bar_background/greeks-removebg-preview (1).png",
              name: "greeks".tr(),
              category: type.name,
              about: "greeks_desc".tr(),
              videoUrl: ['https://youtu.be/IUZKg3KdtYo']),
          Information(
              imageName: "assets/images/app_bar_background/egypt-removebg-preview (1).png",
              name: "egypt".tr(),
              category: type.name,
              about: "egypt_desc".tr(),
              videoUrl: ['https://youtu.be/_V3C6szgcIY']),
          Information(
              imageName: "assets/images/app_bar_background/knights-removebg-preview.png",
              name: "knights".tr(),
              category: type.name,
              about: "knights_desc".tr(),
              videoUrl: ['https://youtu.be/pG0dMxybV_8']),
        ];

      case Type.living:
        return [
          Information(
              imageName: "assets/images/app_bar_background/flying-removebg-preview.png",
              name: "flying".tr(),
              category: type.name,
              about: "flying_desc".tr(),
              videoUrl: ['https://youtu.be/VLpSxHwfU04']),
          Information(
              imageName: "assets/images/app_bar_background/swimming-removebg-preview.png",
              name: "swimming".tr(),
              category: type.name,
              about: "swimming_desc".tr(),
              videoUrl: ['https://youtu.be/3EU4UmsqDPs']),
          Information(
              imageName: "assets/images/app_bar_background/running-removebg-preview.png",
              name: "running".tr(),
              category: type.name,
              about: "running_desc".tr(),
              videoUrl: ['hhttps://youtu.be/hA47tfFK3dw']),
        ];
      case Type.ecosystem:
        return [
          Information(
              imageName: "assets/images/app_bar_background/forest-removebg-preview.png",
              name: "forest".tr(),
              category: type.name,
              about: "forest_desc".tr(),
              videoUrl: ['https://youtu.be/fO4j-vFTzpM']),
          Information(
              imageName: "assets/images/app_bar_background/oceans-removebg-preview.png",
              name: "oceans".tr(),
              category: type.name,
              about: "oceans_desc".tr(),
              videoUrl: ['https://youtu.be/YWPtavQ2oRY']),
          Information(
              imageName: "assets/images/app_bar_background/rivers-removebg-preview.png",
              name: "rivers".tr(),
              category: type.name,
              about: "rivers_desc".tr(),
              videoUrl: ['https://youtu.be/bNWuQD7QHBc']),
          Information(
              imageName: "assets/images/app_bar_background/mountains-removebg-preview.png",
              name: "mountains".tr(),
              category: type.name,
              about: "mountains_desc".tr(),
              videoUrl: ['https://youtu.be/6B8G1IheGaQ']),
        ];
      case Type.technology:
        return [
          Information(
              imageName: "assets/images/app_bar_background/projectors-removebg-preview.png",
              name: "projectors".tr(),
              category: type.name,
              about: "projectors_desc".tr(),
              videoUrl: ['https://youtu.be/-2d_8NY5MfY']),
          Information(
              imageName: "assets/images/app_bar_background/airplans-removebg-preview (1).png",
              name: "airplans".tr(),
              category: type.name,
              about: "airplans_desc".tr(),
              videoUrl: ['https://youtu.be/VLpSxHwfU04']),
          Information(
              imageName: "assets/images/app_bar_background/cars-removebg-preview (1).png",
              name: "cars".tr(),
              category: type.name,
              about: "cars_desc".tr(),
              videoUrl: ['https://youtu.be/pDF5vxllIL4']),
          Information(
              imageName: "assets/images/app_bar_background/electr-removebg-preview (1).png",
              name: "electr".tr(),
              category: type.name,
              about: "electr_desc".tr(),
              videoUrl: ['https://youtu.be/t09pAwLICC4']),
        ];
      case Type.earth:
        return [
          Information(
              imageName: "assets/images/app_bar_background/inside-removebg-preview.png",
              name: "inside".tr(),
              category: type.name,
              about: "inside_desc".tr(),
              videoUrl: ['https://youtu.be/eXiVGEEPQ6c']),
          Information(
              imageName: "assets/images/app_bar_background/outside-removebg-preview.png",
              name: "outside".tr(),
              category: type.name,
              about: "outside_desc".tr(),
              videoUrl: ['https://youtu.be/w36yxLgwUOc']),
          Information(
              imageName: "assets/images/app_bar_background/bays-removebg-preview (1).png",
              name: "bays".tr(),
              category: type.name,
              about: "bays_desc".tr(),
              videoUrl: ['https://youtu.be/oe-IPJXHWmM']),
          Information(
              imageName: "assets/images/app_bar_background/hydrosphere-removebg-preview.png",
              name: "hydrosphere".tr(),
              category: type.name,
              about: "hydrosphere_desc".tr(),
              videoUrl: ['hhttps://youtu.be/UXh_7wbnS3A']),
        ];
      case Type.universe:
        return [
          Information(
              imageName: "assets/images/app_bar_background/mars-removebg-preview.png",
              name: "mars".tr(),
              category: type.name,
              about: "mars_desc".tr(),
              videoUrl: ['https://youtu.be/DYwLsvyYLoU']),
          Information(
              imageName: "assets/images/app_bar_background/sun-removebg-preview.png",
              name: "sun".tr(),
              category: type.name,
              about: "sun_desc".tr(),
              videoUrl: ['https://youtu.be/sePqPIXMsAc']),
          Information(
              imageName: "assets/images/app_bar_background/star-removebg-preview.png",
              name: "star".tr(),
              category: type.name,
              about: "star_desc".tr(),
              videoUrl: ['https://youtu.be/geKtpOldgyQ']),
        ];
    }

  }
  static Category information(Type type){
    switch(type){
      case Type.dinosaurs: return Category("dinosaurs".tr(), description: "dinosaurs_desc");
      case Type.world: return Category("world".tr(), description: "world_desc");
      case Type.people: return Category("people".tr(), description: "people_desc");
      case Type.history: return Category("history".tr(), description: "history_desc");
      case Type.living: return Category("living".tr(), description: "living_desc");
      case Type.ecosystem: return Category("ecosystem".tr(), description: "ecosystem_desc");
      case Type.technology: return Category("technology".tr(), description: "technology_desc");
      case Type.earth: return Category("earth".tr(), description: "earth_desc");
      case Type.universe: return Category("universe".tr(), description: "universe_desc");
    }
  }
}

enum Type {
  dinosaurs,
  world,
  people,
  history,
  living,
  ecosystem,
  technology,
  earth,
  universe
}

