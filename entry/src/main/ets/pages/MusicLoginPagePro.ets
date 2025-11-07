@Entry
@Component
struct MusicLoginPage {
  // 颜色常量
  private readonly PRIMARY_COLOR: string = '#AAC7CB';
  private readonly WHITE_COLOR: string = '#FFFFFF';
  private readonly TRANSPARENT_COLOR: Color = Color.Transparent;

  // 尺寸常量
  private readonly INPUT_HEIGHT: number = 40;
  private readonly BUTTON_HEIGHT: number = 40;
  private readonly LOGO_SIZE: number = 113;
  private readonly SOCIAL_ICON_SIZE: number = 45;
  private readonly HORIZONTAL_PADDING: number = 40;
  private readonly BORDER_WIDTH: number = 1;

  build() {
    Column() {
      // Logo区域
      this.BuildLogo()

      // 输入框区域
      this.BuildInputFields()

      // 登录按钮
      this.BuildLoginButton()

      // 注册和忘记密码
      this.BuildAuthLinks()

      // 分割线和其他登录方式
      this.BuildDividerWithText()

      // 社交登录图标
      this.BuildSocialLogin()
    }
    .width('100%')
    .height('100%')
    .padding({
      left: this.HORIZONTAL_PADDING,
      right: this.HORIZONTAL_PADDING
    })
    .backgroundImage($r('app.media.musicPageBg'))
    .backgroundImageSize(ImageSize.Cover)
  }

  // 构建Logo
  @Builder BuildLogo() {
    Image($r('app.media.musicPageLogo'))
      .width(this.LOGO_SIZE)
      .height(this.LOGO_SIZE)
      .margin({
        top: 100,
        bottom: 60
      })
  }

  // 构建输入框
  @Builder BuildInputFields() {
    // 用户名输入框
    TextInput({ placeholder: '输入手机号/邮箱/用户名' })
      .height(this.INPUT_HEIGHT)
      .margin({ bottom: 10 })
      .placeholderColor(this.PRIMARY_COLOR)
      .fontColor(this.PRIMARY_COLOR)
      .caretColor(this.PRIMARY_COLOR)
      .backgroundColor(this.TRANSPARENT_COLOR)
      .borderRadius(0)
      .border({
        width: {
          top: 0,
          right: 0,
          bottom: this.BORDER_WIDTH,
          left: 0
        },
        color: {
          bottom: this.PRIMARY_COLOR
        }
      })

    // 密码输入框
    TextInput({ placeholder: '输入密码' })
      .height(this.INPUT_HEIGHT)
      .margin({ bottom: 10 })
      .placeholderColor(this.PRIMARY_COLOR)
      .fontColor(this.PRIMARY_COLOR)
      .caretColor(this.PRIMARY_COLOR)
      .backgroundColor(this.TRANSPARENT_COLOR)
      .type(InputType.Password) // 设置为密码类型
      .borderRadius(0)
      .border({
        width: {
          top: 0,
          right: 0,
          bottom: this.BORDER_WIDTH,
          left: 0
        },
        color: {
          bottom: this.PRIMARY_COLOR
        }
      })
  }

  // 构建登录按钮
  @Builder BuildLoginButton() {
    Button('登录')
      .width('100%')
      .height(this.BUTTON_HEIGHT)
      .margin({
        top: 30,
        bottom: 20
      })
      .border({
        width: 2,
        color: this.PRIMARY_COLOR
      })
      .borderRadius(10)
      .backgroundColor(this.TRANSPARENT_COLOR)
      .fontColor(this.WHITE_COLOR)
      .fontSize(16)
      .fontWeight(FontWeight.Medium)
  }

  // 构建认证链接
  @Builder BuildAuthLinks() {
    Row() {
      Text('点击注册')
        .fontColor(this.PRIMARY_COLOR)
        .fontSize(14)

      Text('忘记密码')
        .fontColor(this.PRIMARY_COLOR)
        .fontSize(14)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

  // 构建分割线和文本
  @Builder BuildDividerWithText() {
    Row() {
      Divider()
        .color(this.PRIMARY_COLOR)
        .strokeWidth(this.BORDER_WIDTH)
        .layoutWeight(1)

      Text('其他登录方式')
        .margin({
          left: 15,
          right: 15
        })
        .fontSize(12)
        .fontColor(this.PRIMARY_COLOR)

      Divider()
        .color(this.PRIMARY_COLOR)
        .strokeWidth(this.BORDER_WIDTH)
        .layoutWeight(1)
    }
    .width('100%')
    .margin({ top: 80 })
  }

  // 构建社交登录
  @Builder BuildSocialLogin() {
    Row() {
      Image($r('app.media.qq'))
        .width(this.SOCIAL_ICON_SIZE)
        .height(this.SOCIAL_ICON_SIZE)

      Image($r('app.media.wx'))
        .width(this.SOCIAL_ICON_SIZE)
        .height(this.SOCIAL_ICON_SIZE)

      Image($r('app.media.wb'))
        .width(this.SOCIAL_ICON_SIZE)
        .height(this.SOCIAL_ICON_SIZE)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .margin({ top: 20 })
  }
}