import 'dart:convert';
import 'dart:io';
import 'package:dotenv/dotenv.dart'; // Importa o dotenv para ler o .env

void main() async {
  final env = DotEnv()..load();
  fal token = env['TELEGRAM_TOKEN']in;
  print("Bot iniciado...");
  // URL da API do Telegram do professor
  final url = Uri.parse(
    "https://api.telegram.org/bot$token/getUpdates",
  );
  // Faz a requisição GET para a API
  final request = await HttpClient().getUrl(url);
  // Recebe a resposta da API
  final response = await request.close();
  final body = await response.transform(utf8.decoder).join();
  final data = jsonDecode(body);
  final ultimoUpdate = data["result"].last;
  print(ultimoUpdate);
}

