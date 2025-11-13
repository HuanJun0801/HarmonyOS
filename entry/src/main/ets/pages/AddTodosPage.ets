interface TodosItem{
  value:string,
  completed:boolean
}
@Entry
@Component
struct AddTodosComponent {
  //控制待办弹窗的显隐
  @State isDialogShow: boolean = false
  //记录待办弹窗选择的值
  @State selectedValue: string = '运动';
  //记录选中的下标值
  @State selectedIndex:number = 0
  //记录添加的弹窗的总数
  @State addTodosList: TodosItem[] = []
  //初始化数据
  private options: string[] = ['运动', '旅游', '听音乐', '唱歌', '读书'];

  build() {
    Column() {
      Row() {
        Text("待办")
          .fontSize(20)
        Image($rawfile("addTodosPage/add.svg"))
          .width(25)
          .onClick(() => {
            //控制弹窗的显隐
            this.isDialogShow = true
          })
      }
      .width("100%")
      .height("10%")
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)

      Column() {
        Row() {
          Text("未完成")
            .fontSize(20)
        }
        .width("100%")
        .justifyContent(FlexAlign.Start)

        //这里存放添加的待办事项
        Scroll() {
          Column(){
            ForEach(this.addTodosList,(item:TodosItem,index?: number)=>{
              Row() {
                Row() {
                  Checkbox()
                    .select(item.completed)
                    .onChange((value: boolean) => {
                      // 使用数组拷贝和修改
                      let newList: TodosItem[] = [];
                      for (let i = 0; i < this.addTodosList.length; i++) {
                        if (i === index) {
                          newList.push({ value: this.addTodosList[i].value, completed: value });
                        } else {
                          newList.push(this.addTodosList[i]);
                        }
                      }
                      this.addTodosList = newList;
                    })
                  Text(item.value)
                    .fontSize(18)
                    .decoration({
                      type: item.completed ? TextDecorationType.LineThrough : TextDecorationType.None
                    })
                }
                Text("编辑")
                  .fontSize(15)
                  .fontColor(Color.Gray)
              }
              .width("100%")
              .height("12%")
              .backgroundColor(Color.White)
              .borderRadius(10)
              .justifyContent(FlexAlign.SpaceBetween)
              .padding("5%")
              .margin({ top: "5%" })
            })
          }
        }
      }
      .width("100%")
      .padding(20)
      .layoutWeight(1)
      .backgroundColor("#F1F3F5")

      //添加代办弹窗
      if (this.isDialogShow) {
        this.addTodosDialog()
      }
    }
  }

  //待办弹窗
  @Builder
  addTodosDialog() {
    Column() {
      Column() {
        // TextPicker区域
        Stack() {
          TextPicker({
            range: this.options,
            selected: this.selectedIndex  // 使用记录的索引
          })
            .onChange((value: string | string[], index: number | number[]) => {
              if (typeof index === 'number') {
                this.selectedIndex = index;
                this.selectedValue = Array.isArray(value) ? value[0] : value;
              } else {
                this.selectedIndex = index[0];
                this.selectedValue = value[0];
              }
              console.log("选中的值:" + this.selectedValue + ", 索引:" + this.selectedIndex)
            })
            .width('100%')
            .height(200)
        }
        .width('100%')
        .height(200)
        .margin({ bottom: 10 })

        // 按钮区域
        Row() {
          Text("取消")
            .fontSize(16)
            .fontColor('#666666')
            .textAlign(TextAlign.Center)
            .width('50%')
            .height(50)
            .onClick(() => {
              this.isDialogShow = false;
            })

          Text("确定")
            .fontSize(16)
            .fontColor('#007DFF')
            .textAlign(TextAlign.Center)
            .width('50%')
            .height(50)
            .onClick(() => {
              console.log('选中的值:', this.selectedValue);
              this.addTodosList.push({
                value: this.selectedValue,
                completed: false
              })
              this.isDialogShow = false;
            })
        }
        .width('100%')
        .border({ width: { top: 1 }, color: '#F0F0F0' })
      }
      .width('90%')
      .backgroundColor(Color.White)
      .borderRadius(20)
      .margin({bottom:20})
    }
    .width('100%')
    .height("90%")
    .justifyContent(FlexAlign.End)
    .backgroundColor("#D1D3D4")
  }
}