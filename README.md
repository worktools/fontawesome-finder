
Fontawesome Finder
----

> Based on Fontawesome 4.7 https://fontawesome.com/v4.7.0/icons/

Demo http://repo.tiye.me/chenyong/fontawesome-finder/

### Development

Use Calcit/procs 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
Canonical source/dependencies are `calcit.cirru` and `deps.cirru`; compact/package
snapshots are retired. Edit Calcit through the CLI.

```sh
caps --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru js
yarn vite
```

For live source edits, run `calcit calcit.cirru js --watch` alongside Vite.
The app uses typed Store/Op and typed Reel; clipboard messages still expire after
two seconds. Respo Message is pinned to the type-contract fix in
[Respo Message #40](https://github.com/Respo/respo-message.calcit/pull/40) pending
a compatible release; do not replace it with the older 0.0.28 release.

### Deployment

Frontend main assets use `https://cos-sh.tiye.me/worktools/fontawesome-finder/`.
CI runs strict entry/public-definition checks and builds with absolute CDN URLs.
COS action v1.2.0 verifies via `public-base-url`, with no separate verifier script.
Server source/destination are unchanged; deployment happens only on main pushes.
PR builds use PR/run/attempt-isolated bases but do not expose deploy secrets or upload
until protected preview credentials/environment are configured.

部署配置使用正式 Action 标签，保留生产 COS 前缀与原服务器部署目录。
队列不取消正在上传的任务；上传前仅检查一次 main HEAD，过期构建跳过
COS 与 rsync，不反复校验资源。正式标签仍可移动，不等同 immutable pin。
正式 Calcit 0.28 静态检查仍被共享 Respo ToString/add-event 和 JS FFI 宿主
类型问题阻塞，不能把部署配置更新视为运行时升级完成；
消息模块暂需上述已合并但未发布的兼容修复，不能擅自换成旧正式版或 main。

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
