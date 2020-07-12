import 'package:flutter/material.dart';
import 'package:flutter_rtm/models/album_model.dart';

final Color primaryColor = Color(0xff00A85A);
final Color greyColor = Color(0xff6E6F74);
final String rtmText = "Viloyatda Marg‘ilon “Raqamli texnologiyalar markazi” texnoparkining yer maydoni 0.6 gektarni hamda 2 qavatli binosi 1,5 ming kv.m.ni tashkil etadi. Loyixa qiymati 14.3 mlrd. Markaz maqsadi – Yoshlarni IT sohasiga bo‘lgan qiziqishlarini yana-da oshirish xamdv ularga ushbu yo‘nalishda chuqurroq bilim va ko‘nikmalar berish. 1 million dasturchi doirasida ushbu markaz orqali mutaxassislar chiqarish. Soxa vakillarini qo‘shimcha ish o‘rinlari bilan taʼminlash. Respublika va xalqaro miqiyosga IT maxsulotlari eksporti orqali iqtisodiyotni ko‘tarish. Xududiy muammolarga aynan ushbu markaz orqali foydali va samarali yechimlar taklif etish va amalga oshirish. Texnopark binosi 120 dan ortiq ish o‘ringa mo‘ljallangan bo‘lib, 50 dan ortiq yangi axborot texnologiyalari sohasida xizmat ko‘rsatadigan korxonalarni joylashtirish uchun mo‘ljallangan. Mazkur Texnoparkda korxonalarga o‘z faoliyatini amalga oshirish uchun zarur infratuzilma, shu jumladan, zamonaviy laboratoriyalar, kovorking markaz hamda ofis maydonlari taqdim etilib, ularga raqamli texnologiyalar, marketing, yuridik va boshqa konsalting xizmatlari ko‘rsatiladi. Texnopark rezidentlari va oliy taʼlim muassasalari o‘rtasida o‘zaro kooperatsiya aloqalari yo‘lga qo‘yiladi. Texnopark rezidentlari tomonidan viloyatdagi Toshkent axborot texnologiyalari universiteti Farg‘ona filiali talabalari uchun turli xil amaliy mashg‘ulotlar, laboratoriya darslari o‘tkaziladi.";

kTextStyle(
    {Color color = Colors.white,
      double size = 14,
      FontWeight fontWeight = FontWeight.normal,
      double letter = 0,
      double height = 1,
    }) {
  return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letter,
      height: height
  );
}

List<String> homePhotos = [
  'images/rtm_1.jpg',
  'images/rtm_2.jpg',
  'images/rtm_3.jpg',
  'images/rtm_4.jpg',
  'images/rtm_5.jpg',
  'images/rtm_6.jpg',
  'images/rtm_7.jpg',
  'images/rtm_8.jpg',
];

List<AlbumModel> albumModel = [
  AlbumModel(
      'Call center xonasi',
      'images/album_24.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Oshxona',
      'images/album_22.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Reception',
      'images/album_4.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Labaratoriya xonasi',
      'images/album_21.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Rasm',
      'images/album_20.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      '3D printer',
      'images/album_19.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Loyihalash xonasi',
      'images/album_18.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Muxokamalar xonasi',
      'images/album_17.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Art xonasi',
      'images/album_16.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Video mantaj xonasi',
      'images/album_15.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Cybersport xonasi',
      'images/album_14.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Robotech xonasi',
      'images/album_13.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Masofaviy ta\'lim xonasi',
      'images/album_12.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Cybersport xonasi',
      'images/album_11.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Rasim',
      'images/album_10.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Rasim',
      'images/album_9.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Gallery',
      'images/album_8.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Muxokamalar xonasi',
      'images/album_6.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Kutubxona',
      'images/album_7.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Mobil dasturchilar bo`limi',
      'images/album_1.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Web dasturchilar bo`limi',
      'images/album_2.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
  AlbumModel(
      'Kirish',
      'images/album_23.jpg',
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  The point of using Lorem Ipsum is that'
  ),
];