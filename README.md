# homebrew-risuko

Homebrew tap for [Risuko](https://risuko.vercel.app) — a full-featured download manager.

## Install

```bash
# CLI
brew install yuemiyuki/risuko/cli

# Desktop app (Cask)
brew install --cask yuemiyuki/risuko/app
```

## Update

```bash
brew update
brew upgrade yuemiyuki/risuko/cli
brew upgrade --cask yuemiyuki/risuko/app
```

## Uninstall

```bash
brew uninstall yuemiyuki/risuko/cli
brew uninstall --cask yuemiyuki/risuko/app
```

## Releasing a new version

The formula and cask are auto-bumped by the release workflow in the main
[risuko repo](https://github.com/yuemiyuki/risuko). To bump manually, edit
`version` and `sha256` fields in `Formula/cli.rb` and `Casks/app.rb`.
