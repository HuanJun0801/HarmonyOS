import {
  PhotoPickerComponent,
  PickerController,
  PickerOptions,
  DataType,
  BaseItemInfo,
  ItemInfo,
  PhotoBrowserInfo,
  ItemType,
  ClickType,
  MaxCountType,
  PhotoBrowserRange,
  ReminderMode,
  photoAccessHelper
} from '@kit.MediaLibraryKit';

@Entry
@Component
struct CompressImagePage {
  //选择的图片的uri
  @State imageUri:string = ''
  //压缩前的大小
  @State originalSize: string = '0 KB'
  //压缩前的格式
  @State imageFormat: string = ''
  //控制是否弹出图片选择页面
  @State showPhotoPicker:boolean = true;

  // PhotoPiker组件的相关初始化
  pickerOptions: PickerOptions = new PickerOptions();
  // 组件初始化完成后，可控制组件部分行为。
  @State pickerController: PickerController = new PickerController();
  // 已选择的图片。
  @State selectUris: Array<string> = new Array<string>();
  // 目前选择的图片。
  @State currentUri: string = '';
  // 是否显示大图。
  @State isBrowserShow: boolean = false;

  build() {
    Column() {
      // 如果选择了图片则显示图片
      if (this.imageUri) {
        // 选择的图片信息
        Row() {
          Text(`压缩前: ${this.originalSize} 格式: ${this.imageFormat}`)
            .fontSize(14)
            .fontColor(Color.Black)
        }
        .width("100%")
        .justifyContent(FlexAlign.Start)

        // 图片显示区域
        Row() {
          Image(this.imageUri)
            .width("100%")
            .height("100%")
            .objectFit(ImageFit.Contain)
            .onClick(() => {
              // 点击已选图片可以重新选择
              this.showPhotoPicker = true;
            })
        }
        .width("80%")
        .height(150)
        .backgroundColor(Color.White)
        .border({ width: 1, color: Color.Gray })

      } else {
        // 没有选择图片就显示默认的布局
        Row() {
          Text("压缩前:")
            .fontSize(14)
            .fontColor(Color.Black)
        }
        .width("100%")
        .justifyContent(FlexAlign.Start)
        .margin({ bottom: 10 })

        Stack() {
          Column() {
            Image($rawfile("compressImagePage/add.svg"))
              .width(30)
              .fillColor(Color.Gray)
            Text("点击添加图片")
              .fontSize(15)
              .fontColor(Color.Gray)
          }
          .height("60%")
          .justifyContent(FlexAlign.SpaceAround)
        }
        .width("80%")
        .height(150)
        .backgroundColor(Color.White)
        .onClick(() => {
          // 点击空白区域选择图片
          this.showPhotoPicker = true;
        })
      }
    }
    .width("100%")
    .height("100%")
    .padding(25)
    .backgroundColor("#E8E8E8")
  }

}