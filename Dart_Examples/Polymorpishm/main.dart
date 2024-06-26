abstract class OdemeYontemi {
  String get isim;
  void odemeYontemiGoster();
}

class KrediKarti implements OdemeYontemi {
  @override
  final String isim;
  KrediKarti(this.isim);
  @override
  void odemeYontemiGoster() {
    print("$isim Kredi Karti ile ödedi");
  }
}

class PayPal implements OdemeYontemi {
  @override
  final String isim;
  PayPal(this.isim);
  @override
  void odemeYontemiGoster() {
    print("$isim PayPal ile ödedi");
  }
}

class BankaTransferi implements OdemeYontemi {
  @override
  final String isim;
  BankaTransferi(this.isim);
  @override
  void odemeYontemiGoster() {
    print("$isim Banka Transfer ile ödedi");
  }
}

void main() {
  List<OdemeYontemi> odemeYontemleri = [
    KrediKarti("Garanti"),
    PayPal("Ziraat"),
    BankaTransferi("Vakifbank")
  ];
  for (var odemeYontemi in odemeYontemleri) {
    odemeYontemi.odemeYontemiGoster();
  }
}
