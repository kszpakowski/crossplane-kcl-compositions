# Crossplane KCL compositions

Add dependency to schemas
`kcl mod add  --path ../../schemas/crossplane`

Render and apply composition
`kcl . | kubectl apply -f -`
