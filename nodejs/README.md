# setup

```bash
brew install protoc-gen-js nodejs
```

# protoc

```bash
protoc --proto_path=./ --js_out=import_style=commonjs,binary:./ ./addressbook.proto
```

# run

```bash
node main.js
```
