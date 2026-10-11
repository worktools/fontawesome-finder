
Fontawesome Finder
----

> Based on Fontawesome 4.7 https://fontawesome.com/v4.7.0/icons/

Demo http://repo.tiye.me/chenyong/fontawesome-finder/

### Development

Use Calcit/procs 0.29.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
Canonical source/dependencies are `calcit.cirru` and `deps.cirru`; compact/package
snapshots are retired. Edit Calcit through the CLI.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit calcit.cirru js
yarn vite
```

For live source edits, run `calcit calcit.cirru js --watch` alongside Vite.
The app uses typed Store/Op and typed Reel; clipboard messages still expire after
two seconds. Calcit modules use stable releases, including Respo Message 0.0.33
with the message type-contract fix; no commit-pinned dependency is required.
Persisted input is decoded at `decode-store`; its Dynamic input is an intentional
EDN boundary, while successful decoding returns `Option<Store>`.

### Deployment

Frontend main assets use `https://cos-sh.tiye.me/worktools/fontawesome-finder/`.
CI checks all reachable definitions, rejects deprecated calls and builds with absolute CDN URLs.
COS action v1.2.0 verifies via `public-base-url`, with no separate verifier script.
Frontend rsync retains `/web-assets/repo/worktools/fontawesome-finder`;
this project has no backend deployment. Deployment happens only on main pushes.
PR builds use PR/run/attempt-isolated bases but do not expose deploy secrets or upload
until protected preview credentials/environment are configured.

部署配置使用正式 Action 标签，保留生产 COS 前缀与原服务器部署目录。
队列不取消正在上传的任务；上传前仅检查一次 main HEAD，过期构建跳过
COS 与 rsync，不反复校验资源。正式标签仍可移动，不等同 immutable pin。

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
