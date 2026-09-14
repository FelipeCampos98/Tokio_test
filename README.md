Tokio Test

Aplicativo responsivo desenvolvido em Flutter, com suporte para Web, Android e iOS.

## Acessar a versão Web

O projeto publicado pode ser acessado em:

**[https://tokio-test-campos.web.app](https://tokio-test-campos.web.app)**

## Pré-requisitos

- [Flutter](https://docs.flutter.dev/get-started/install) no canal `stable`;
- um navegador compatível, como Google Chrome, para executar a versão Web;
- Android Studio/Xcode e um emulador ou dispositivo, caso queira executar a versão mobile.

Confira se o ambiente está configurado corretamente:

```bash
flutter doctor
```

## Como rodar o projeto

Na raiz do repositório, instale as dependências:

```bash
flutter pub get
```

Depois, execute na plataforma desejada.

### Web

```bash
flutter run -d chrome
```

### Android ou iOS

Liste os dispositivos disponíveis:

```bash
flutter devices
```

Execute o aplicativo informando o dispositivo escolhido:

```bash
flutter run -d <id-do-dispositivo>
```

Também é possível usar `flutter run` e selecionar um dispositivo quando solicitado.

## APK

Uma versão pronta para Android está disponível no arquivo [`Tokio_test.apk`](./Tokio_test.apk).

## Testes automatizados

O projeto possui testes unitários para regras auxiliares e dados da aplicação.

Para executar:

```bash
fvm flutter test