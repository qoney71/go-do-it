FROM node:alpine3.20

WORKDIR /app

# 先装依赖（利用缓存）
COPY package*.json ./
RUN npm install

# 再拷贝其他代码
COPY . .

EXPOSE 3000

# 调试用：先打印目录，再运行 node index.js
CMD ["sh", "-c", "echo 'PWD:'; pwd; echo 'LS:'; ls; echo 'LS -R:'; ls -R; echo 'RUN NODE:'; node index.js"]
