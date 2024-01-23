import 'package:code_struct/view/utils/config/app_images.dart';

class Fashiondesign{
  final String profile;
  final String background;
  final String title;
  final String subtitle;

  Fashiondesign({required this.profile, required this.background, required this.title, required this.subtitle, });

}

List<Fashiondesign> details=[
  Fashiondesign(profile: AppImages.profile1, background: AppImages.back1, title: "Neeta Lulla", subtitle: "neeta12@gmail.com"),
  Fashiondesign(profile: AppImages.profile2, background: AppImages.back2, title: "Coco Chanel", subtitle: "Coco78@gmail.com"),
  Fashiondesign(profile: AppImages.profile3, background: AppImages.back3, title: "Tom Ford", subtitle: "Tom001@gmail.com"),
  Fashiondesign(profile: AppImages.profile4, background: AppImages.back4, title: "Stella McCartney", subtitle: "Stella22@gmail.com"),
  Fashiondesign(profile: AppImages.profile5, background: AppImages.back5, title: "Manish malhotra", subtitle: "Manish69@gmail.com"),
];