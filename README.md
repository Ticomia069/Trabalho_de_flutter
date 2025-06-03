# Trabalho_de_flutter

# Habit Tracker App

Um aplicativo Flutter para rastrear hábitos diários, com armazenamento local em SQLite, estatísticas gráficas e frases motivacionais de uma API externa.

## Recursos

- Cadastro e listagem de hábitos
- Marcação de hábitos concluídos
- Estatísticas semanais e mensais com gráficos
- Frases motivacionais diárias (via [Quotable API](https://api.quotable.io))
- Armazenamento local com SQFlite
- Interface organizada em múltiplas telas

## Estrutura do Projeto

```
lib/
├── main.dart
├── models/
│   └── habit.dart
├── services/
│   ├── database_service.dart
│   └── quote_service.dart
├── widgets/
│   └── habit_tile.dart
├── screens/
│   ├── home_screen.dart
│   ├── add_habit_screen.dart
│   ├── habit_list_screen.dart
│   ├── habit_detail_screen.dart
│   ├── statistics_screen.dart
│   └── settings_screen.dart
```

## Dependências

Adicione estas dependências ao seu `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  sqflite: ^2.3.0
  path: ^1.8.3
  http: ^0.14.0
  charts_flutter: ^0.12.0
```

## Como rodar

```bash
flutter pub get
flutter run
```

## Licença

Este projeto está sob a licença MIT.
