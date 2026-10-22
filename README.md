
Fontawesome Finder
----

> Based on Fontawesome 4.7 https://fontawesome.com/v4.7.0/icons/

Demo http://repo.tiye.me/chenyong/fontawesome-finder/

### 0.30.1 使用者影响

当前配对精确正式 Calcit/procs 0.30.1、Respo 0.16.124、UI 0.8.0、Reel 0.6.41、
Message 0.0.38、js-ffi 0.2.5，传递 Router 0.8.37；不使用 alpha/hash 模块版本。
升级后重启开发服务并完整刷新。Fontawesome 4.7 图标、搜索、存储 key/格式和
通知两秒生命周期保持；UI 0.8 基础样式可能改变外观。Message 已知长文本裁切问题
仍见 [#53](https://github.com/Respo/respo-message.calcit/issues/53)，不宣称本轮已修复。
存档恢复先于首次渲染及保存注册；解析或 Store 解码失败会中断启动，避免原先忽略错误后
退出时用初始状态覆盖原值。Store 解码失败会先通过 JS 引入的 `hud!` 显示页面错误，
再中断启动；异常不替代 HUD。遇错应先备份并修复存档，不要清空数据，见 [#20](https://github.com/worktools/fontawesome-finder/issues/20)。

### Development

Use Calcit/procs 0.30.1, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
Canonical source/dependencies are `calcit.cirru` and `deps.cirru`; compact/package
snapshots are retired. Edit Calcit through the CLI.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit test --require-match --summary-only --format json
calcit calcit.cirru js
yarn vite
```

For live source edits, run `calcit -w calcit.cirru` alongside Vite.
The app uses typed Store/Op and typed Reel; clipboard messages still expire after
two seconds. Calcit modules use published formal releases; no commit-pinned dependency is required.
Persisted input is decoded at `decode-store`; its Dynamic input is an intentional
EDN boundary, while successful decoding returns `Option<Store>`.

此前 0.30 迁移保留搜索、图标、存储 key/格式与消息两秒定时器。复制事件声明实际的
Enum dispatcher / Unit 合同；状态树结果使用 Map 解码而非类型断言。
`require-op` 在应用边界验证四种操作，复用原 `decode-store` 保留已有 Store payload，
不对整个 Enum 的已类型化 Struct payload 再解码。无效操作会明确报错，
不会作为伪造的 nominal Op 写入 Reel 历史。一个附带回归覆盖这四种有效操作。
清理三个 namespace 的旧 import `[]`，移除旧 runtime 的 npm 年龄例外，
不新增验证脚本、框架、编译器规则、预算或 COS 配置。

正式 Reel 0.6.38 已解除旧版本的 List 输入证明阻塞。渲染器的开放输入先检查
Enum 再调用应用 dispatcher；Message 0.0.36 对齐 UI 0.7.40，解除 Caps strict
拒绝旧 Message 混用 UI 0.7.39 的依赖冲突。
reload 执行 HUD 副作用后明确返回 Unit。
全部定义、完整 strict/preflight、原操作边界测试及 JS 构建通过。
此前 Message 升级已执行搜索、复制提示、定时清理和持久化浏览器回归；本次
依赖更新不把此前浏览器结果算作重新验收。尚未执行旧 0.29.0 CLI 本地基线，
旧精确 main 的成功 CI 与当前 0.30.0 控制组/候选对比分开记录。

### Deployment

Frontend main assets use `https://cos-sh.tiye.me/worktools/fontawesome-finder/`.
CI checks all reachable definitions, rejects deprecated calls and builds with absolute CDN URLs.
COS action v1.2.0 verifies via `public-base-url`, with no separate verifier script.
Frontend rsync retains `/web-assets/repo/worktools/fontawesome-finder`;
this project has no backend deployment. Deployment happens only on main pushes.
PR builds use relative URLs and a three-day frontend artifact for isolated acceptance;
they do not expose deploy secrets or upload. Production CDN/COS/rsync paths are unchanged.
Protected remote PR previews would need their own isolated prefix/base and credentials;
this migration does not enable them.

部署配置使用正式 Action 标签，保留生产 COS 前缀与原服务器部署目录。
队列不取消正在上传的任务；上传前仅检查一次 main HEAD，过期构建跳过
COS 与 rsync，不反复校验资源。正式标签仍可移动，不等同 immutable pin。

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
