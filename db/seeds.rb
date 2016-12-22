# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  **Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.**'

RandomWord.exclude_list << /_/

for y in 2012..2014
  season = Season.create(year: y)

  ['LitBo News', 'LitCho News', 'LitFo News'].each do |magazine_title|
    color = "%06x" % (rand * 0xffffff)
    magazine = Magazine.create(title: "#{magazine_title} #{y + 1}", style: "body{background-color: \##{color};}", season: season)
    for i in (1..3)
      issue = Issue.create(title: "Numeris \##{i}", magazine: magazine)
      for i in (1..10)
        title = RandomWord.nouns.next.capitalize + " is not what you think it is"
        Article.create(title: title, content: lorem, issue: issue)
      end
    end
  end
end

# Real content for the last year

season2016 = Season.create(year: 2015)

magazineBo = Magazine.create(title: "KREBSO DVIRATUKAS", season: season2016)

issueBo1 = Issue.create(title: "Numeris vienas", magazine: magazineBo)

Article.create(issue: issueBo1, title: "Labas rytas, jaunasis biologe!",
  content: "Visa 48-osios Lietuvos respublikinės biologijos olimpiados organizatorių komanda ir oranžinė šeima sveikina tave atvykus į LitBO 48. Kaip žinia, tai trečiasis ir pats smagiausias biologijos olimpiados etapas, kuriame tau ir kitiems smalsiukams bei smalsutėms atsivers dar platesni biologijos mokslo vandenys. Juk taip žavu, kai sprendžiant teorines užduotis aplinkui šaudo neuronai, stengiantis įveikti praktines užduotis ir suvaldyti drebančias rankas liejasi prakaito upeliai, o, atradus teisingą atsakymą, išgirdus naują faktą ar atradus biologijos mokslų lobių skrynią, akys nušvinta džiaugsmu. Tad linkime tau šėlioti, ieškoti ir surasti pažinčių, draugų, atskleisti mokslo paslaptis bei patirti nuostabių akimirkų, kurių pažadame su kaupu. Jei netyčia pasimetei gyvenimiškuose ar mokslo labirintuose, nedvejok ir drąsiai kreipkis į oranžinius draugus, mokytojus ar komisijos narius. Linkime tau visokiariopos sėkmės ir lai ši olimpiada tampa tuo įvykiu, kurį dar ilgai norėsis prisiminti, apie jį kalbėti ir slapčia viltis dar pakartoti.")
Article.create(issue: issueBo1, title: "Olimpiados programa",
  content: "Ketvirtadienis, kovo 26 d.

* 9:00-12:00 Registracija
* 12:00-13:00 Pietūs
* 13:00-14:00 Olimpiados atidarymas
* 14:00-17:00 Teorinės užduotys
* 17:00-17:30 Pertrauka
* 17:30-18:30 Testas + pasirenkamosios užduotys
* 18:30-19:30 Vakarienė
* 19:30-22:00 Protmušis
* Nuo 22:00 Nakties poilsis

Penktadienis, kovo 27 d

* 7:15-8:00 Pusryčiai
* 8:00-10:15 Praktinės užduotys
* 10:15-10:45 Pertrauka
* 10:45-13:00 Praktinės užduotys
* 13:00-14:00 Pietūs
* 14:00-18:00 Interaktyvus žaidimas „StrateGO“
* 18:00-18:45 Vakarienė
* 18:45-19:45 Apeliacijų svarstymas
* 20:30-23:00 Šokių vakaras
* nuo 22:00 Stalo žaidimų naktis

Šeštadienis, kovo 28 d

* 9:30-10:30 Pusryčiai
* 11:00-13:00 Olimpiados uždarymas
* nuo 13:00 Išvykimas")
Article.create(issue: issueBo1, title: "Vertinimo komisija:",
  content: "* dr. Valerijus Rašomavičius, Gamtos tyrimų centro Botanikos instituto Floros ir geobotanikos laboratorijos vadovas, komisijos pirmininkas;
* dr. Jurga Turčinavičienė, Vilniaus universiteto Gamtos mokslų fakulteto prodekanė, docentė;
* dr. Dalius Dapkus, Lietuvos edukologijos universiteto Mokslo ir inovacijų direkcijos direktorius, Gamtos, matematikos ir technologijų fakulteto docentas;
* dr. Andrius Petrašiūnas, Vilniaus universiteto Gamtos mokslų fakulteto docentas;
* dr. Edita Meškauskaitė, Vilniaus universiteto Gamtos mokslų fakulteto lektorė;
* dr. Laimutis Kučinskas, Lietuvos sveikatos mokslų universiteto Biologinių sistemų ir genetinių tyrimų instituto lektorius ir Lietuvos sveikatos mokslų universiteto Kauno klinikų Genetikos ir molekulinės centro specialistas;
* Julius Juodakis, Geteborgo universiteto magistrantas;
* Raimondas Šiukšta, Vilniaus universiteto Gamtos mokslų fakulteto doktorantas;
* dr. Rasa Sabaliauskaitė, „Thermo Fisher Scientific“ Mokslinių tyrimų ir eksperimentinės plėtros centro mokslo darbuotoja;
* Rytis Masiliūnas, Vilniaus universiteto ligoninės Santariškių klinikų Neurologijos centro vyresnysis neurologijos rezidentas;
* Alvydas Gintaras, Lietuvos gamtos fondo specialistas;
* Sigitas Juzėnas, Vilniaus universiteto Gamtos mokslų fakulteto lektorius;
* Irmantas Mogila, Vilniaus universiteto Biotechnologijos instituto Baltymų-nukleorūgščių sąveikos tyrimo skyriaus studentas;
* dr. Agnė Rocienė, Lietuvos edukologijos universiteto Gamtos, matematikos ir technologijų fakulteto prodekanė;
* Radvilė Rimgailė-Voicik, Vilniaus universiteto Gamtos mokslų fakulteto doktorantė;
* Miglė Mikutėnaitė, Vilniaus universiteto Gamtos mokslų fakulteto studentė;
* Gitana Timofejevaitė, Vilniaus universiteto Gamtos mokslų fakulteto studentė;")
Article.create(issue: issueBo1, title: "Biologų sandrauga. Kas tai?",
  content: "Jau aštuntus metus skaičiuojanti Biologų sandrauga (BioSa) – nekomercinis, unikalus ir analogų neturintis projektas, pagrįstas moksleivių noru sužinoti daugiau, nei reikalauja valstybinio brandos egzamino programa. Kitaip tariant, stačia galva nerti į kerintį biologijos mokslą! O nersi tikrai ne vienas, nes, pavyzdžiui, 2014/15 m.m. į BioSa užsiregistravo virš 170 moksleivių iš visos Lietuvos. Su kiekvienais metais dalyvių skaičius tik auga. Apie 30 BioSa dalyvių galima rasti ir čia - olimpiados III ture :)

BioSa susideda iš dviejų esminių veiklų: kas savaitę nuotoliniu būdu sprendžiamų testų pagal paskirtą literatūrą ir akivaizdinių praktikų Vilniaus universitete arba Lietuvos sveikatos mokslų universitete. Pagal iš anksto paruoštą tvarkaraštį dalyviai testams ruošiasi (priklausomai nuo amžiaus grupės) iš N. A. Campbell ir J. Reece almanacho „Biology“ 8 leidimo arba iš S. S. Mader knygos „Biologija“ 6-ojo leidimo. Dalyviai kas savaitę, nuo rugsėjo pabaigos iki kovo pradžios, atlieka užduotis, parengtas kuratorių arba savanorių. Geriausiai per testus pasirodę dalyviai kviečiami į tris praktikas, iš kurių dvi šiemet jau įvyko VU, o paskutinė vyks LSMU balandžio mėnesį. Praktikų, trunkančių tris dienas, metu dalyviai gauna ne tik teorinių žinių, bet ir praktinių įgūdžių.

Šiais metais buvo gilinamos zoologijos, mikologijos, botanikos, mikrobiologijos, biochemijos, genetikos bei ląstelės biologijos žinios. Paskaitas ir laboratorinius darbus vedė rinktinė profesūra (kaip antai prof. Jurgis Kadziauskas, dr. Rolandas Meškys, prof. Jonas Naujalis, prof. Juozas Lazutka, doc. Jurga Turčinavičienė ir kiti) bei savanoriai studentai, tarp jų – ir Tarptautinės biologijos olimpiados prizininkai. Smagiausia tai, kad dauguma dėstytojų kasmet su dideliu malonumu priima gabius moksleivius ir linki sugrįžti kitais metais.

Jei susidomėjai, natūraliai turėtų kilti klausimas, kaip patekti į BioSa? Aštuntasis sezonas jau pasibaigė, tačiau tikrai tęsime darbą ir naujaisiais mokslo metais. Todėl nuo rugpjūčio antrosios pusės atidžiai sek www.olimpiados.lt, lauk registracijos į BioSa9 pradžią, registruokis ir dalyvauk! Primename, jog registracija yra nemokama ir atvira, nevykdome atrankos, pagrindinis kriterijus – motyvacija! 

Lauksime Tavęs!")
Article.create(issue: issueBo1, title: "LGMOA šeima: ką mes veikiame?",
  content: "Tikriausiai jau pastebėjai, kad šiandien apie tave zuja daugybė oranžinių žmogučių. Jei olimpiadoje dalyvauji pirmą kartą, pats laikas sužinoti, kas mes tokie ir kodėl čia esame. Lietuvos gamtos mokslų olimpiadų asociacija (LGMOA) jungia gamtos mokslų mylėtojus studentus, kurie siekia praturtinti olimpiadas moksleiviams įdomia ir džiuginančia veikla ir yra pasiryžę dalintis savo patirtimi, bendrauti ir susipažinti su jumis.

LGMOA susikūrė 2002 metais Vilniaus universiteto Chemijos fakulteto dėstytojų iniciatyva. Po pusantrų metų prie organizacijos prisijungė ir entuziastingi studentai – šeši Vilniaus universiteto Chemijos fakulteto pirmakursiai, kurie, dalyvaudami Tarptautinėse chemijos olimpiadose pamatė, kad olimpiada gali būti dalyviams tarsi šventė, kurioje toli gražu vyksta ne tik užduočių sprendimai. Jie siekė pasidalinti savo patirtimi su jaunesniais kolegomis, sukurti gabų jaunimą vienijančią bendruomenę ir tiesiog parodyti, kad mokslas yra ne tik naudingas, bet ir smagus bei įdomus! Praėjo 13 metų ir LGMOA iš dėstytojų iniciatyvos pavirto oranžiniu viesulu, kuris kiekvieną pavasarį praūžia per visas tris gamtos mokslų olimpiadas ir padeda ruoštis tarptautinėms olimpiadoms.

Pagrindinis ir svarbiausias LGMOA renginys ir tikslas – olimpiados. 2004 metais oranžiniai prisijungė prie Lietuvos mokinių chemijos olimpiados III turo organizavimo, po poros metų juos priėmė Lietuvos mokinių biologijos olimpiada, o 2009 metais LGMOA atkeliavo ir į Lietuvos mokinių fizikos olimpiados trečiuosius turus. LGMOA nariai per antruosius gamtos mokslų olimpiadų turus taip pat aplanko įvairių rajonų mokinius, siekia jiems įpūsti oranžinės dvasios. Organizacija prisideda ir prie tarptautinių renginių organizavimo: 2005, 2008, 2011 ir 2014 metais Lietuvoje organizuotos Baltijos chemijos olimpiados. Taip pat 2010 metais Vilniuje vyko Tarptautinė vasaros mokslo stovykla (ISSC), o 2012 metais - iki šiol didžiausias gamtos mokslų ugdymo renginys Lietuvoje – Europos Sąjungos mokslo olimpiada (EUSO). Tam, kad būtų atrinkti moksleiviai į Tarptautinę jaunių gamtos mokslų olimpiadą (IJSO), buvo sukurta Lietuvos gamtos mokslų olimpiada (LGMO). Tai - projektas, kur LGMOA vaidina tikrai dideli vaidmenį: oranžiniai ne tik padeda kurti užduotis, jas išveža į miestus, prižiūri jas sprendžiančius dalyvius, surenka darbus, ištaiso juos, bet ir padeda galutinėje atrankoje į IJSO paruošiamąją stovyklą.

Vis dėlto, LGMOA neapsiriboja vien tik indėliu i olimpiadų organizavimą. Oranžinių kuruojamas projektas „Biologų sandrauga“ (BioSa) padeda pasiruošti šalies biologijos olimpiadoms ir gilinti savo žinias bei tobulinti įgūdžius. LGMOA administruoja didžiausio šalyje tinklalapio, skirto mokiniams ir mokytojams, (olimpiados.lt) veiklą. Kitos oranžinių iniciatyvos – projektas „Universitetas su Oranžiniu“ (UsuO), kuris padeda mokiniams susipažinti su studentišku gyvenimu, bei didelio dėmesio susilaukiantis projektas „Ne imti, bet duoti“, dabar jau veikiantis atskirai, kurio metu savanoriai ne tik siekia atkreipti visuomenės dėmesį į vaikus iš vaikų globos namų, bet ir užsiima korepetitoriavimu ir leidžia laisvalaikį su jais. Oranžiniai taip pat tęsia mokslo populiarinimo (LGMOA „Mokslo dienos“ šalies mokyklose) ir Asociacijos naujokų krikštynų tradicijas.

Oranžinių būrys kasmet pasipildo vis didesniu kiekiu jaunų studentų, kurie dega noru ir ryžtu nuspalvinti olimpiadas oranžine spalva. Patys savanoriai teigia, jog LGMOA jiems suteikia draugus, kuriais galima pasikliauti, kurie mato tave įvairiomis spalvomis - ir kaip draugą, ir kaip kolega, su kuriais ir dirbti ir ilsėtis yra gera. Organizacijos variklis yra pareiga sau, kitiems, draugui ir tam žmogui, kurio dar nesutikai ir jis dar tik taps tavo draugu. Kartu - tai šypsena ar geras jausmas, kurį patiria kiekvienas oranžinis ir kiekvienas olimpiadininkas, grįžęs namo po olimpiados.

LGMOA yra viena didelė darni ir draugiška šeima, kuri svarbią vietą oranžinio širdyje užims visą gyvenimą.")
Article.create(issue: issueBo1, title: "LitBO instrukcijos:",
  content: "Sveiki įžengę į gyvąjį laboratorijos pasaulį. Turbūt nekantraujate įlįsti į mokslininkų kailį ir padirbėti laboratorijoje. Tačiau čia dirbdami turite laikytis tam tikrų taisyklių:

* Laboratorijoje nevalgykite ir neragaukite medžiagų, su kuriomis dirbate. Jos tikrai ne tam skirtos.
* Atidžiai perskaitykite užduotį, joje viskas bus paaiškinta. Įsitikinkite, kad perskaitėte ir atlikote visą užduotį. Juk nesinori prarasti taškų už užduotis, kurios nebuvo pastebėtos?
* Būkite sąžiningi. Nesinaudokite mobiliaisiais telefonais ir nežiūrėkite, ką rašo draugai. Gyvūnėliai puikiai užuodžia sukčiaujantį olimpiados dalyvį ir supyksta.
* Pasiskirstykite laiką: jei kažko nežinote, praleiskite. Tačiau nepersistenkite skubėdami. Kaip sakoma, neskubėk ir būsi pirmas.
* Išmetėte iš rankų indą ir jis sudužo? Vieta kamputyje po stalu jam tikrai nėra geriausia vieta.
* Praneškite apie nutikimą.
* Atsipalaiduokite. Nusišypsokite ir palinkėkite sėkmės šalia esančiam draugui. Prisiminkite, kad laboratoriniai darbai – smagi olimpiados dalis, kurios tikrai nereikia baimintis.")

issueBo2 = Issue.create(title: "Numeris yra du", magazine: magazineBo)

Article.create(issue: issueBo2, title: "Redakcijos sveikinimo žodis",
  content: "„Vėl saulelė atkeldama žadino rytą ir biologijos olimpiadininką praktinių užduočių daryti kvietė“

Gerą rytą, olimpiadininke! Tikimės, kad gerai išsimiegojai ir esi pasiruošęs sutikti naują dieną energingas ir kupinas ryto džiaugsmo (gal miško ekosistemos atstovai tau padės!). Truputis palinkėjimų šiai dienai: visų pirma, skanių ir maistingų pusryčių – pasisemk daug energijos, nes šiandien jos tikrai prireiks. Praktikai linkime: tvirtų rankų skrodžiant, aštraus proto nustatant, pastabumo mikroskopuojant. Pasibaigus visoms užduotims, tavo likimas liks komisijos rankose, o oranžiniai išbandys tavo jėgas per StrateGO. Soti vakarienė – kaip tik tai, ko reikia pasiruošti likusiam vakarui. Jau vien savo teisių gynimas per apeliacijas kainuos daug jėgų, ką jau kalbėti apie aktų salės grindų drebinimą ir lubų išnešimą šokių vakaro metu. O tų, kurie norės sužinoti savo galimybių ribas, lauksime stalo žaidimų naktyje, kur visą naktį nesiliaus juokas, figūrų stumdymas ir bandymai nenulūžti. Taigi geros ir įsimintinos antros olimpiados dienos!")
Article.create(issue: issueBo2, title: "UsuO – Universitetas su Oranžiniu", content: lorem)
Article.create(issue: issueBo2, title: "Kai protai sukyla į kovą...", content: lorem)
Article.create(issue: issueBo2, title: "Studentai moksleiviams, praktika universitete", content: lorem)
Article.create(issue: issueBo2, title: "Oranžinis asmenybės testas", content: lorem)
Article.create(issue: issueBo2, title: "Alkis ryja ne pilvą, o smegenis? Pristatome \"Mokslo sriubą\"!", content: lorem)
Article.create(issue: issueBo2, title: "Naudingos nuorodos", content: lorem)
Article.create(issue: issueBo2, title: "Remėjai", content: lorem)

issueBo3 = Issue.create(title: "Numeris yra trys", magazine: magazineBo)

Article.create(issue: issueBo3, title: "Sveiki!", content: lorem)
Article.create(issue: issueBo3, title: "Užduočių grybukai:", content: lorem)
Article.create(issue: issueBo3, title: "StrateGO - nuotykiai filmų šalyje tęsiasi", content: lorem)
Article.create(issue: issueBo3, title: "Tautinių šokių vakaras", content: lorem)
Article.create(issue: issueBo3, title: "IBO 2014", content: lorem)
Article.create(issue: issueBo3, title: "Studentai moksleiviams: studijos Edinburge", content: lorem)
Article.create(issue: issueBo3, title: "Oranžinių linkėjimai:", content: lorem)
Article.create(issue: issueBo3, title: "Remėjai:", content: lorem)

magazineCho = Magazine.create(title: "PliumBum", season: season2016)

issueCho1 = Issue.create(title: "1 Numeris", magazine: magazineCho)

Article.create(issue: issueCho1, title: "Sveikas atvykęs į LitCho 53!", content: lorem)
Article.create(issue: issueCho1, title: "Olimpiados programa", content: lorem)
Article.create(issue: issueCho1, title: "Komisijos pirmininkų sveikinimo žodis", content: lorem)
Article.create(issue: issueCho1, title: "Vertinimo komisija:", content: lorem)
Article.create(issue: issueCho1, title: "Olimpiados dalyvių sąrašas", content: lorem)
Article.create(issue: issueCho1, title: "Laboratorija", content: lorem)
Article.create(issue: issueCho1, title: "LGMOA šeima: ką mes veikiame?", content: lorem)
Article.create(issue: issueCho1, title: "Olimpiados Pliumboskopai", content: lorem)
Article.create(issue: issueCho1, title: "Alonžo kampelis", content: lorem)

issueCho2 = Issue.create(title: "2 Numeris", magazine: magazineCho)

Article.create(issue: issueCho2, title: "Išaušo jau antroji olimpiados diena!", content: lorem)
Article.create(issue: issueCho2, title: "SUKRYŽIUOK RAIDES!", content: lorem)
Article.create(issue: issueCho2, title: "Pasiruošt..... Olimpiada prasideda.", content: lorem)
Article.create(issue: issueCho2, title: "Olimpiados atidarymas", content: lorem)
Article.create(issue: issueCho2, title: "Praktinės užduotys", content: lorem)
Article.create(issue: issueCho2, title: "Protmušis", content: lorem)
Article.create(issue: issueCho2, title: "UsuO – Universitetas su Oranžiniu", content: lorem)
Article.create(issue: issueCho2, title: "Neakivaizdinė jaunųjų chemikų mokykla „Pažinimas“", content: lorem)
Article.create(issue: issueCho2, title: "Studijos Kembridže", content: lorem)
Article.create(issue: issueCho2, title: "Skelbimai", content: lorem)
Article.create(issue: issueCho2, title: "Nobelio premija", content: lorem)

issueCho3 = Issue.create(title: "3 Numeris", magazine: magazineCho)

Article.create(issue: issueCho3, title: "Redakcijos žodis", content: lorem)
Article.create(issue: issueCho3, title: "Vėliavos pagrobimas", content: lorem)
Article.create(issue: issueCho3, title: "Šokių vakaras", content: lorem)
Article.create(issue: issueCho3, title: "Studentai moksleiviams: darbas laboratorijoje", content: lorem)
Article.create(issue: issueCho3, title: "Tarptautinė chemijos olimpiada", content: lorem)
Article.create(issue: issueCho3, title: "Matas Grigaliūnas", content: lorem)
Article.create(issue: issueCho3, title: "BCho", content: lorem)
Article.create(issue: issueCho3, title: "Oranžinių palinkėjimai", content: lorem)

magazineFo = Magazine.create(title: "Popietė su Šriodingeriu", season: season2016)

issueFo1 = Issue.create(title: "1 Nr.", magazine: magazineFo)

for i in (1..10)
  title = RandomWord.nouns.next.capitalize + " is not what you think it is"
  Article.create(title: title, content: lorem, issue: issueFo1)
end

issueFo2 = Issue.create(title: "2 Nr.", magazine: magazineFo)

for i in (1..10)
  title = RandomWord.nouns.next.capitalize + " is not what you think it is"
  Article.create(title: title, content: lorem, issue: issueFo2)
end

issueFo3 = Issue.create(title: "3 Nr.", magazine: magazineFo)

for i in (1..10)
  title = RandomWord.nouns.next.capitalize + " is not what you think it is"
  Article.create(title: title, content: lorem, issue: issueFo3)
end
