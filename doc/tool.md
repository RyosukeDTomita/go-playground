# Goの開発ツール

## go run

- `go run`コマンドを使うとインタプリタのようにコンパイルせずに実行できる

```shell
go run hello.go
```

---

## go build

- 実行ファイルにコンパイルする

```shell
go build -o hello hello.go
```

---

## go mod

- モジュールを操作を行う

```shell
# モジュールを初期化
mkdir hello
cd hello
go mod init hello
```

### go mod tidy

必要なimport文を追加したり，不要なimport文を削除したり，それに対応してgo.modやgo.sumを更新する

---

### go mod download

`go mod download`で依存ライブラリのダウンロードを外だしすることでDockerのレイヤキャッシュを効率よく使える。[Go 開発者環境のコンテナー化 – パート 2](https://www.docker.com/ja-jp/blog/containerize-your-go-developer-environment-part-2/)

---

## go install

公開されているバイナリをinstallできる

```shell
go install github.com/rakyll/hey@latest
```

---

## formatter

### go fmt

Goでは文末に`;`が入るがformatterなどで挿入可能。

### goimports

formatだけでなく，import文の管理ができる。

```shell
# install
go install golang.org/x/tools/cmd/goimports@latest
```

```shell
goimports
```

---

## linter

### staticcheck

```shelll
# install
go install honnef.co/go/tools/cmd/staticcheck@latest
```

```shell
staticcheck
```

### go vet

使われない変数などを発見してくれる

### golangci-lint

複数のlinterを同時に実行できる。

---
