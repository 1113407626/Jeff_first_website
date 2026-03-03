-- 创建成本核算表
DROP TABLE IF EXISTS parrot_costs CASCADE;

CREATE TABLE parrot_costs (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  parrot_id UUID NOT NULL REFERENCES parrots(id) ON DELETE CASCADE,
  
  -- 变动成本
  purchase_cost NUMERIC DEFAULT 0,      -- 购买成本
  electricity_cost NUMERIC DEFAULT 0,   -- 电费
  formula_cost NUMERIC DEFAULT 0,       -- 奶粉
  bedding_cost NUMERIC DEFAULT 0,       -- 垫料
  medicine_cost NUMERIC DEFAULT 0,      -- 药品
  misc_cost NUMERIC DEFAULT 0,          -- 杂费
  
  -- 固定成本参数
  brooder_price NUMERIC DEFAULT 300,    -- 保温箱价格
  brooder_months NUMERIC DEFAULT 24,    -- 保温箱摊销月数
  incubator_price NUMERIC DEFAULT 500,  -- 孵化器价格
  incubator_months NUMERIC DEFAULT 24,  -- 孵化器摊销月数
  
  -- 销售信息
  status TEXT DEFAULT 'pending',        -- pending=待销售，sold=已销售，kept=自留
  sale_price NUMERIC DEFAULT 0,         -- 实际销售价格
  
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 创建索引
CREATE INDEX idx_parrot_costs_parrot_id ON parrot_costs(parrot_id);
CREATE INDEX idx_parrot_costs_status ON parrot_costs(status);

-- 为现有鹦鹉创建成本记录
INSERT INTO parrot_costs (parrot_id, purchase_cost, electricity_cost, formula_cost, bedding_cost, medicine_cost, misc_cost)
SELECT id, 0, 0, 0, 0, 0, 0 FROM parrots
ON CONFLICT DO NOTHING;
