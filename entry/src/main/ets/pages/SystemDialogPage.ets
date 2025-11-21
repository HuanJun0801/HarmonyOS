@Entry
@Component
struct SystemDialogClassPage {
  @State selectValue: string[] = [];
  @State selectIndex: number[] = [0];
  @State selectDate:Date = new Date()
  @State selectTime:Date = new Date()

  build() {
    Column(){
      Text('选择的文本内容为'+this.selectValue + '下标' + this.selectIndex)
      Button('TextPickerDialog').onClick((event: ClickEvent) => {
        //建议使用UIContext的showTextPickerDialog
        TextPickerDialog.show({
          range:[['湖南','湖北','广西'],['长沙',"武汉",'南宁']],
          alignment:DialogAlignment.Top,
          value:this.selectValue,
          selected:this.selectIndex,
          onAccept:(result)=>{
            this.selectValue = result.value as string[]
            this.selectIndex = result.index  as number[]
          }
        })
      })
      Text('选择的日期为'+this.selectDate.toLocaleDateString())
      Button('DatePickerDialog').onClick((event: ClickEvent) => {
        //建议使用UIContext的showDatePickerDialog
        DatePickerDialog.show({
          start:new Date('2020/11/1'),
          end:new Date('2025/12/1'),
          showTime:true,
          selected:this.selectDate,
          lunar:false,
          onDateAccept:(date)=>{
            this.selectDate = date
          }
        })
      })
      Text('选择的时间为'+this.selectTime.toLocaleTimeString())
      Button('TimePickerDialog').onClick((event: ClickEvent) => {
        //建议使用UIContext的showTimePickerDialog
        TimePickerDialog.show({
          start:new Date('2020/11/1'),
          end:new Date('2025/12/1'),
          useMilitaryTime:true,
          format:TimePickerFormat.HOUR_MINUTE_SECOND,
          selected:this.selectTime,
          onAccept:(result)=>{
            this.selectTime.setHours(result.hour)
            this.selectTime.setMinutes(result.minute)
            this.selectTime.setSeconds(result.second)
          }
        })
      })
      Text('选择的日期为'+this.selectDate.toLocaleDateString())
      Button('CalendarPickerDialog').onClick((event: ClickEvent) => {
        //建议使用Calendar模块
        CalendarPickerDialog.show({
          start:new Date('2020/11/1'),
          end:new Date('2025/12/1'),
          hintRadius:16,
          selected:this.selectDate,
          onAccept:(date)=>{
            this.selectDate = date
          }
        })
      })
      Button('AlertDialog').onClick((event: ClickEvent) => {
        //警告窗
        //建议是UIContext的showAlertDialog
        AlertDialog.show({
          title:"标题",
          message:'信息',
          //俩个按钮
          // primaryButton:{
          //   value:"按钮1",
          //   action:()=>{
          //     console.log('按钮1被点击了')
          //   }
          // },
          // secondaryButton:{
          //   value:"按钮2",
          //   action:()=>{
          //     console.log('按钮2被点击了')
          //   }
          // },
          alignment:DialogAlignment.Center,
          isModal:false,
          showInSubWindow:false,
          buttons:[
            {
              value:'按钮1',
              action:()=>{
                console.log('按钮1被点击了')
              }
            },
            {
              value:'按钮2',
              action:()=>{
                console.log('按钮2被点击了')
              }
            },
            {
              value:'按钮3',
              action:()=>{
                console.log('按钮3被点击了')
              }
            }
          ],
          buttonDirection:DialogButtonDirection.HORIZONTAL
        })
      })

      Button('ActionSheet').onClick((event: ClickEvent) => {
        //建议使用UIContext 的 showActionSheet
        ActionSheet.show({
          title:'标题',
          message:'内容',
          confirm:{
            value:'提示内容',
            action:()=>{
              console.log('相关动作')
            }
          },
          sheets:[
            {
              title:'标题1',
              action:()=>{
                console.log('动作1执行了')
              }
            },
            {
              title:'标题2',
              action:()=>{
                console.log('动作2执行了')
              }
            },
            {
              title:'标题3',
              action:()=>{
                console.log('动作3执行了')
              }
            }
          ]
        })
      })

    }
    .height('100%')
    .width('100%')
  }
}