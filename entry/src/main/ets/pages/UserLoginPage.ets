@Entry
@Component
struct UserLoginComponent {
  build() {
    Stack({alignContent: Alignment.BottomStart}) {
      Column() {
        //左上角更多图标
        Row() {
          Image($rawfile("userLoginPage/more.svg"))
            .width(30)
          Image($rawfile("userLoginPage/share.svg"))
            .width(30)
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)

        //Login
        Text("Login")
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)

        //用户名输入框
        TextInput({
          placeholder: "@username"
        })
          .width('90%')
          .height(45)
          .backgroundColor(Color.White)
          .opacity(0.9)
          .borderRadius(10)
          .padding({ left: 15, right: 15 })
          .placeholderColor('#999999')
          .margin({ top: 15 })
          .textAlign(TextAlign.Center)

        //密码输入框
        TextInput({
          placeholder: "password"
        })
          .width('90%')
          .height(50)
          .backgroundColor(Color.White)
          .opacity(0.9)
          .borderRadius(10)
          .padding({ left: 15, right: 15 })
          .placeholderColor('#999999')
          .margin({ top: 25, bottom: 30 })
          .textAlign(TextAlign.Center)

        //登录按钮
        Button("GO!")
          .borderRadius(10)
          .borderWidth(1.4)
          .borderColor(Color.White)
          .backgroundColor(Color.Transparent)
          .fontSize(25)
          .width("55%")
          .height(45)
      }
      .padding(30)
      .width("100%")
      .height("100%")
      .backgroundImage($rawfile('userLoginPage/Bg.png'))
      .backgroundImageSize(ImageSize.Cover)

      //下面选择登录方式的区域
      Column() {
        //Facebook登录按钮
        Row() {
          Image($rawfile("userLoginPage/facebook.svg"))
            .width(30)
            .height(30)
            .margin({ left: "10%", right: "15%" })

          Text("Login with Facebook")
            .fontColor(Color.White)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
        }
        .width("90%")
        .height(50)
        .borderRadius(10)
        .backgroundColor("#2A61A4")
        .justifyContent(FlexAlign.Start)
        .margin({ top: 50, bottom: 30 })

        //推特登录按钮
        Row() {
          Image($rawfile("userLoginPage/twitter.svg"))
            .width(30)
            .height(30)
            .margin({ left: "10%", right: "15%" })

          Text("Login with Twitter")
            .fontColor(Color.White)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
        }
        .width("90%")
        .height(50)
        .borderRadius(10)
        .backgroundImage($rawfile("userLoginPage/more.svg"))
        .backgroundColor("#2FA3E0")
        .margin({ bottom: 30 })

        Text("Create an account")
          .fontColor(Color.Gray)
          .margin({ bottom: "10%" })
        Row() {
          //关于页
          Text("About ")
            .fontSize(14)
          //中间分隔符
          Text(" | ")
            .fontSize(14)
          //咨询页面
          Text(" Contact")
            .fontSize(14)
        }
        .width("100%")
        .justifyContent(FlexAlign.Center)
      }
      .width("100%")
      .height("45%")
      .backgroundColor(Color.White)
      .zIndex(1)
      .padding(30)

      //中间的箭头
      Row() {
        Image($rawfile("userLoginPage/arrow.svg"))
          .width(40)
          .height(40)
          .objectFit(ImageFit.Contain)
      }
      .width(60)
      .height(60)
      .borderRadius(30)
      .borderWidth(1)
      .borderColor(Color.White)
      .zIndex(2)
      .backgroundColor(Color.White)
      .shadow({
        radius: 8,
        color: Color.Gray,
        offsetX: 0,
        offsetY: 2
      })
      .justifyContent(FlexAlign.Center)
      .alignItems(VerticalAlign.Center)
      .margin({ top: 10, bottom: 10 })
      .position({
        x: '50%',
        y: '55%'
      })
      .translate({
        x: -30,
        y: -35
      })
    }
  }
}