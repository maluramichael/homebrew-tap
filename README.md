# maluramichael/homebrew-tap

Homebrew casks and formulae for tools by [@maluramichael](https://github.com/maluramichael).

```sh
brew install maluramichael/tap/<name>
```

| Name | Type | Description |
|---|---|---|
| [`kadrell`](https://kadrell.malura.de) | Cask | Keep all parallel Claude Code sessions visible in one window (macOS 15+) |

## How updates work

Each project's release script updates `version` and `sha256` in its cask or formula and pushes the change here.

Apps that update themselves (`auto_updates true`, like Kadrell) are skipped by `brew upgrade` unless you pass `--greedy`.
