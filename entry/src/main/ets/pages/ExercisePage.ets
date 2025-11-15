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
        //下面的视频播放区
        Column(){
          //视频区
          //视频区
          Row(){
            Stack({ alignContent: Alignment.Center }) {
              // 视频背景/封面
              Image($rawfile("ExercisePage/sea.png"))
                .width("100%")
                .height("100%")
                .objectFit(ImageFit.Cover)
                .borderRadius({topLeft:15,topRight:15})

              // 播放按钮
              Column() {
                Image($rawfile("ExercisePage/playCircle.svg"))
                  .width(30)
                  .height(30)
              }
              .width("100%")
              .height("100%")
              .justifyContent(FlexAlign.Center)
              .alignItems(HorizontalAlign.Center)

              Column() {
                // 顶部文字
                Row() {
                  Text(`“力量训练入门 - 每日10分钟”`)
                    .fontSize(15)
                    .fontWeight(FontWeight.Bolder)
                    .fontColor(Color.White)
                }
                .width("100%")
                .justifyContent(FlexAlign.Start)
                .padding({ left: 15, top: 15 })

                // 底部区域
                Row() {
                  Text("543万人练过")
                    .fontSize(12)
                    .fontWeight(FontWeight.Bolder)
                    .fontColor(Color.White)
                }
                .width("100%")
                .justifyContent(FlexAlign.Start)
                .padding({left:20,right:20,top:10,bottom:10})
              }
              .width("100%")
              .height("100%")
              .justifyContent(FlexAlign.SpaceBetween)
              //推荐标签
              Row() {
                Text("推荐")
                  .fontSize(11)
                  .fontWeight(FontWeight.Bold)
                  .fontColor(Color.White)
                  .backgroundColor("#A16222")
                  .padding({ left: 8, right: 8, top: 6, bottom: 6 })
              }
              .position({ x: '84%', y: 0 }) //
            }
            .width("100%")
            .height("100%")
          }
          .width("100%")
          .height("70%")
          .backgroundColor(Color.Black)
          .borderRadius({topLeft:15,topRight:15})
          //描述区
          Row(){
            Column() {
              Row() {
                Text("力量 · 入门训练")
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
              }
              .width("50%")
              .height(0)
              .layoutWeight(1)
              Blank()
                .height(10)
              Row() {
                Text("09:53")
                  .fontSize(13)
                  .fontColor(Color.Gray)
                  .textAlign(TextAlign.Start)
              }
              .width("50%")
              .height(0)
              .layoutWeight(1)
            }
            .height("100%")
            .justifyContent(FlexAlign.SpaceBetween)
            Button("开始训练")
              .width(80)
              .height(30)
              .fontSize(12)
              .fontWeight(FontWeight.Bolder)
              .backgroundColor("#26C788")
          }
          .width("100%")
          .height(0)
          .layoutWeight(1)
          .padding({left:20,right:20,top:10,bottom:10})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width("100%")
        .height(0)
        .layoutWeight(1)
        .borderRadius(15)
        .backgroundColor("#EFEFEF")
        .justifyContent(FlexAlign.Start)
      }
      .width("100%")
      .height(300)
      .padding(20)

      //下面的tab栏
      Tabs({ barPosition: BarPosition.End }) {
        CustomTabBar()
      }
      .width("100%")
      .height(0)
      .layoutWeight(1)
      .backgroundColor(Color.White)
      .barMode(BarMode.Fixed)
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

interface TabItem {
  icon: Resource;
  text: string;
}

@Component
struct CustomTabBar {
  @State currentIndex: number = 0

  // 直接使用 TabItem[] 类型，不需要 as
  private tabItems: TabItem[] = [
    { icon: $rawfile("ExercisePage/index.svg"), text: '首页' },
    { icon: $rawfile("ExercisePage/running.svg"), text: '运动' },
    { icon: $rawfile("ExercisePage/find.svg"), text: '发现' },
    { icon: $rawfile("ExercisePage/shopping.svg"), text: '商城' },
    { icon: $rawfile("ExercisePage/my.svg"), text: '我' }
  ]

  build() {
    Row() {
      ForEach(this.tabItems, (item: TabItem, index: number) => {
        Column() {
          // 图标
          Image(item.icon)
            .width(24)
            .height(24)
            .fillColor(this.currentIndex === index ? '#60D6DB' : '#7F7F7F')

          // 文字
          Text(item.text)
            .fontSize(12)
            .fontColor(this.currentIndex === index ? '#60D6DB' : '#7F7F7F')
            .fontWeight(this.currentIndex === index ? FontWeight.Bold : FontWeight.Normal)
            .margin({ top: 4 })
        }
        .onClick(() => {
          this.currentIndex = index
        })
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
        .padding(8)
      })
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.White)
  }
}