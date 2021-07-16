class RecentWork {
  final String? image, title, description, url;
  final int? id;

  RecentWork({this.id, this.image, this.title, this.description, this.url});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    description:
        "Bilişim Sistemleri Analizi ve Tasarımı dersi kapsamında 2 arkadaşımla beraber geliştirmiş olduğum bulut tabanlı kargo takip sistemidir.",
    title: "Cargopath",
    image: "images/projects/project_1.jpg",
    url: "https://github.com/svnyasin/cargopath",
  ),
  RecentWork(
    id: 2,
    description:
        "Sunucu Tabanlı Programlama, Karar Destek Sistemleri ve Mekansal VeriTabanı dersleri kapsamında PHP ve MySQL kullanarak tasarlayıp geliştirmiş olduğum web tabanlı karar destek sistemi.",
    title: "Siber Güvenlik KDS",
    image: "images/projects/project_2.jpg",
    url:
        "https://github.com/svnyasin/Siber-Guvenlik-Yonetimi-Karar-Destek-Sistemi",
  ),
  RecentWork(
    id: 3,
    description:
        "Python ile yazdığım girilen IPv4 adresinin yaklaşık konumunu tespit eden küçük bir program. ",
    title: "Basic GeoIP",
    image: "images/projects/project_3.jpg",
    url: "https://github.com/svnyasin/basicGeoIP",
  ),
  RecentWork(
    id: 4,
    description:
        "Ufak bir 'linear regression' denemesi. Bu program internet üzerinde gerçek zamanlı verileri çekip bir veritabanına kaydederek oluşan bu veriseti üzerinden tahminleme yapmakta.",
    title: "Al-Sat Robotu",
    image: "images/projects/project_4.jpg",
    url: "https://github.com/svnyasin/alSatRobotu",
  ),
  RecentWork(
    id: 5,
    description:
        "Hobi olarak 'Sonsuz zıplama' tarzında Unity kullanarak geliştirdiğim oyun.",
    title: "Tumble Up",
    image: "images/projects/project_5.jpg",
    url:
        "https://play.google.com/store/apps/details?id=com.sevenmoon.tumbleup&hl=tr",
  ),
  RecentWork(
    id: 6,
    description:
        "Bu proje çalışmasında Raspberry Pi 3B ve diğer gerekli malzemeler kullanılarak görme engelli bireyler için yardımcı bir gözlük tasarlanması amaçlandı.",
    title: "BeepView",
    image: "images/projects/project_6.jpeg",
    url: "https://github.com/svnyasin/beepView",
  ),
];
