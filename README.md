
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
COS action v1.1.1 verifies via `public-base-url`, with no separate verifier script.
Server source/destination are unchanged; deployment happens only on main pushes.
PR builds use PR/run-isolated bases but do not expose deploy secrets or upload
until protected preview credentials/environment are configured.

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
