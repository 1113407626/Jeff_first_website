# 🦜 手养鹦鹉之家

一个超酷炫的鹦鹉展示与管理网站，**数据存储在 Supabase 云端**，所有人访问看到相同数据！

## ✨ 功能特点

- ☁️ **Supabase 云端存储** - 免费、快速、国内访问友好
- 🔄 **实时同步** - 添加/删除鹦鹉后，所有人立即看到更新
- 🎨 **酷炫视觉效果** - 流动星光背景 + 霓虹配色
- 🦜 **鹦鹉卡片展示** - 图片/视频、价格、手养天数一目了然
- 📊 **实时统计** - 鹦鹉总数、平均天数、总价值
- 🎬 **视频切换** - 点击播放按钮查看鹦鹉视频
- 🔐 **密码保护** - 管理员密码验证，防止误操作
- 💾 **自动保存** - 数据实时同步到云端

## 🚀 快速配置（3 步完成！）

### 第 1 步：导入 CSV 创建表（最简单！）

在你的 Supabase 项目：https://supabase.com/dashboard/project/nxiwatmgedlvzlxmgyhw

1. 左侧菜单 → **Table Editor**
2. 点击 **Import data** → **CSV**
3. 上传 `parrots-table.csv` 文件（或复制下面的内容）
4. 表名输入：`parrots`
5. 点击 **Import**

**或者手动创建表：**

1. **New table**
2. 表名：`parrots`
3. **取消勾选** "Enable Row Level Security"
4. **Save**

然后添加以下列（点击 **Add column**）：

| 列名 | 类型 | 默认值 | 说明 |
|------|------|--------|------|
| `name` | text | - | 鹦鹉名字 |
| `price` | int8 | - | 价格（元） |
| `days` | int8 | - | 手养天数 |
| `desc` | text | - | 描述（可选） |
| `image` | text | - | 图片 base64 |
| `video` | text | - | 视频 base64（可选） |

> 💡 `id` 和 `created_at` 会自动创建，不用手动添加！

### 第 2 步：获取 API 密钥

1. 左侧菜单 → **Settings** (左下角齿轮图标)
2. 点击 **API**
3. 复制以下两个值：
   - **Project URL**: `https://nxiwatmgedlvzlxmgyhw.supabase.co`
   - **anon public**: 以 `eyJ` 开头的长字符串

### 第 3 步：配置到代码中

1. 打开 `index.html` 文件
2. 搜索 `SUPABASE_URL` 和 `SUPABASE_ANON_KEY`（约第 450 行）
3. 替换为你的配置：

```javascript
const SUPABASE_URL = 'https://nxiwatmgedlvzlxmgyhw.supabase.co';
const SUPABASE_ANON_KEY = '你刚才复制的 anon key';
```

4. 保存文件

## 🌐 本地测试

```bash
cd /home/jeffhuang/Jeff_first_website
./start.sh
```

访问：http://localhost:8080

如果配置正确，管理面板会显示 **🟢 已连接** 状态！

## 📦 推送到 GitHub

```bash
git add -A
git commit -m "配置 Supabase 云端数据库"
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
5. ✅ 数据自动保存到 Supabase 云端！

### 查看鹦鹉

- 首页展示所有鹦鹉卡片
- 数据实时从 Supabase 加载
- **实时同步** - 别人添加鹦鹉后，你刷新页面就能看到
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
2. 启用 Supabase Row Level Security (RLS)
3. 设置更复杂的权限规则

## 💡 提示

- **数据在云端** - 换设备、换浏览器都能看到相同数据
- **实时同步** - 你添加鹦鹉后，别人立刻能看到
- **图片/视频存储** - 使用 base64 编码存到 Supabase
- **免费额度** - Supabase 免费套餐：
  - 数据库：500MB
  - 带宽：2GB/月
  - 足够个人使用！

## 🛠️ 技术栈

- HTML5 + CSS3 + JavaScript
- **Supabase** - 云端数据库（PostgreSQL）
- Canvas 动态背景
- Font Awesome 图标

## 🔗 链接

- **GitHub 源码**: https://github.com/1113407626/Jeff_first_website
- **公网访问**: https://1113407626.github.io/Jeff_first_website/
- **Supabase 控制台**: https://supabase.com/dashboard/project/nxiwatmgedlvzlxmgyhw

---

**享受你的云端鹦鹉帝国！** 🦜☁️
