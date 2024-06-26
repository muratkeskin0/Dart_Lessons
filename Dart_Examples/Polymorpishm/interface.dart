abstract class VeriKaydedici {
  void kaydet();
}

class XMLKaydedici implements VeriKaydedici {
  void kaydet() {
    print("XML Kaydedici ");
  }
}

class JSONKaydedici implements VeriKaydedici {
  void kaydet() {
    print("JSON Kaydedici");
  }
}

class VeritabaniKaydedici implements VeriKaydedici {
  void kaydet() {
    print("Veritabani Kaydedici");
  }
}

void main() {
  VeriKaydedici veritabaniKaydedici = new VeritabaniKaydedici();
  VeriKaydedici jSONKaydedici = new JSONKaydedici();
  VeriKaydedici xMLKaydedici = new XMLKaydedici();

  List<VeriKaydedici> veriler = [
    veritabaniKaydedici,
    jSONKaydedici,
    xMLKaydedici
  ];

  for (var veri in veriler) {
    veri.kaydet();
  }
}

/*Bir uygulamanız var ve kullanıcı verilerini farklı formatlarda (örneğin, XML, JSON, Veritabanı) kaydetmek istiyorsunuz.

Arayüz: VeriKaydedici adında bir arayüz oluşturun. Bu arayüz, kaydet() metodunu tanımlar.
Uygulama: XMLKaydedici, JSONKaydedici ve VeritabaniKaydedici gibi sınıflar VeriKaydedici arayüzünü implement eder ve kaydet() metodunu kendi formatlarına göre uygular.
*/
