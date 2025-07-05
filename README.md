# Scenarioshelf

遊んだTRPGシナリオを記録・保存するモバイルサービス

## Get Started

1. VSCode開発環境をインストール  
※ `launch.json`や`settings.json`を用いて環境を整えているためVSCodeでの開発推奨
1. [Flutterの動作環境をFVMを用いて構築](https://fvm.app/documentation/getting-started/installation)する
1. リポジトリルートでFVM初期化（インストールするか効かれたらYes）  
```bash
fvm use
```

## 開発コマンド
### Flutter

build_runnerで自動生成ファイルを生成  
単発実行
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```
監視実行
```bash
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

OSSライセンスファイルの生成
```bash
flutter pub run flutter_oss_licenses:generate.dart -o lib/constants/oss_licenses.dart
```

import文の自動整形
```bash
flutter pub run import_sorter:main
```

アプリアイコンの設定
```bash
flutter pub run flutter_launcher_icons:main
```

### Supabase

コマンドの導入 : [公式ドキュメント](https://supabase.com/docs/guides/cli/getting-started)


ローカル開発環境の立ち上げ
```bash
supabase start
```

ローカル開発環境の停止
```bash
supabase stop
```

ローカルデータのdump
```
supabase db dump --local --data-only -f supabase/seed.sql
```

### その他

Firebaseエミュレータの起動  
変更ファイルのエクスポートなし
```bash
cd firebase_emulator
firebase emulators:start --import=./fixtures
```
変更ファイルのエクスポートあり
```bash
cd firebase_emulator
firebase emulators:start --import=./fixtures --export-on-exit
```

## 環境

- 基本的にバックエンドはFirebaseに丸投げ
- コーディング規約（Linter）は [Very Good Analysis](https://pub.dev/packages/very_good_analysis) をカスタム
- ライブラリのバージョン管理は [Renovate](https://docs.renovatebot.com/) を利用
- CI/CDはGitHub Actions

## ライブラリ

| トピック | ライブラリ |
| --- | --- |
| 状態管理 | Riverpod + Hooks + Freezed |
| 遷移管理 | GoRouter |
