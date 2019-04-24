# Anni Data Sample

## 单个 Anni (记为 $ANNI)

```json
{
  "id":1,
  "title":"Easter Day",
  "desc":"Reborn at easter day. Children collect easter eggs",
  "quote":"",
  "month":4,
  "day":21,
  "userId":5, // 创建者的ID
  "userName": "Tony",
  "type":1, // 类型, 比如普通 诞辰纪念 逝世纪念 等
  "category":0, // 类别, 比如艺术 音乐 节假日 等
  "count":0, // 第几个生日, 0表示没有
  "cover":null, // 封面路径
  "markType":0, // Mark类型, 0无, 1Cake, 2Candle, 3...
  "createAt":"2019-04-22T18:39:14.000Z",
  "updateAt":"2019-04-22T18:39:35.000Z",
  "images": [
    "easter-1.jpg",
    "easter-2.jpg",
    ... // 更多图片
  ],
  "likeCount":12,
  "bookmarkCount":10,
  "comments":[
    {
      "content": "Good!",
      "userId": 2,
      "userName": "John",
      "createAt":"2019-04-22T18:39:14.000Z",
      "updateAt":"2019-04-22T18:39:35.000Z",
      "replies":[
        {
          "content": "Wonderful!",
          "userId": 3,
          "userName": "Peter",
          "createAt":"2019-04-22T18:39:14.000Z",
          "updateAt":"2019-04-22T18:39:35.000Z",
        },{
          ... // 更多回复
        }
      ]
    },{
      ... // 更多评论
    }
  ]
}
```

## 多个 Anni
```json
[
  {$ANNI}, {$ANNI}, {$ANNI}, ... // 更多 Anni
]
```

## 单个用户
```json
{
  "id":1,
  "name":"Adam",
  "email":"adam@cmu.edu",
  "bio":null, // 一句话简介
  "avatar":null, // 头像路径
  "cover":null, // 背景图路径
  "annis":[
    {$ANNI}, {$ANNI}, {$ANNI}, ... // 更多 Anni
  ],
  "likes":[ // 每个 $ANNI 会有一个 "likeAt": "2019-04-22T18:39:14.000Z" 来表示喜欢时间
    {$ANNI}, {$ANNI}, {$ANNI}, ... // 更多 Anni
  ],
  "bookmakrs":[ // 每个 $ANNI 会有一个 "bookmarkAt": "2019-04-22T18:39:14.000Z" 来表示收藏时间
    {$ANNI}, {$ANNI}, {$ANNI}, ... // 更多 Anni
  ],
  "comments":[
    {
      "content": "Good!",
      "userId": 2,
      "anniId": 3,
      "anniTitle": "Easter Day",
      "userName": "John",
      "createAt":"2019-04-22T18:39:14.000Z",
      "updateAt":"2019-04-22T18:39:35.000Z",
    },{
      ... // 更多评论
    }
  ]
}
```

