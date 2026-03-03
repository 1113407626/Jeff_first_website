# 🚀 Vercel 部署指南

## 步骤 1：将 GitHub 仓库设为私有

1. 访问：https://github.com/1113407626/Jeff_first_website
2. 点击 **Settings**（设置）
3. 滚动到最下方 **Danger Zone**（危险区域）
4. 点击 **Change visibility**
5. 选择 **Make private**
6. 确认操作

✅ 现在源码只有你能看到！

---

## 步骤 2：在 Vercel 部署

1. 访问：https://vercel.com
2. 点击 **Sign Up** 或 **Log In**
3. 选择 **Continue with GitHub**（用 GitHub 登录）
4. 登录后点击 **Add New Project**
5. 选择 **Import Git Repository**
6. 找到 `Jeff_first_website` 项目
7. 点击 **Import**

---

## 步骤 3：配置项目

在 Vercel 配置页面：

- **Framework Preset**: 选择 `Other`
- **Root Directory**: 保持 `./`
- **Build Command**: 留空
- **Output Directory**: 留空或填 `.`
- **Install Command**: 留空

点击 **Deploy**

---

## 步骤 4：等待部署完成

大约 30 秒后，你会看到：

```
🎉 Congratulations! Your deployment is ready!

https://jeff-first-website-xxx.vercel.app
```

---

## 步骤 5：自定义域名（可选）

### 免费二级域名

Vercel 会自动分配：
```
https://jeff-first-website.vercel.app
```

### 自定义域名（如果有）

1. 在 Vercel 项目页面 → **Settings** → **Domains**
2. 添加你的域名
3. 按照提示配置 DNS

---

## 步骤 6：访问你的网站

- **新地址**：`https://jeff-first-website.vercel.app`
- **GitHub Pages 地址**（可停用）：`https://1113407626.github.io/Jeff_first_website/`

---

## 🔒 安全加固

### 1. 修改管理员密码

在 `index.html` 中搜索 `ADMIN_PASSWORD`，改成复杂密码：

```javascript
const ADMIN_PASSWORD = 'YourSecurePassword2026!';
```

然后提交推送：

```bash
git add -A
git commit -m "🔒 修改管理员密码"
git push origin main
```

Vercel 会自动重新部署！

### 2. 启用 Supabase RLS（行级安全）

在 Supabase 控制台执行：

```sql
-- 启用 RLS
ALTER TABLE parrots ENABLE ROW LEVEL SECURITY;

-- 允许所有人读取
CREATE POLICY "Allow public read access" ON parrots
  FOR SELECT USING (true);

-- 允许所有人插入（需要密码验证在前端完成）
CREATE POLICY "Allow public insert access" ON parrots
  FOR INSERT WITH CHECK (true);

-- 允许所有人更新
CREATE POLICY "Allow public update access" ON parrots
  FOR UPDATE USING (true);

-- 允许所有人删除
CREATE POLICY "Allow public delete access" ON parrots
  FOR DELETE USING (true);
```

---

## 🔄 自动部署

现在每次 `git push` 后，Vercel 会自动：
1. 检测代码变化
2. 自动构建
3. 自动部署
4. 更新网站

**无需手动操作！**

---

## 📊 Vercel 免费额度

| 项目 | 额度 | 说明 |
|------|------|------|
| 带宽 | 100GB/月 | 足够个人使用 |
| 构建时间 | 6000 分钟/月 | 绰绰有余 |
| 域名 | 免费二级域名 | `.vercel.app` |
| SSL | ✅ 免费 | 自动 HTTPS |
| 私有仓库 | ✅ 支持 | 源码不公开 |

---

## 🎉 完成！

现在你的网站：
- ✅ 部署在 Vercel
- ✅ 源码私有（GitHub 私有仓库）
- ✅ 自动部署
- ✅ 免费 HTTPS
- ✅ 全球 CDN 加速

**访问**：`https://jeff-first-website.vercel.app`

---

## 💡 提示

- 部署日志：Vercel 项目页面 → **Deployments**
- 查看域名：Vercel 项目页面 → **Settings** → **Domains**
- 重新部署：推送代码或手动点击 **Redeploy**
