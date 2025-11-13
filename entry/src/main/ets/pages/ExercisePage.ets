@Entry
@Component
struct ExerciseComponent {
  //记录选中的标签索引
  @State activeIndex: number = 0
  build() {
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
        }.tabBar(SubTabBarStyle.of('课程').indicator({color:Color.Red}).labelStyle({selectedColor:Color.Red}))

        TabContent() {
          MyComponent()
        }.tabBar(SubTabBarStyle.of('发现').indicator({color:Color.Red}).labelStyle({selectedColor:Color.Red}))

        TabContent() {
          MyComponent()
        }.tabBar(SubTabBarStyle.of('热门').indicator({color:Color.Red}).labelStyle({selectedColor:Color.Red}))

        TabContent() {
          MyComponent()
        }.tabBar(SubTabBarStyle.of('关注').indicator({color:Color.Red}).labelStyle({selectedColor:Color.Red}))

      }
      .width("100%")
      .height(296)
      .backgroundColor(Color.Gray)
    }
    .width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(20)
  }
}

@Component
struct MyComponent {
  build() {
    Column(){
      Row(){
        Image($rawfile("ExercisePage/fire.svg"))
          .width(30)
        Image($rawfile("ExercisePage/fight.svg"))
          .width(30)
        Image($rawfile("ExercisePage/Yoga.svg"))
          .width(30)
        Image($rawfile("ExercisePage/stronger.svg"))
          .width(30)
        Image($rawfile("ExercisePage/more.svg"))
          .width(30)
      }
    }
    .width('100%')
    .height('100%')
  }
}