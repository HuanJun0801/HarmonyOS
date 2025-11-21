import { LevelMode, LevelOrder, PromptAction, promptAction } from '@kit.ArkUI'

@Entry
@Component
struct PromptComponent {
  toastId:number = 0
  dialogId:number = 0
  build() {
    Column() {
      Button("promptAction提示窗(showToast)").onClick(() => {
        promptAction.showToast({
          message: "提示信息",
          duration: 3000,
          bottom: 100,
          showMode: promptAction.ToastShowMode.DEFAULT,
          alignment: Alignment.Center,
          offset: {
            dx: 0,
            dy: 0
          },
          backgroundColor: Color.Pink
        })
      })
      Button("promptAction提示窗(openToast)").onClick(() => {
        promptAction.openToast({
          message: "提示信息",
          duration: 10000,
          bottom: 100,
          showMode: promptAction.ToastShowMode.DEFAULT,
          alignment: Alignment.Center,
          offset: {
            dx: 0,
            dy: 0
          },
          backgroundColor: Color.Pink
        }).then((id)=>{
            this.toastId = id
        })
      })
      Button("关闭提示窗").onClick(()=>{
          promptAction.closeToast(this.toastId)
      })
      Button("promptAction弹窗(showDialog)").onClick(()=>{
        let promptAction = new PromptAction
        promptAction.showDialog({
          title:"弹窗的标题",
          message:"相关信息",
          buttons:[{
            text:"按钮1",
            color:"#f00"
          },{
            text:"按钮2",
            color:"#00f"
          }], //按钮组
          alignment:DialogAlignment.Center, //位置
          isModal: true, //是否为模态弹窗
          showInSubWindow:false,//是否显示到子窗口
          levelMode:LevelMode.OVERLAY, //设置弹窗显示层级。
          levelOrder:LevelOrder.clamp(1), //显示顺序
          levelUniqueId: 1,//子节点id
        }).then((response)=>{
          //当前点击按钮下标 response.index 为按钮组的点击的按钮下标
          console.log('弹窗成功'+response.index)
        })
      })
      Button('显示菜单弹窗 showActionMenu').onClick((event: ClickEvent) => {
        promptAction.showActionMenu({
          title:"菜单标题",
          //最多6个 最少一个
          buttons:[{
            text:"按钮1",
            color:"#000"
          },{
            text:"按钮2",
            color:"#000"
          },{
            text:"按钮3",
            color:"#000"
          },{
            text:"按钮4",
            color:"#000"
          }],
          showInSubWindow:false,
          isModal:true
        }).then((response)=>{
          console.log('点击的按钮下标为'+response.index)
        },(err:Error)=>{
          //点击取消进入catch
          console.log(err.message)
        })
      })
      Button('打开自定义弹窗').onClick((event: ClickEvent) => {
        let promptAction = new PromptAction()
        promptAction.openCustomDialog({
          builder:()=>{
            this.customDialog()
          },
          width:300,
          height:300,
          alignment:DialogAlignment.Center,
          // maskColor: "#80412020",
          isModal:true,
          cornerRadius:10,
          backgroundColor:Color.Grey
        }).then((id)=>{
          this.dialogId = id
        })
      })
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.SpaceEvenly)
  }

  @Builder
  customDialog(){
    Column(){
      Text('自定义弹窗的内容')
      Button('关闭自定义弹窗').onClick((event: ClickEvent) => {
        let promptAction = new PromptAction()
        promptAction.closeCustomDialog(this.dialogId)
      })
    }
    .width('100%')
    .height("100%")
    .padding(20)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}