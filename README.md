# homebrew-tap

Homebrew tap for [LiveWall](https://github.com/louispy/LiveWall).

```sh
brew install --cask louispy/tap/livewall
```

## Releasing a new LiveWall version

1. Bump `CFBundleShortVersionString` in `LiveWall/build.sh`.
2. Run `./release.sh` in the LiveWall repo. It prints the DMG path and sha256.
3. Tag the commit (`git tag v1.1 && git push --tags`) and create a GitHub Release with the DMG attached.
4. Update `version` and `sha256` in `Casks/livewall.rb` and push this repo.
