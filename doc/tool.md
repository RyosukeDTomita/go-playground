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

.goファイルでimportしている外部ライブラリがあれば自動でgo.sumに追加してくれる

---

## go install

公開されているバイナリをinstallできる

```shell
go install github.com/rakyll/hey@latest
```

> [!NOTE]
> `npm install`的なコマンドはなく，依存ライブラリは`go build`，`go run`実行時に自動インストールされる。開発環境でのみ使う`goimports`などはgo.modやgo.sumの管理対象ではないので，Dockerfileなどでは個別に`go install`する処理を書くことになりそう。

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

---

## linter

### staticcheck

```shelll
# install
go install golang.org/x/tools/cmd/goimports@latest
```

```shell
staticcheck
```

### go vet

使われない変数などを発見してくれる

### golangci-lint

複数のlinterを同時に実行できる。

---

