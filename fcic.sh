# 保险：把任何 SSH git 依赖重写为 HTTPS（你已清理过，但加着更稳）
git config --global url."https://github.com/".insteadOf ssh://git@github.com/
git config --global url."https://github.com/".insteadOf git@github.com:

# 关键：用 legacy peer deps 安装（避免 webpack2 与 sass-loader 的 peer 冲突）
npm ci --legacy-peer-deps --progress=false

# 构建
npm run build
