#!/bin/bash
echo "🦜 手养鹦鹉之家 - 本地服务器启动中..."
echo ""
echo "访问地址：http://localhost:8080"
echo ""
echo "按 Ctrl+C 停止服务器"
echo ""

# 检查 Python 是否可用
if command -v python3 &> /dev/null; then
    python3 -m http.server 8080
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8080
else
    echo "❌ 未找到 Python，请安装 Python 后重试"
    exit 1
fi
