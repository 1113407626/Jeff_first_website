-- Supabase 创建 parrots 表的 SQL 脚本
-- 如果表已存在，先删除再创建

-- 删除旧表（如果存在）
DROP TABLE IF EXISTS parrots CASCADE;

-- 创建新表
CREATE TABLE parrots (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  price BIGINT NOT NULL,
  days BIGINT NOT NULL,
  description TEXT,
  image TEXT NOT NULL,
  video TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 插入示例数据
INSERT INTO parrots (name, price, days, description, image, video) VALUES
('小绿', 1500, 45, '活泼好动，喜欢站肩膀上', 'https://picsum.photos/400/300?random=1', NULL),
('彩虹', 2200, 60, '羽毛颜色非常漂亮，会学说话', 'https://picsum.photos/400/300?random=2', NULL),
('豆豆', 1800, 38, '特别粘人，喜欢被摸头', 'https://picsum.photos/400/300?random=3', NULL);
