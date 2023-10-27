FROM node:18-slim as base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
WORKDIR /cheese_frontend
RUN corepack enable

FROM base as build
COPY . ./
RUN pnpm install --frozen-lockfile
RUN pnpm build

FROM nginx:1.25.3-alpine-slim
COPY --from=build /cheese_frontend/dist /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
