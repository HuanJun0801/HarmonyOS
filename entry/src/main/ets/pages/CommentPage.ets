interface ReplyItemType {
  id: number
  avatar: ResourceStr
  author: string
  content: string
  time: string
  area: string
  likeNum: number
  likeFlag?: boolean
}
@Entry
@Component
struct CommentPage {
  //初始数据
  private replyList: ReplyItemType[]= [
    {
      id: 1,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      author: "偏执狂-妄想家",
      content: "更何况还分到一个摩洛哥[惊喜]",
      time: "11-30",
      area: "海南",
      likeNum: 34,
      likeFlag: false
    },
    {
      id: 2,
      avatar: "https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c",
      author: "William",
      content: "当年希腊可是把1：0发挥到极致了",
      time: "11-29",
      area: "北京",
      likeNum: 58,
      likeFlag: false
    },
    {
      id: 3,
      avatar: "https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63",
      author: "Andy Garcia",
      content: "欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队",
      time: "11-28",
      area: "上海",
      likeNum: 10,
      likeFlag: false
    },
    {
      id: 4,
      avatar: "https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63",
      author: "正宗好鱼头",
      content: "确实眼红啊，亚洲就没这种球队，让中国队刷",
      time: "11-27",
      area: "香港",
      likeNum: 139,
      likeFlag: false
    },
    {
      id: 5,
      avatar: "https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63",
      author: "柱子哥",
      content: "我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率",
      time: "11-27",
      area: "旧金山",
      likeNum: 29,
      likeFlag: false
    },
    {
      id: 6,
      avatar: "https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63",
      author: "飞轩逸",
      content: "禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲",
      time: "11-26",
      area: "里约",
      likeNum: 100,
      likeFlag: false
    }
  ]
  build() {
    Column() {
      //头部信息区
      this.headerMessage()
      //分割线
      Divider()
        .margin({top:5})
        .color(Color.Black)
      //中间回复区
      this.middleReply()
      //底部回复输入框
      this.footerInput()
    }
    .width("100%")
  }

  @Builder
  headerMessage() {
    Text("评论回复")
    mainComment()
  }

  @Builder
  middleReply() {
    Scroll() {
      Column() {
        Text("回复"+this.replyList.length)
          .width("85%")
          .textAlign(TextAlign.Start)
          .margin({top:15})
        ForEach(this.replyList, (item: ReplyItemType) => {
          ReplyItem({ reply: item })  // 关键：正确传递参数
        }, (item: ReplyItemType) => item.id.toString())
      }
    }
    .layoutWeight(1)
    .scrollBar(BarState.Off)
  }

  @Builder
  footerInput() {

  }
}

//回复组件
@Component
struct ReplyItem {
  private reply:ReplyItemType= {
    id: 0,
    avatar: '',
    author: '',
    content: '',
    time: '',
    area: '',
    likeNum: 0
  }
  build() {
    Row() {
      //左边头像
      Column() {
        //设置默认头像
        Image(this.reply.avatar)
          .width(30)
          .height(30)
          .borderRadius(16)
          .margin({top:12, right: 12 })
      }
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Start)
      //右边内容
      Column(){
        Row() {
          Text(this.reply.author)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .margin({
              top:15
            })
        }
        .width("75%")
        .justifyContent(FlexAlign.Start)

        Row(){
          Text(this.reply.content)
            .fontSize(16)
            .fontColor('#545454')
            .textAlign(TextAlign.Start)
            .width('75%')
            .margin({ top: 5, bottom: 8 })
        }
        Row(){
          Row() {
            //时间
            Text(this.reply.time)
              .fontSize(12)
              .fontColor("#999999")
            //中间分割点
            Text("·")
              .margin({
                left: 4,
                right:4
              })
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .fontColor("#999999")
            //中间分隔文字
            Text("IP 属地")
              .fontSize(12)
              .fontColor("#999999")
            //地区
            Text(this.reply.area)
              .fontSize(12)
              .fontColor("#999999")
          }
          Row() {
            //收藏
            Image($rawfile("commentPage/likeIcon.svg"))
              .width(14)
              .height(14)
              .margin({ right: 4 })
            //收藏数量
            Text(this.reply.likeNum.toString())
              .fontSize(12)
              .fontColor('#999999')
          }
        }
        .width("75%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
    }
    .alignItems(VerticalAlign.Top)
  }
}

//主评论组件
@Component
struct mainComment {
  private reply: ReplyItemType= {
    id: 1,
    avatar: '',
    author: '欧洲足球锦标赛',
    content: '14-0! 欧洲杯超级惨案+刷爆纪录! 姆巴佩帽子戏法, 法国7连胜, 怎么评价这场比赛?',
    time: '10-21',
    area: '辽宁',
    likeNum: 100
  }
  build() {
    Row() {
      //左边头像
      Column() {
        //设置默认头像
        Image($rawfile("commentPage/avatar_default.svg"))
          .width(30)
          .height(30)
          .borderRadius(16)
          .margin({top:12, right: 12 })
      }
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Start)
      //右边内容
      Column(){
        Row() {
          Text(this.reply.author)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .margin({
              top:15
            })
        }
        .width("75%")
        .justifyContent(FlexAlign.Start)

        Row(){
          Text(this.reply.content)
            .fontSize(16)
            .fontColor('#545454')
            .textAlign(TextAlign.Start)
            .width('75%')
            .margin({ top: 5, bottom: 8 })
        }
        Row(){
          Row() {
            //时间
            Text(this.reply.time)
              .fontSize(12)
              .fontColor("#999999")
            //中间分割点
            Text("·")
              .margin({
                left: 4,
                right:4
              })
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .fontColor("#999999")
            //中间分隔文字
            Text("IP 属地")
              .fontSize(12)
              .fontColor("#999999")
            //地区
            Text(this.reply.area)
              .fontSize(12)
              .fontColor("#999999")
          }
          Row() {
            //收藏
            Image($rawfile("commentPage/likeIcon.svg"))
              .width(14)
              .height(14)
              .margin({ right: 4 })
            //收藏数量
            Text(this.reply.likeNum.toString())
              .fontSize(12)
              .fontColor('#999999')
          }
        }
        .width("75%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
    }
    .alignItems(VerticalAlign.Top)
  }
}