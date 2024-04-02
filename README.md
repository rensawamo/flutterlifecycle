# lifecycle

![image](https://github.com/rensawamo/flutterlifecycle/assets/106803080/3439cf6e-8c23-45d9-8f9f-881d39051294)

```sh
# 初期画面構築
I/flutter (12599): call initState
I/flutter (12599): call didChangeDependencies
I/flutter (12599): call build
# +をタップしsetStateで再描画
I/flutter (12599): call setState
I/flutter (12599): call build
# 画面遷移時に画面を破棄(タップから連続して実行される)
I/flutter (13375): call deactivate
I/flutter (13375): call dispose
# main画面でVSCodeでソースコードを変更保存しホットリロードする
I/flutter (13375): call didUpdateWidget
I/flutter (13375): call build
```
