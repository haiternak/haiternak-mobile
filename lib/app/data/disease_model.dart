import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:haiternak_mobile/app/data/treatment_model.dart';

class DiseaseModel {
  String title, desc, status;
  Color color;

  List<TreatmentModel> treatmentModel;

  DiseaseModel({
    required this.title,
    required this.desc,
    required this.status,
    required this.treatmentModel,
    required this.color,
  });

  // ! Dummy Model remove if database has been create

  static List<DiseaseModel> listSalmonella = [
    DiseaseModel(
      title: 'Salmonella',
      desc:
          'Infeksi paratifoid (salmonella) merupakan suatu penyakit pada unggas yang disebabkan oleh kelompok bakteri salmonella sp., Penyakit ini ditandai dengan adanya diare dan nekrosis fokal pada berbagai organ. Faktor yang terpenting dalam penularan penyakit adalah pencemaran melalui feses pada kerabang telur selama proses bertelur atau pencemaran melalui tempat bertelur.',
      status: 'Most Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Antibiotik',
          desc:
              'Obat-obatan yang dapat dipergunakan untuk ayam yang terserangsalmonelosis adalah antibiotik ataupun antibakteri. Jika kesembuhan tidak tuntas, maka risiko terjadinya carrier akan sangat besar. Uji sensivitas antibiotik merupakan cara yang paling tepat untuk memilih obat yang sesuai. Berbagai jenis obat yang dapat digunakan untuk menanggulangi paratifoid antara lain adalah furazolidon, gentamisin, spektinomisin, sulfametazin dan kelompok kuinolon (asam nalidiksik atau asam oksolinat, flumekuin, enrofloksasin, norfloksasin). Pengobatan sebaiknya disertai oleh eliminasi faktor pendukung terjadinya infeksi dan pelaksanaan sanitasi atau desinfeksi yang ketat.',
        ),
        TreatmentModel(
          title: 'Penerapan BioSekuriti',
          desc:
              'Cara terbaik untuk menanggulangi Salmonelosis adalah mencegah masuknya kuman Salmonella sp. ke dalam suatu kelompok ayam dengan praktek manajemen yang optimal, khususnya pengamanan penerapan biosekuriti yang ketat. Prosedur manajemen peternakan yang baik harus diterapkan dengan sanitasi atau disinfeksi yang ketat, ayam harus dipelihara pada kandang yang dapat disanitasi atau didisinfeksi agar bebas residu kuman Salmonella dari periode pemeliharaan sebelumnya, ayam harus diberi pakan atau air minum yang bebas pencemaran kuman Salmonella, dan menghilangkan sumber infeksi atau faktor pendukung terjadinya infeksi, misalnya ayam carrier, rodens, unggas lain, hewan lain, pekerja peternakan pengunjung, alat transportasi. Vaksinasi terhadap spesies Salmonella tertentu belum dilakukan di lapangan, masih dalam skala percobaan.',
        ),
      ], color: Colors.red,
    ),
    DiseaseModel(
      title: 'Fowl Typhoid',
      desc:
          'Fowl typhoid merupakan penyakit yang disebabkan oleh bakteri Salmonella enterica. Penyakit ini dapat menyebabkan kematian pada unggas semua golongan umur yang memiliki angka kematian 10-100% yang dipengaruhi tingkat stres di kandang. Unggas pembawa penyakit (carrier) dapat menularkan penyakit ke anaknya melalui telur yang terinfeksi (vertikal) dan transmisi melalui oral dan respirasi (horizon).',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Obat',
          desc:
              'Pengobatan dapat dilakukan dengan memberikan Amoxycillin, sulponamide, tetracylines, atau fluoroquinolones.',
        ),
        TreatmentModel(
          title: 'Penerapan BioSekuriti',
          desc:
              'Pencegahan dapat dilakukan dengan meningkatkan biosekuriti. Sama seperti infeksi Salmonella yang lain, unggas yang sembuh dapat menjadi pembawa penyakit (carrier). Vaksin fowl typhoid dapat berupa vaksin inaktif dan vaksin killed.',
        ),
      ], color: Colors.orange,
    ),
    DiseaseModel(
      title: 'Pullorum',
      desc:
          'Penyakit Pullorum merupakan penyakit menular pada ayam, menyebabkan kematian yang sangat tinggi terutama pada anak ayam umur 1-10 hari. Penyebab penyakit adalah Salmonella pullorum. Banyak menyerang pada anak ayam yang baru menetas dengan angka. Pullorum lebih banyak menyerang pada anak ayam yang baru menetas terutama pada umur minggu ke-2 dan ke-3, namun penyakit juga dapat menyerang pada segala umur ayam.',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Antibiotik',
          desc:
              'Pengobatan pullorum kurang menguntungkan. Pengobatan pullorum dapat dilakukan dengan penyuntikan antibiotik seperti cocillin, neo terramycin ke dada ayam, namun obat-obat ini hanya efektif untuk pencegahan kematian anak ayam, tetapi tidak dapat menghilangkan penyakit tersebut. Sebaiknya ayam yang sudah terlanjur terinfeksi parah dimusnahkan untuk menghindari adanya carrier yang bersifat kronis.',
        ),
        TreatmentModel(
          title: 'Penerapan BioSekuriti',
          desc:
              'Sebelum kandang dipakai harus dibersihkan dan dilabur dengan kapur atau disemprot dengan salah satu diantara NaOH 2%, formalin 1-2% Giocide atau difumigasi dengan campuran formalin dan KMn04. Bila memakai litter, harus diusahakan agar tetap kering dan tetap dijaga kebersihan serta ventilasi yang baik. Selain itu kandang hendaknya selalu kena sinar matahari dan diusahakan bebas dari hewan-hewan yang dapat memindahkan penyakit pullorum seperti burung gereja dan sebagainya.',
        ),
      ], color: Colors.yellow,
    ),
  ];

  static List<DiseaseModel> listNewCastle = [
    DiseaseModel(
      title: 'New Castle (ND)',
      desc:
          'Newcastle Disease (ND) merupakan penyakit menular akut yang menyerang ayam dan jenis unggas lainnya dengan gejala klinis berupa gangguan pernafasan, pencernaan dan syaraf disertai mortalitas yang sangat tinggi. Penularan dari satu tempat ke tempat lain terjadi melalui alat transportasi, pekerja kandang, burung dan hewan lain, debu kandang, angin, serangga, makanan dan karung makanan yang tercemar. Dapat pula melalui transportasi.',
      status: 'Most Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Vitamin',
          desc:
              'Belum ditemukan obat yang dapat menyembuhkan ND. Usaha yang dapat dilakukan adalah membuat kondisi badan ayam cepat membaik dan merangsang nafsu makannya dengan memberikan tambahan vitamin dan mineral, serta mencegah infeksi sekunder dengan pemberian antibiotik. Dapat pula diberikan pemanasan tambahan pada kandang.',
        ),
        TreatmentModel(
          title: 'Pemberian Vaksin',
          desc:
              'Pencegahan penyakit dapat dilakukan dengan vaksinasi secara teratur, serta menjaga kebersihan dan sanitasi kandang.',
        ),
      ], color: Colors.red,
    ),
    DiseaseModel(
      title: 'Infectious Bronchitis',
      desc:
          'Infectious Bronchitis (IB) adalah penyakit pernapasan akut dan sangat menular pada ayam. Penyakit ini ditandai dengan adanya gejala pernapasan, seperti terengah-engah, batuk, bersin, ngorok, dan keluarnya sekresi hidung. Virus IB menyebar melalui rute pernapasan (droplet) yang dikeluarkan selama batuk atau bersin dan juga dieksresi lewat feses.',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Vitamin',
          desc:
              'Belum ditemukan obat yang dapat menyembuhkan infectious bronchitis. Usaha yang dapat dilakukan adalah membuat kondisi badan ayam cepat membaik dan merangsang nafsu makannya dengan memberikan tambahan vitamin dan mineral, serta mencegah infeksi sekunder dengan pemberian antibiotik. Dapat pula diberikan pemanasan tambahan pada kandang.',
        ),
        TreatmentModel(
          title: 'Pemberian Vaksin',
          desc:
              'Vaksinasi dilakukan secara teratur sesuai dengan petunjuk pembuat vaksin atau didasarkan atas hasil uji titer antibodi. Sebagai garis pertahanan kedua, ayam di daerah masalah IB harus divaksinasi dengan vaksin hidup yang dimodifikasi untuk memberikan perlindungan.',
        ),
      ], color: Colors.orange,
    ),
    DiseaseModel(
      title: 'Infectious Laryngo',
      desc:
          'Infectious laryngo tracheitis (ILT) merupakan penyakit akut pada ayam yang ditandai dengan gejala khas pada saluran pernafasan, kesulitan bernafas dan keluarnya eksudat berdarah. Penyebaran penyakit secara mekanis dapat terjadi karena menggunakan peralatan atau kandang yang tercemar. Penyebaran virus, baik yang terdapat dibagian dalam ataupun dibagian luar telur tidak dapat dilakukan.',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Belum Ada Pengobatan',
          desc:
              'Belum ditemukan obat yang dapat menyembuhkan infectious bronchitis. Usaha yang dapat dilakukan adalah membuat kondisi badan ayam cepat membaik dan merangsang nafsu makannya dengan memberikan tambahan vitamin dan mineral, serta mencegah infeksi sekunder dengan pemberian antibiotik. Dapat pula diberikan pemanasan tambahan pada kandang.',
        ),
        TreatmentModel(
          title: 'Pemberian Vaksin',
          desc:
              'Jika diagnosa ILT diperoleh pada awal kejadian wabah, vaksinasi pada ayam yang tidak tertular akan memacu terbentuknya kekebalan yang memadai, sebelum penyakit ini datang menyerang. Oleh karena infeksi ILT sering sebagai akibat adanya ayam carier, maka sangatlah penting untuk menghindari mencampur ayam yang sembuh dari sakit dengan ayam lain yang belum terinfeksi ILT.',
        ),
      ], color: Colors.yellow,
    ),
  ];

  // * Dummy Data COCCI
  static List<DiseaseModel> listCocci = [
    DiseaseModel(
      title: 'Coccidosis',
      desc:
          'Coccidiosis merupakan penyakit parasiter pada sistem pencernaan unggas akibat infeksi protozoa genus Emeria. Penyakit Coccidiosis dapat menyerang unggas pada ayam (4-5 minggu). Penularan Coccidiosis terjadi ketika (menelan) oocyst infektif dalam pakan atau air minum. Tidak ada vektor biologis yang membantu penyebaran penyakit ini, namun terdapat vektor mekanik berupa lalat yang membantu menyebarkan oocyst dalam feses.',
      status: 'Most Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Obat',
          desc:
              'Pengobatan Coccidiosis dapat dilakukan dengan pemberian obat-obatan yang bersifat coccidiostat atau coccidiocidal. Pemberian coccidiostat tidak mengeliminasi seluruh parasit dari dalam tubuh tetapi hanya menekan jumlah parasit yang ada di dalam tubuh. Dengan jumlah parasit yang terkontrol, tubuh diharapkan mampu merespon dengan membentuk antibodi/kekebalan tubuh.',
        ),
        TreatmentModel(
          title: 'Pemberian BioSecuriti',
          desc:
              'Pencegahan Coccidiosis pada unggas dapat dilakukan dengan penerapan tindakan biosecurity dan pemberian vaksin secara teratur. Selain itu, perbaikan manejemen kandang juga akan membantu mencegah penyebaran penyakit Coccidiosis.',
        ),
      ], color: Colors.red,
    ),
    DiseaseModel(
      title: 'Infeksi Parasit',
      desc:
          'Colibacillosis adalah penyakit pada hewan, terutama menyerang hewan muda, disebabkan oleh bakteri Escherichia coli (E.coli). Penyakit dapat berkembang cepat dengan derajat kematian yang tinggi. Pada ayam dapat melalui pencemaran makanan oleh feses, dan yang terpenting adalah telur tetas yang terkontaminasi oleh feses. Sumber penularan lainnya adalah infeksi indung telur atau salphingitis.',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Antibiotik',
          desc:
              'Pengobatan Colibacillosis dengan pemberian antibiotik. Beberapa serotipe E.coli seringkali resisten terhadap satu atau lebih antibiotika. Untuk pengobatan yang efektif perlu dilakukan uji sensitivitas bakteri, karena antibiotik yang efektif pada satu kasus belum tentu dapat efektif pada kasus yang lainnya. Pengobatan pada kasus colibacillosis berat perlu dipertimbangkan dari berbagai aspek terutama dari aspek ekonomis pengobatan.',
        ),
        TreatmentModel(
          title: 'Seleksi Ketat',
          desc:
              'Pencegahan dapat dimulai dari seleksi secara ketat ayam yang berkualitas pada awal pemeliharaan dan mencegah pencemaran bakteri pada air minum ataupun pakan. Pencegahan penyakit yang bersifat imunosupresif diprioritaskan sehingga infeksi E.coli dapat dicegah.',
        ),
      ], color: Colors.orange,
    ),
    DiseaseModel(
      title: 'Salmonella',
      desc:
          'Infeksi paratifoid (salmonella) merupakan suatu penyakit pada unggas yang disebabkan oleh kelompok bakteri salmonella sp., Penyakit ini ditandai dengan adanya diare dan nekrosis fokal pada berbagai organ. Faktor yang terpenting dalam penularan penyakit adalah pencemaran melalui feses pada kerabang telur selama proses bertelur atau pencemaran melalui tempat bertelur.',
      status: 'Likely',
      treatmentModel: [
        TreatmentModel(
          title: 'Pemberian Antibiotik',
          desc:
              'Obat-obatan yang dapat dipergunakan untuk ayam yang terserangsalmonelosis adalah antibiotik ataupun antibakteri. Jika kesembuhan tidak tuntas, maka risiko terjadinya carrier akan sangat besar. Uji sensivitas antibiotik merupakan cara yang paling tepat untuk memilih obat yang sesuai. Berbagai jenis obat yang dapat digunakan untuk menanggulangi paratifoid antara lain adalah furazolidon, gentamisin, spektinomisin, sulfametazin dan kelompok kuinolon (asam nalidiksik atau asam oksolinat, flumekuin, enrofloksasin, norfloksasin). Pengobatan sebaiknya disertai oleh eliminasi faktor pendukung terjadinya infeksi dan pelaksanaan sanitasi atau desinfeksi yang ketat.',
        ),
        TreatmentModel(
          title: 'Penerapan BioSekuriti',
          desc:
              'Cara terbaik untuk menanggulangi Salmonelosis adalah mencegah masuknya kuman Salmonella sp. ke dalam suatu kelompok ayam dengan praktek manajemen yang optimal, khususnya pengamanan penerapan biosekuriti yang ketat. Prosedur manajemen peternakan yang baik harus diterapkan dengan sanitasi atau disinfeksi yang ketat, ayam harus dipelihara pada kandang yang dapat disanitasi atau didisinfeksi agar bebas residu kuman Salmonella dari periode pemeliharaan sebelumnya, ayam harus diberi pakan atau air minum yang bebas pencemaran kuman Salmonella, dan menghilangkan sumber infeksi atau faktor pendukung terjadinya infeksi, misalnya ayam carrier, rodens, unggas lain, hewan lain, pekerja peternakan/ pengunjung, alat transportasi. Vaksinasi terhadap spesies Salmonella tertentu belum dilakukan di lapangan, masih dalam skala percobaan.',
        ),
      ], color: Colors.yellow,
    ),
  ];
}
