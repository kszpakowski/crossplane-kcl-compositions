# Crossplane KCL compositions

Add models dependency from github

```sh
sudo kcl mod add crossplane --git https://github.com/kszpakowski/kcl-modules
```

Render and apply composition

```sh
kcl . | kubectl apply -f -
```
