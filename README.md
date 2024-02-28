# Terkirim Dart

Official Dart SDK for Terkirim. Visit [Terkirim](https://terkirim.cloud) for more.

## Support

1. Email
2. Whatsapp

## How to

1. Install

    ```yaml
    dependencies:
      terkirim: ^0.0.1
    ```

2. Import

    ```dart
    import 'package:terkirim/terkirim.dart';
    ```

3. Use it

    ```dart
      import 'package:terkirim/entities/email.dart';
      import 'package:terkirim/entities/whatsapp.dart';
      import 'package:terkirim/terkirim.dart';

      void main() async {
        final client = Terkirim(apiKey: "YOUR_API_KEY");

        final resEmail = await client.email(EmailPayload(
            from: EmailFrom(
                username: "REGISTERED_ACCOUNT_FROM_TERKIRIM", name: "Alias"),
            to: [EmailAccount(email: "someone@mail.com", name: "Alias")],
            subject: "Hello World",
            body:
                "<mjml>\n\t<mj-body>\n\t\t<mj-section>\n\t\t\t<mj-column>\n\t\t\t\t<mj-divider></mj-divider>\n\t\t\t\t<mj-text font-family=\"helvetica\" font-size=\"20px\" align=\"center\">Hello, <mj-text>{{ firstName }} {{ lastName }}</mj-text></mj-text>\n\t\t\t\t<mj-text align=\"center\">Thank you for joining Terkirim</mj-text>\n\t\t\t\t<mj-divider></mj-divider>\n\t\t\t</mj-column>\n\t\t</mj-section>\n\t</mj-body>\n</mjml>\n",
            variables: {
              "firstName": "Captain",
              "lastName": "Tsubasa",
            },
            category: "Terkirim"));

        print(resEmail.toMap());

        final resWa = await client.whatsapp(WhatsappPayload(
            from: "REGISTERED_WHATSAPP_NUMBER_FROM_TERKIRIM",
            to: "PHONE_NUMBER_TO_SEND_WHATSAPP_WITH_COUNTRY_CODE",
            body: "Hello World"));

        print(resWa.toMap());
      }
    ```
