@Entry
@Component
struct UserProfileComponent {
  @State currentIndex: number = 0;
  build() {
      Column() {
        //个人中心
        Row() {
          Text("个人中心")
            .fontColor(Color.White)
            .fontSize(20)
            .fontWeight(FontWeight.Medium)
            .textAlign(TextAlign.Center)
        }
        .width("100%")
        .justifyContent(FlexAlign.Center)

        //用户信息区域
        this.userMessage()
        //用户收藏夹区域
        this.userLikes()
        //用户订单区域
        this.userOrders()
        //用户其他操作区域
        this.userOther()
        //广告区域
        this.userAdvertisement()
      }
      .width("100%")
      .height("100%")
      .padding(15)
      .backgroundImage($rawfile("userProfilePage/Bg.png"))
      .backgroundImageSize(ImageSize.Cover)
  }

  //用户信息区域
  @Builder userMessage(){
    Row(){
      Column(){
        //用户头像
        Image($rawfile("userProfilePage/avatar.png"))
          .width(60)
          .borderRadius(25)
          .margin({bottom:10})
        Text("JStackhouse")
        Row(){
          Column() {
            //消息按钮
            Image($rawfile("userProfilePage/message.svg"))
              .width(20)
            Text("消息")
          }
          Column() {
            //设置按钮
            Image($rawfile("userProfilePage/settings.svg"))
              .width(20)
            Text("设置")
          }
        }
        .width("65%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width("100%")
    .height(150)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .margin({top:10,bottom:15})
  }

  //用户收藏夹区域
  @Builder userLikes(){
    Row(){
      Row(){
        Column(){
          Text("140")
          Text("收藏夹")
        }
        .height(40)
        .justifyContent(FlexAlign.SpaceBetween)
        Column(){
          Text("19")
          Text("关注店铺")
        }
        .height(40)
        .justifyContent(FlexAlign.SpaceBetween)
        Column(){
          Text("118")
          Text("足迹")
        }
        .height(40)
        .justifyContent(FlexAlign.SpaceBetween)
        Column(){
          Text("4")
          Text("红包卡券")
        }
        .height(40)
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .width("100%")
    .height(80)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .margin({bottom:15})
  }

  //用户订单区域
  @Builder userOrders(){
    Row(){
      Column() {
        Row() {
          Text("我的订单")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Text("查看全部订单")
            .fontSize(15)
            .fontColor(Color.Red)
        }
        .width("100%")
        .padding(5)
        .justifyContent(FlexAlign.SpaceBetween)
        //分割线
        Divider()
          .height(2)

        //下方图片区域
        Row(){
          Column(){
            Image($rawfile("userProfilePage/wallet.svg"))
              .width(35)
            Text("待付款")
              .fontSize(12)
          }
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)
          Column(){
            Image($rawfile("userProfilePage/daishouhuo.svg"))
              .width(35)
            Text("待收货")
              .fontSize(12)
          }
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)
          Column(){
            Image($rawfile("userProfilePage/refund.svg"))
              .width(32)
            Text("退款/售后")
              .fontSize(12)
          }
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)
          Column(){
            Image($rawfile("userProfilePage/comment.svg"))
              .width(35)
            Text("待评价")
              .fontSize(12)
          }
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceAround)
        .padding(8)
      }
      .height(100)
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height(100)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .margin({bottom:20})
  }

  ////用户其他操作区域
  @Builder userOther(){
    Row(){
      Column(){
        //上面一行
        Row(){
          Column(){
            Row() {
            //图标
            Image($rawfile("userProfilePage/myFavorite.svg"))
              .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#FE0000")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的收藏")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myLove.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#4BBDFF")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的关注")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myRelease.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#FFA100")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的收藏")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myShare.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#A64CFD")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的收藏")
              .fontSize(10)
              .height(10)
          }
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceEvenly)
        .margin(10)

        //下面一行
        Row(){
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myLike.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#FF6D00")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的点赞")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myEvaluation.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#00CA08")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("我的评价")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/myPig.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#027CFC")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("关于小猪")
              .fontSize(10)
              .height(10)
          }
          Column(){
            Row() {
              //图标
              Image($rawfile("userProfilePage/contactCustomer.svg"))
                .width(28)
            }
            .width(40)
            .height(40)
            .borderRadius(25)
            .backgroundColor("#009FFF")
            .backgroundImageSize(ImageSize.Cover)
            .justifyContent(FlexAlign.Center)

            //图标文字
            Text("联系客服")
              .fontSize(10)
              .height(10)
          }
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceEvenly)
        .margin(10)
      }
      .height(150)
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height(150)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .margin({bottom:20})
  }

  //广告区域
  @Builder userAdvertisement(){
    Row(){
      Image($rawfile("userProfilePage/advertisement.png"))
        .backgroundImageSize(ImageSize.Cover)
        .borderRadius(10)
    }
    .width("100%")
    .height(160)
    .margin({bottom:10})
  }
}