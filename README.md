# rpi-pos
mini POS system in flutter for raspberry pi

forked from `provider_shopper` sample in https://github.com/flutter/samples

Targeted at local-currency kiosk https://github.com/chuck-h/rpi-kiosk

Cross-compiled using `https://github.com/ardera/flutter-pi`

Using https://nats.io/ pub/sub framework for interprocess communication

## build
### dependencies
Install flutter-pi (instructions at https://github.com/ardera/flutter-pi)

Install flutterpi_tool (https://pub.dev/packages/flutterpi_tool):

`flutter pub global activate flutterpi_tool `
### build
```
flutter pub get
flutterpi_tool build --release
```
### install
`scp -r ./build/flutter_assets/ pie@192.168.1.165:/home/pie/rpi-kiosk/pos`

----
Cardboard POS mockup
![image](https://github.com/chuck-h/rpi-pos/assets/2141014/10c83b55-66a2-4a24-9cdf-66f71bba4519)

