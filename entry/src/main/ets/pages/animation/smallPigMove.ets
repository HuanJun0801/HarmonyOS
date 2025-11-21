import { display } from '@kit.ArkUI';

@Entry
@Component
struct smallPigMove {
  @State translateOpt:TranslateOptions = {
    x:0,
    y:60
  }

  build() {
    Column() {
      Row() {
        Image($rawfile("animation/smallPig.svg"))
          .width(50)
          .position(this.translateOpt)
          .animation({
            duration: 3000,
            iterations: 1,
            curve: Curve.Linear,
            playMode:PlayMode.Alternate,
            onFinish:()=>{
              this.translateOpt.x = 0
            },
          })
      }
      .width(360)
      .height(100)
      .backgroundColor(Color.Gray)
    }
    .width("100%")
    .height(100)
    .alignItems(HorizontalAlign.Start)
    .onClick(()=>{
      this.translateOpt.x = 320
      // this.translateOpt.x = 0
    })
  }
}