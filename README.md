# 极简风格设计中英文简历模板(a resume Class File in two language with minimalist design)

- 作者(auther): 杨舜禹(Shunyu Yang)
- 邮箱(email) : shunyu.1994@gmail.com
- 可选照片/中英文(Language/photo available - for selection)

## 基本设定(Basic setting)

字体(Font):宋体 微软雅黑 Times New Roman Calibri

## 使用方法(Useage)

选择中英文和是否有照片：

| Latex 命令   | 解释                                                   |
| ------------ | ------------------------------------------------------ |
| \phototrue   | 且将图片放入根目录 （默认为1.jpg）                     |
| \englishtrue | 且在文中需要中英文区别时使用命令  \lang{English}{中文} |

个人信息排版：

eg. `\threecontact{1}{2}{3}`

| Latex 命令    | 解释             |
| ------------- | ---------------- |
| \twocontact   | 一行两列信息排布 |
| \threecontact | 一行三列信息排布 |
| \fourcontact  | 两行两列信息排布 |
| \sixxcontact  | 三行两列信息排布 |
| \sixcontact   | 两行三列信息排布 |
| \eightcontact | 四行两列信息排布 |
| \ninecontact  | 三行三列信息排布 |

内容可选项:

eg. `\lang{\address{street}}{\address{街}}`

| Latex 命令                  | 解释     |
| --------------------------- | -------- |
| \address                    | 地址     |
| \phone                      | 手机     |
| \email                      | 邮箱     |
| \person(age,sex,native,etc) | 个人信息 |
| \homepage                   | 主页     |
| \facebook                   | facebook |
| \github                     | git 地址 |
| \linkedin                   | linkedin |
| \twitter                    | twitter  |
| \wechat                     | wechat   |
| \weibo                      | weibo    |
| \qq                         | qq       |

文章内容选项:

eg. `\ytitle{title}{题目}`

| Latex 命令  | 解释         |
| ----------- | ------------ |
| \myname     | 名字         |
| \yparagraph | 普通段落     |
| \ytitle     | 带横线大标题 |
| \ysubtitle  | 小标题       |
| \ytimeline  | 2*2时间事件  |
| \ylist      | 列表段落     |
| \yevent     | 1*3时间事件  |

## 实例(Instance)

### 无照片中文(Chinese without photo)

![Chinese_Page_1](./demo/Chinese_Page_1.png)
![Chinese_Page_2](./demo/Chinese_Page_2.png)

### 有照片英文(English with photo)

![EnglishWithPhoto_Page_1](./demo/EnglishWithPhoto_Page_1.png)
![EnglishWithPhoto_Page_2](./demo/EnglishWithPhoto_Page_2.png)

## License

[MIT](./LICENSE)
