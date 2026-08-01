# YenküpGodot

Benim yaptığım ilk video oyunum (ilk oyunumun yeniden yazılmış hali.)

If you want to see enligh version scroll down to README-ENGLISH section.

## Oyun ile alakalı

Bu oyunda sen şirin bir küpsün ve amacın pideleri yiyerek en yüksek skor'a ulaşmak. Daha fazlası için oyundaki öğreticiye tıklayın

## Yayınlamalar

Codeberg'e yayınlamamayı planlıyom (burda sadece kaynak kodu olacaktır). Son sürüm yayınlamar itch.io'da eski yayınlamalar ise archive.org'da yayınlıdır. Kod artık codeberg'de dağıtılacaktır.

Itch.io linki: [https://winfilmiyapan103.itch.io/yenkup](https://winfilmiyapan103.itch.io/yenkup)

## Gerekenler

Redot 26.1 LTS Android Platorm ve Build tools ve OpenJDK (Android için)

## Android Derlemesi

Android için uygulamayı derlemek için şu komutları girmeniz gerek

./zipalign -P 16 -f -v 4 Yenküp.Apk 2Yenküp.Apk ./apksigner sign -ks Yenküp.keystore 2Yenküp.apk "Ad OSVidYapan şifre 111111"

## Lisans

LICENSE klasörünü görün.

# README-ENGLISH

My first video game (the rewritten version of my first game.)

## About

In this game, you're a cute cube, and your goal is to get to the highest score by eating the pita. Click on the tutorial in the game for more

## Publishing

I don't plan publish to Codeberg (there will be only the source code here).
Releases are released on Itch.io and the old releases are released on archive.org. The code will now be distributed in codeberg.

Itch.io link: https://winfilmiyapan103.itch.io/yenkup

## What's needed

Redot 26.1 LTS Android Platorm and Build tools and OpenJDK (for Android)

## Android Compilation

To compile the app for Android, you need to enter these commands

./zipalign -P 16 -f -v 4 Yenküp.Apk 2Yenküp.Apk
./apksigner sign -ks Yenküp.keystore 2Yenk cubic.apk 
"Name: OSVidan password: 111111"

## License

See the LICENSE folder.