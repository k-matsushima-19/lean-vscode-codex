# Lean + Mathlib Dev Container

VS Code Dev Containers 用の Lean + mathlib 最小テンプレート。

## 前提
ホストにVS Code + Dev Container拡張機能 + Docker (+ WSL2) が導入済みで、Codexの認証情報が`~/.codex/auth.json`に格納されている。`auth.json`が異なる場所に存在する場合は、`.devcontainer/devcontainer.json`を適宜変更。

## 使い方

1. このフォルダを VS Code で開く
2. `Dev Containers: Reopen in Container` を実行
3. 初回起動時に以下が自動実行される

```bash
lake exe cache get
lake build
```

依存関係を更新したい場合のみ、手動で以下を実行。

```bash
lake update
```

## 動作確認

コンテナ内ターミナルで以下を実行。

```bash
lake env lean Test.lean
```

エラーが出なければ成功。
