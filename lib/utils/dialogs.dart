part of 'utils.dart';

class Dialogs {
  var dialogEmpty = Get.defaultDialog(
    onConfirm: () => Get.back(),
    content: Column(
      children: [
        Image.asset('assets/images/background-dialog 1.png'),
        SizedBox(
          height: getProperWidht(14),
        ),
        Text(
          'Maaf layanan ini dalam pengembangan',
          style: primaryTextStyle,
        ),
      ],
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
