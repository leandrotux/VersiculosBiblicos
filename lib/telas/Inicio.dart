import 'dart:math';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  var _versiculos = [
    "O amor é paciente, o amor é bondoso. Não inveja, não se vangloria, não se " +
        "orgulha. Não maltrata, não procura seus interesses, não se ira facilmente, " +
        "não guarda rancor. O amor não se alegra com a injustiça, mas se alegra com" +
        " a verdade. Tudo sofre, tudo crê, tudo espera, tudo suporta. 1 Coríntios 13:4-7",
    "Não fui eu que ordenei a você? Seja forte e corajoso! Não se apavore nem desanime, " +
        "pois o Senhor, o seu Deus, estará com você por onde você andar. Josué 1:9",
    ''
        "Eu disse essas coisas para que em mim vocês tenham paz. Neste mundo vocês terão aflições; contudo, tenham ânimo! Eu venci o mundo. João 16:33",
    "Porque sou eu que conheço os planos que tenho para vocês', diz o Senhor, 'planos de fazê-los prosperar e não de causar dano, planos de dar a vocês esperança e um futuro. Jeremias 29:11",
    "Então Pedro aproximou-se de Jesus e perguntou: 'Senhor, quantas vezes deverei perdoar a meu irmão quando ele pecar contra mim? Até sete vezes?' Jesus respondeu: 'Eu digo a você: Não até sete, mas até setenta vezes sete'. Mateus 18:21-22",
    "Por isso não tema, pois estou com você; não tenha medo, pois sou o seu Deus. Eu o fortalecerei e o ajudarei; eu o segurarei com a minha mão direita vitoriosa. Isaías 41:10",
    "Tudo posso naquele que me fortalece. Filipenses 4:13",
    "Honra teu pai e tua mãe, a fim de que tenhas vida longa na terra que o Senhor, o teu Deus, te dá. Êxodo 20:12",
    "Vocês, orem assim:'Pai nosso, que estás nos céus! " +
        "Santificado seja o teu nome. Venha o teu Reino;seja feita a tua vontade,assim na terra como no céu. Dá-nos hoje o nosso " +
        "pão de cada dia. Perdoa as nossas dívidas, assim como perdoamos aos nossos devedores. E não nos deixes cair em tentação, " +
        "mas livra-nos do mal, porque teu é o Reino, o poder e a glória para sempre. Amém. Mateus 6:9-13",
    "Portanto, não se preocupem com o amanhã, pois o amanhã trará as suas próprias preocupações. Basta a cada dia o seu próprio mal.Mateus 6:34",
    "Então cada um foi para a sua casa. João 7:53",
    "O Senhor te abençoe e te guarde; o Senhor faça resplandecer o seu rosto sobre ti e te conceda graça; o Senhor volte para ti o seu rosto " +
        "e te dê paz. Números 6:24-26",
    "Não façam cortes no corpo por causa dos mortos nem tatuagens em vocês mesmos. Eu sou o Senhor. Levítico 19:28",
    "Assim, eles já não são dois, mas sim uma só carne. Portanto, o que Deus uniu, ninguém separe. Mateus 19:6",
    "Então disse Jesus: 'Deixem vir a mim as crianças e não as impeçam; pois o Reino dos céus pertence aos que são semelhantes a elas'. Mateus 19:14",
    "Não se amoldem ao padrão deste mundo, mas transformem-se pela renovação da sua mente, para que sejam capazes de experimentar e comprovar a boa, " +
        "agradável e perfeita vontade de Deus. Romanos 12:2",
    "Os filhos são herança do Senhor, uma recompensa que ele dá. Como flechas nas mãos do guerreiro são os filhos nascidos na juventude. Como é feliz o homem " +
        "que tem a sua aljava cheia deles! Não será humilhado quando enfrentar seus inimigos no tribunal. Salmos 127:3-5",
    "Ele respondeu: 'Porque a fé que vocês têm é pequena. Eu asseguro que, se vocês tiverem fé do tamanho de um grão de mostarda, poderão dizer a este monte: " +
        "'Vá daqui para lá', e ele irá. Nada será impossível para vocês. Mateus 17:20",
    "A mulher sábia edifica a sua casa, mas com as próprias mãos a insensata derruba a sua. Provérbios 14:1",
    "Meu povo foi destruído por falta de conhecimento. Uma vez que vocês rejeitaram o conhecimento, eu também os rejeito como meus sacerdotes; uma vez que vocês ignoraram " +
        "a lei do seu Deus, eu também ignorarei seus filhos. Oséias 4:6",
    "Quem tem muitos amigos pode chegar à ruína, mas existe amigo mais apegado que um irmão. Provérbios 18:24",
    "Busquem, pois, em primeiro lugar o Reino de Deus e a sua justiça, e todas essas coisas serão acrescentadas a vocês. Mateus 6:33",
    "Se, porém, não agrada a vocês servir ao Senhor, esco­lham hoje a quem irão servir, se aos deuses que os seus antepassados serviram além do Eufrates, " +
        "ou aos deuses dos amorreus, em cuja terra vocês estão vivendo. Mas eu e a minha família servi­remos ao Senhor. Josué 24:15",
    "Respondeu Jesus: 'Ame o Senhor, o seu Deus de todo o seu coração, de toda a sua alma e de todo o seu entendimento'. " +
        "Este é o primeiro e maior mandamento. E o segundo é semelhante a ele: 'Ame o seu próximo como a si mesmo'. Mateus 22:37-39",
    "Respondeu Jesus: Eu sou o caminho, a verdade e a vida. Ninguém vem ao Pai, a não ser por mim. João 14:6",
    "Porque Deus tanto amou o mundo que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna. João 3:16",
    "Protege-me como à menina dos teus olhos; esconde-me à sombra das tuas asas, Salmos 17:8",
    "Consagre ao Senhor tudo o que você faz, e os seus planos serão bem-sucedidos. Provérbios 16:3",
    "Venham a mim, todos os que estão cansados e sobrecarregados, e eu darei descanso a vocês. Tomem sobre vocês o meu jugo e aprendam de mim, " +
        "pois sou manso e humilde de coração, e vocês encontrarão descanso para as suas almas. Pois o meu jugo é suave e o meu fardo é leve. Mateus 11:28-30",
    "Deus não é homem para que minta, nem filho de homem para que se arrependa. Acaso ele fala e deixa de agir? Acaso promete e deixa de cumprir? Números 23:19"
  ];

  void _gerarVersiculos() {
    var numeroSorteado = Random().nextInt(_versiculos.length);
    setState(() {
      _versiculoGerada = _versiculos[numeroSorteado];
    });
  }

  var _versiculoGerada = "Clique abaixo para ver o versículo!";
  @override
  int _indiceAtual = 0;
  String _resultado = "";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("imagens/logo.png"),
            SelectableText(
              _versiculoGerada,
              showCursor: false,
              toolbarOptions: ToolbarOptions(
                  copy: true, selectAll: true, cut: false, paste: false),
              style: TextStyle(fontSize: 18, color: Colors.brown),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                child: Text(
                  "Ver Versículo",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                color: Colors.orange[300],
                onPressed: _gerarVersiculos,
              ),
            )
          ],
        ),
      )),
    );
  }
}
