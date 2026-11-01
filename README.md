
Fontawesome Finder
----

> Based on Fontawesome 4.7 https://fontawesome.com/v4.7.0/icons/

Demo http://repo.tiye.me/chenyong/fontawesome-finder/

### 0.32.1 使用者影响

本项目配对正式 Calcit / `@calcit/procs` **0.32.1**，真实严格安装 Respo **0.17.1**、UI **0.9.0**、Reel **0.7.0**、Message **0.1.0** 和 JS FFI **0.2.9** 的发布 tag。UI 正式版固定的传递 Router 仍为精确 **0.9.0-alpha.4**，不混入本地候选或 hash。请重新安装依赖、重启开发服务并完整刷新。

Fontawesome 4.7 图标、搜索、storage key/格式、通知两秒生命周期和 JS HUD 保持；UI 样式可能变化。Message 已知长文本裁切仍见 [#53](https://github.com/Respo/respo-message.calcit/issues/53)，不将正式 Git 版本当作该问题已解决。

此前 0.31.0 已绑定 Respo 的入口事件类型，保留应用与 Reel 的 Enum 事件检查。
修复 0.31 下保存搜索后刷新出现 Invalid-saved-state：本地 Store 保留，
同名外部 Struct 转 Map 后经字段校验重建本地 Store，名称不代表名义身份。
新增持久化往返回归，原操作合同测试保持。搜索、复制和计时函数未改。

存档恢复仍先于渲染及保存注册；解析或解码失败中断启动，保留原值。
原 JS `hud!` 提示与 reload HUD 保留，不改成仅抛出异常。
坏存档恢复见 [#20](https://github.com/worktools/fontawesome-finder/issues/20)。
PR 只生成隔离相对资源 artifact，COS/rsync 继续按原策略跳过。

### 本轮验收

官方 format 规范化 13 处旧类型标注，24 个应用定义的代码、schema、metadata 和原两项附属测试与 main 经官方 format 归一后的完整查询视图相同。
全 222 定义、完整 strict（diagnostics 为空）、原两项测试、零废弃调用、构建与 immutable 安装通过。
隔离页面验证 `github` 筛选出三个图标、无匹配搜索返回空列表，以及刷新恢复 `github` 搜索；
浏览器无 warning/error。未点击复制，未将历史复制/通知计时验收算作本轮结果，也未重新验收坏存档。
原类型门禁保留，未添加验证脚本或部署。正式依赖严格安装、immutable 及工具链配对通过；按维护者明确的一小时策略，npm 新解析显式设置 60m，无版本例外。
官方 program-diff 暂不能读取历史 Git Snapshot 的旧类型语法（[Calcit #2503](https://github.com/calcit-lang/calcit/issues/2503)），本轮用隔离历史副本官方 format 后的逐定义视图完成对照，不绕过原门禁。

### Development

Use Calcit/procs 0.32.1, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
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
two seconds. The declared exact module versions are published Git tags, checked through strict Caps installation.
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
