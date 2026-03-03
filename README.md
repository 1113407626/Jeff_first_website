# 🦜 手养鹦鹉之家

一个超酷炫的鹦鹉展示与管理网站，**数据存储在云端**，所有人访问看到相同数据！

## ✨ 功能特点

- ☁️ **云端存储** - 使用 Firebase 数据库，数据永久保存
- 🔄 **实时同步** - 添加/删除鹦鹉后，所有人立即看到更新
- 🎨 **酷炫视觉效果** - 流动星光背景 + 霓虹配色
- 🦜 **鹦鹉卡片展示** - 图片/视频、价格、手养天数一目了然
- 📊 **实时统计** - 鹦鹉总数、平均天数、总价值
- 🎬 **视频切换** - 点击播放按钮查看鹦鹉视频
- 🔐 **密码保护** - 管理员密码验证，防止误操作
- 💾 **自动保存** - 数据实时同步到云端

## 🚀 快速启动

### 步骤 1: 创建 Firebase 项目（必须！）

1. 访问 [Firebase 控制台](https://console.firebase.google.com/)
2. 点击「添加项目」
3. 输入项目名称（如：parrot-home）
4. 启用 Google Analytics（可选）
5. 点击「创建项目」

### 步骤 2: 创建 Firestore 数据库

1. 在 Firebase 控制台，点击左侧「构建」→「Firestore Database」
2. 点击「创建数据库」
3. 选择**测试模式**（允许读写）
4. 选择位置（建议选亚洲附近，如 asia-east1）
5. 点击「启用」

### 步骤 3: 获取 Firebase 配置

1. 在 Firebase 控制台，点击项目概览页面的「</>」图标（Web 应用）
2. 输入应用名称（如：parrot-home-web）
3. 点击「注册应用」
4. **复制 Firebase 配置代码**（看起来像下面的 JSON）

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  authDomain: "your-project.firebaseapp.com",
  projectId: "your-project",
  storageBucket: "your-project.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abcdef123456"
};
```

### 步骤 4: 配置到代码中

1. 打开 `index.html`
2. 搜索 `firebaseConfig`（大约在第 450 行）
3. 替换配置为你刚才复制的内容

```javascript
const firebaseConfig = {
  apiKey: "你的 API_KEY",
  authDomain: "你的项目 ID.firebaseapp.com",
  projectId: "你的项目 ID",
  storageBucket: "你的项目 ID.appspot.com",
  messagingSenderId: "你的发送者 ID",
  appId: "你的应用 ID"
};
```

### 步骤 5: 设置 Firestore 安全规则（重要！）

1. 在 Firebase 控制台，进入「Firestore Database」
2. 点击「规则」标签
3. 替换为以下规则：

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /parrots/{document=**} {
      allow read: if true;  // 所有人可读
      allow write: if true; // 所有人可写（简单模式）
    }
  }
}
```

4. 点击「发布」

### 步骤 6: 本地测试

```bash
cd /home/jeffhuang/Jeff_first_website
./start.sh
```

访问：http://localhost:8080

### 步骤 7: 推送到 GitHub

```bash
git add -A
git commit -m "配置 Firebase 云端存储"
git push origin main
```

GitHub Pages 会自动更新：https://1113407626.github.io/Jeff_first_website/

## 📖 使用说明

### 添加鹦鹉

1. 点击右上角「管理鹦鹉」
2. 输入密码：`1113407626`
3. 填写鹦鹉信息：
   - 名字
   - 价格（元）
   - 手养天数
   - 上传照片（必填）
   - 上传视频（可选）
   - 描述（可选）
4. 点击「保存鹦鹉信息」
5. ✅ 数据自动保存到云端！

### 查看鹦鹉

- 首页展示所有鹦鹉卡片
- 数据实时从 Firebase 加载
- 鼠标悬停卡片有炫酷动画
- 点击视频按钮切换图片/视频
- 悬停时显示删除按钮

### 删除鹦鹉

- 鼠标悬停到鹦鹉卡片
- 点击右下角垃圾桶图标
- 确认后删除（从云端删除）

## 🔒 安全提示

### 当前模式（简单）
- 管理员密码：`1113407626`
- 密码在前端，懂技术的人可以看到
- 适合个人使用，防君子不防小人

### 如需更高安全
1. 修改 `index.html` 中的 `ADMIN_PASSWORD`
2. 使用 Firebase Authentication（需要额外配置）
3. 设置 Firestore 安全规则限制写入

## 💡 提示

- **数据在云端** - 换设备、换浏览器都能看到相同数据
- **实时同步** - 你添加鹦鹉后，别人立刻能看到
- **图片/视频存储** - 使用 base64 编码存到 Firestore
- **免费额度** - Firebase 免费额度足够个人使用
  - 读取：5 万/天
  - 写入：2 万/天
  - 存储：1GB

## 🛠️ 技术栈

- HTML5 + CSS3 + JavaScript
- **Firebase Firestore** - 云端数据库
- Canvas 动态背景
- Font Awesome 图标

## 🔗 链接

- **GitHub 源码**: https://github.com/1113407626/Jeff_first_website
- **公网访问**: https://1113407626.github.io/Jeff_first_website/
- **Firebase 控制台**: https://console.firebase.google.com/

---

**享受你的云端鹦鹉帝国！** 🦜☁️
