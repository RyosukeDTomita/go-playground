# Goの文法の注意点

## 基本型(primitive type)

- 宣言されたが値が割り当てられていない変数にはゼロ値が入る。
    - 文字列型のゼロ値は""
    - bool型のゼロ値はfalse
> [!NOTE]
>> The boolean truth values are represented by the predeclared constants true and false.
> [go.dev Contents](https://go.dev/ref/spec#Constants)にあるようにbool型はGoに組み込まれた定数である。

- リテラル自体は型を持たないが，変数の宣言時に型が指定されていない場合にはデフォルトの型が存在する。[今更聞けない?型とリテラル](https://unit-code.com/golang/basic-go/type-go/type-and-literal/)
- Goの文字列型はイミュータブルなため再代入できない

---

## 変数

- 基本的に変数の宣言には`var`を使う。
- 関数内でのみ`:=`を使った省略記法がある。
  - `:=`は変数への再代入が可能。
  - `パッケージレベルの変数の宣言には`var`を使わないといけない

---

## 別ファイルのメソッドの呼び出し(仮題)

同じ`package`に含めれば特にimportとかなしで呼び出せそう
