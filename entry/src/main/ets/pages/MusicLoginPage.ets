@Entry
@Component
struct MusicLoginPage {
  build() {
    Column(){
      Image($r("app.media.musicPageLogo"))
        .width(113)
        .height(113)
        .margin({
          top:100,
          right:100,
          bottom:60,
          left:100
        })
      TextInput({
        placeholder:"输入手机号/邮箱/用户名"
      })
        .margin({
          top:0,
          bottom:10,
        })
        .height(40)
        .placeholderColor("#AAC7CB")
        .fontColor("#AAC7CB")
        .caretColor("#AAC7CB")
        .backgroundColor(Color.Transparent)
        .borderRadius(0)
        .border({
          width: {
            top: 0,
            right: 0,
            bottom: 1,
            left: 0
          },
          color: {
            bottom: "#AAC7CB"  // 底部边框颜色
          }
        })
      TextInput({
        placeholder:"输入密码"
      })
        .margin({
          top:0,
          bottom:10,
        })
        .height(40)
        .placeholderColor("#AAC7CB")
        .fontColor("#AAC7CB")
        .caretColor("#AAC7CB")
        .backgroundColor(Color.Transparent)
        .borderRadius(0)
        .border({
          width: {
            top: 0,
            right: 0,
            bottom: 1,
            left: 0
          },
          color: {
            bottom: "#AAC7CB"  // 底部边框颜色
          }
        })
      Button(){
        Text("登录")
      }
      .width("100%")
      .height(40)
      .margin({
        top:30,
        bottom:20,
      })
      .border({
        width:2,
        color:"#AAC7CB"
      })
      .borderRadius(10)
      .backgroundColor(Color.Transparent)
      .fontColor(Color.White)
      Row(){
        Text("点击注册")
          .fontColor("#AAC7CB")
        Text("忘记密码")
          .fontColor("#AAC7CB")
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)

      Row(){
        Divider()
          .color("#AAC7CB")
          .strokeWidth(1)
          .layoutWeight(1)
        Text("其他登录方式")
          .margin({
            right:15,
            left:15
          })
          .fontSize(12)
          .fontColor("#AAC7CB")
        Divider()
          .color("#AAC7CB")
          .strokeWidth(1)
          .layoutWeight(1)
      }
      .width("100%")
      .margin({
        top:80
      })
      Row(){
        Image($r("app.media.qq"))
          .width(45)
          .height(45)
        Image($r("app.media.wx"))
          .width(45)
          .height(45)
        Image($r("app.media.wb"))
          .width(45)
          .height(45)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({
        top:20
      })
    }
    .width("100%")
    .height("100%")
    .padding({
      right:40,
      left:40
    })
    .backgroundImage($r("app.media.musicPageBg"))
  }
}