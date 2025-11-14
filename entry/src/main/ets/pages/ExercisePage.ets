@Entry
@Component
struct ExerciseComponent {
  //记录选中的标签索引
  @State activeIndex: number = 0
  build() {
    Column() {
      //上半部分
      Column() {
        //上方输入框
        Row() {
          Image($rawfile("ExercisePage/search.svg"))
            .width(20)
            .margin({ left: 15 })
          TextInput({ placeholder: "大家都在搜瑜伽" })
            .backgroundColor("#F4F6F5")
            .borderRadius(0)
            .layoutWeight(1)
        }
        .width("100%")
        .height(40)
        .backgroundColor("#F4F6F5")
        .margin({ left: "5%", right: "5%" })

        //tab栏
        Tabs() {
          TabContent() {
            MyComponent()
          }.tabBar(SubTabBarStyle.of('课程').indicator({ color: Color.Red }).labelStyle({ selectedColor: Color.Red }))

          TabContent() {
            MyComponent()
          }.tabBar(SubTabBarStyle.of('发现').indicator({ color: Color.Red }).labelStyle({ selectedColor: Color.Red }))

          TabContent() {
            MyComponent()
          }.tabBar(SubTabBarStyle.of('热门').indicator({ color: Color.Red }).labelStyle({ selectedColor: Color.Red }))

          TabContent() {
            MyComponent()
          }.tabBar(SubTabBarStyle.of('关注').indicator({ color: Color.Red }).labelStyle({ selectedColor: Color.Red }))

        }
        .width("100%")
        .height(260)
        .backgroundColor(Color.White)
      }
      .width("100%")
      .backgroundColor(Color.White)
      .padding(20)

      //中间分隔线
      Row(){}.width("100%").height(15).backgroundColor("#FAFAFA")

      //下半部分
      Column(){
        Row() {
          //用户头像
          Image($rawfile("ExercisePage/defaultUser.jpg"))
            .width(20)
            .borderRadius(10)
            .margin({right:5})
          Text("挂壁绝魂")
        }
        .width("100%")
        .margin({bottom:10})
        Column(){
          Row(){

          }
          .width("100%")
          .height("70%")
          .backgroundColor(Color.Black)
          .borderRadius({topLeft:15,topRight:15})
          Row(){

          }
          .width("100%")
          .height(0)
          .layoutWeight(1)
        }
        .width("100%")
        .height(0)
        .layoutWeight(1)
        .borderRadius(15)
        .backgroundColor("#EFEFEF")
        .justifyContent(FlexAlign.Start)
      }
      .width("100%")
      .height(0)
      .layoutWeight(1)
      .padding(20)

      //下面的tab栏
    }
    .width("100%")
    .height("100%")
  }
}

@Component
struct MyComponent {
  build() {
    //上半部分
    Column() {
      //上面的图标
      Row() {
        Column() {
          Row() {
            Image($rawfile("ExercisePage/fire.svg"))
              .width(20)
          }
          .width(40)
          .aspectRatio(1)
          .backgroundColor("#D18F91")
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)

          Text("减脂")
            .fontSize(12)
            .margin({ top: 10 })
        }

        Column() {
          Row() {
            Image($rawfile("ExercisePage/fight.svg"))
              .width(20)
          }
          .width(40)
          .aspectRatio(1)
          .backgroundColor("#8DAFF3")
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)

          Text("拳击")
            .fontSize(12)
            .margin({ top: 10 })
        }

        Column() {
          Row() {
            Image($rawfile("ExercisePage/Yoga.svg"))
              .width(20)
          }
          .width(40)
          .aspectRatio(1)
          .backgroundColor("#E6CA8F")
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)

          Text("瑜伽")
            .fontSize(12)
            .margin({ top: 10 })
        }

        Column() {
          Row() {
            Image($rawfile("ExercisePage/stronger.svg"))
              .width(20)
          }
          .width(40)
          .aspectRatio(1)
          .backgroundColor("#8FD1B9")
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)

          Text("力量")
            .fontSize(12)
            .margin({ top: 10 })
        }

        Column() {
          Row() {
            Image($rawfile("ExercisePage/more.svg"))
              .width(18)
          }
          .width(40)
          .aspectRatio(1)
          .backgroundColor("#7F7B85")
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)

          Text("更多")
            .fontSize(12)
            .margin({ top: 10 })
        }
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceAround)
      .margin({top:10})

      //下面的标签
      Row() {
        //私教榜和热门榜
        Column() {
          Row() {
            Text("私教榜")
              .fontSize(15)
              .fontWeight(FontWeight.Bolder)
              .fontStyle(FontStyle.Italic)
            Image($rawfile("ExercisePage/oneToOne.svg"))
              .width(30)
          }
          .width("100%")
          .height(0)
          .layoutWeight(1)
          .backgroundColor("#EAF5FC")
          .borderRadius(5)
          .padding(15)
          .justifyContent(FlexAlign.SpaceBetween)

          Blank()
            .height(10)

          Row() {
            Text("热门榜")
              .fontSize(15)
              .fontWeight(FontWeight.Bolder)
              .fontStyle(FontStyle.Italic)
            Image($rawfile("ExercisePage/hot.svg"))
              .width(30)
          }
          .width("100%")
          .height(0)
          .layoutWeight(1)
          .backgroundColor("#FDF6EB")
          .borderRadius(5)
          .padding(15)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width("60%")
        .height("100%")
        .margin({ right: 10 })

        //人气榜
        Column() {
          Text("人气榜")
            .fontSize(15)
            .fontWeight(FontWeight.Bolder)
            .fontStyle(FontStyle.Italic)
          Image($rawfile("ExercisePage/goldMedal.svg"))
            .width(30)
        }
        .width(0)
        .layoutWeight(1)
        .height("100%")
        .backgroundColor("#EDF9F5")
        .borderRadius(5)
        .justifyContent(FlexAlign.SpaceEvenly)
      }
      .width("100%")
      .height(0)
      .layoutWeight(1)
      .margin({ top: 10 })
    }
    .width('100%')
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }
}