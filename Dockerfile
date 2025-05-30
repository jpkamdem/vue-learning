FROM node:18-alpine AS build
WORKDIR /app
RUN npm install -g pnpm@latest-10
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . ./
RUN pnpm run build

FROM nginx:1.27.4-alpine AS runtime
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]