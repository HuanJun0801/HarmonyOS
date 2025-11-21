// 使用Environment.envProp将设备运行languageCode存入AppStorage中
Environment.envProp('languageCode', 'en');
// 从AppStorage获取单向绑定的languageCode的变量
const lang: SubscribedAbstractProperty<string> = AppStorage.prop('languageCode');

if (lang.get() === 'zh') {
  console.info('你好');
} else {
  console.info('Hello!');
}

@Entry
@Component
struct TestCase6 {
  @StorageProp("languageCode") languageCode:string = "en"
  build() {
    Text(this.languageCode)
  }
}