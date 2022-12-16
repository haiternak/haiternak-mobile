part of 'utils.dart';

class Dialogs {
  var dialogEmpty = Get.defaultDialog(
    onConfirm: () => Get.back(),
    content: Center(
      child: Column(
        children: [
          Image.asset('assets/images/background-dialog 1.png'),
          SizedBox(
            height: getProperWidht(14),
          ),
          Text(
            'Maaf layanan ini dalam pengembangan',
            style: primaryTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    title: '',
    textConfirm: 'Tutup dialog',
    confirmTextColor: kBackgroundColor1,
  );
}

class Dialogawal {
  var dialogEmpty = Get.defaultDialog(
    onConfirm: () => Get.back(),
    content: Center(
      child: Column(
        children: [
          Image.asset('assets/images/background-dialog 1.png'),
          SizedBox(
            height: getProperWidht(14),
          ),
          Center(
            child: Text('Dalam Tahap Pengembangan\nSilahkan Login Manual',
                style: primaryTextStyle, textAlign: TextAlign.center),
          ),
        ],
      ),
    ),
    title: '',
    textConfirm: 'Tutup dialog',
    confirmTextColor: kBackgroundColor1,
  );
}

class DialogsLottie {
  var dialoglottie = Get.defaultDialog(
    content: Column(
      children: [
        Lottie.asset('assets/json/loading-anal.json', width: 200, height: 200),
        Text('Dalam Proses Identifikasi')
      ],
    ),
    title: '',
  );
}

class Dialogbeli {
  var dialogEmpty = Get.defaultDialog(
    onConfirm: () => Get.back(),
    content: Center(
      child: Column(
        children: [
          Image.asset('assets/images/sending.jpg'),
          SizedBox(
            height: getProperWidht(14),
          ),
          Center(
            child: Text('Request Terkirim\nSilahkan Menunggu',
                style: primaryTextStyle, textAlign: TextAlign.center),
          ),
        ],
      ),
    ),
    title: '',
    textConfirm: 'Tutup dialog',
    confirmTextColor: kBackgroundColor1,
  );
}
