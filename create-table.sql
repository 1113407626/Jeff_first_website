-- Supabase 创建 parrots 表的 SQL 脚本
-- 在 SQL Editor 中运行此脚本即可创建表

CREATE TABLE IF NOT EXISTS parrots (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  price BIGINT NOT NULL,
  days BIGINT NOT NULL,
  desc TEXT,
  image TEXT NOT NULL,
  video TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 插入示例数据（可选）
INSERT INTO parrots (name, price, days, desc, image, video) VALUES
('小绿', 1500, 45, '活泼好动，喜欢站肩膀上', 'https://picsum.photos/400/300?random=1', NULL),
('彩虹', 2200, 60, '羽毛颜色非常漂亮，会学说话', 'https://picsum.photos/400/300?random=2', NULL),
('豆豆', 1800, 38, '特别粘人，喜欢被摸头', 'https://picsum.photos/400/300?random=3', NULL);
