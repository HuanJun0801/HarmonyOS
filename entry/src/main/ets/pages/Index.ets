import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  build() {
    Column(){
      Button("点击跳转Test页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/Test"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转MusicLoginPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/MusicLoginPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转UserLoginPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/UserLoginPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转UserProfilePage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/UserProfilePage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转CommentPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/CommentPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转ExercisePage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/ExercisePage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转AddTodosPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/AddTodosPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转CompressImagePage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/CompressImagePage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转PromptPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/PromptPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
      Button("点击跳转SystemDialogPage页面").onClick(()=>{
        this.getUIContext().getRouter().pushUrl({
          url:"pages/SystemDialogPage"
        },router.RouterMode.Standard,(err) => {
          if (err) {
            console.error(`调用pushUrl失败, 错误码是:${err.code}, 错误信息是:${err.message}`);
            return;
          }
          console.info('调用pushUrl成功');
        });
      })
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.SpaceEvenly)
  }
}