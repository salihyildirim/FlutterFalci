import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}
//Falci uygulamasi olusturulduu.
class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.brown[700],
          title: Text('Falın Gelsin'),
          centerTitle: true,
        ),
        body: FalTahmin(),
      ),
    );
  }
}

class FalTahmin extends StatefulWidget {
  const FalTahmin({Key? key}) : super(key: key);

  @override
  _FalTahminState createState() => _FalTahminState();
}

int rnd = 0;
int i = 0;
int ask = 0;
int para = 0;
int tavsiye = 0;

class _FalTahminState extends State<FalTahmin> {
  @override
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  int yanitUydur() {
    setState(() {
      rnd = Random().nextInt(5);
    });
    return rnd;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 8),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/FalCircle.jpg'),
            ),
          ),
          TextButton(
            onPressed: () {
              i = yanitUydur() + 1;
              ask = 1;
              para = 0;
              tavsiye = 0;
            },
            child: Card(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text(
                  'AŞK DURUMU',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              i = yanitUydur() + 6;
              ask = 0;
              para = 1;
              tavsiye = 0;
            },
            child: Card(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: ListTile(
                leading:
                    Icon(Icons.shopping_cart_outlined, color: Colors.green),
                title: Text(
                  'PARA DURUMU',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              i = yanitUydur() + 11;
              ask = 0;
              para = 0;
              tavsiye = 1;
            },
            child: Card(
              margin: EdgeInsets.fromLTRB(35, 0, 35, 2),
              child: ListTile(
                leading: Icon(Icons.compare_arrows_sharp, color: Colors.blue),
                title: Text(
                  'GÜNLÜK TAVSİYE',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              (yanitlar[i]),
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          )
        ],
      ),
    );
  }
}
