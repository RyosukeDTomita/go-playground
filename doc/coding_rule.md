# GO言語のコーディングルール

## 概略

- ハードタブを使ってインデントする。
- 演算子の前後にスペースを入れない。
- 連続した変数定義やコメントは縦に揃える。

```go
type T struct {
  name    string // 縦に揃える。
  value   int
}
```

- [Effective GO](https://go.dev/doc/effective_go)
- [Go Code Review](https://go.dev/wiki/CodeReviewComments)

---

## module構成

[modules layout](https://go.dev/doc/modules/layout)

細かいモジュールに分けないなら直下に置く。
