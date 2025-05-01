import crossplane.v1.apiextensions_crossplane_io_v1_composition as c

xcell = c.Composition {
    metadata = {
        name: "xcell"
    }
    spec = {
        compositeTypeRef: {
            apiVersion: "infra.kszpakowski.com/v1alpha1"
            kind: "xCell"
        }
        mode: "Pipeline"
        pipeline: [
            {
                step: "Create resources"
                functionRef: {
                    name: "kcl-function"
                }
                # credentials
                input: {
                    apiVersion: "krm.kcl.dev/v1alpha1"
                    kind: "KCLInput"
                    metadata: {
                        name: "basic"
                    }
                    spec: {
                        source: "github.com/kszpakowski/kcl-modules/crossplane-xnetwork-kcl-function"
                    }
                }
            }
        ]
    }
}
