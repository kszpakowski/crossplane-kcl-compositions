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
                step: "Generate partitions"
                functionRef: {
                    name: "function-cidr"
                }
                input: {
                apiVersion: "cidr.fn.crossplane.io/v1beta1"
                kind: "Parameters"
                cidrFunc: "cidrsubnets"
                prefixField: "spec.cidrBlock"
                newBits: [4,4,2,2]
                outputField: "status.atFunction.cidr.partitions"
                }
            }
            # {
            #     step: "Create resources"
            #     functionRef: {
            #         name: "kcl-function"
            #     }
            #     input: {
            #         apiVersion: "krm.kcl.dev/v1alpha1"
            #         kind: "KCLInput"
            #         metadata: {
            #             name: "basic"
            #         }
            #         spec: {
            #             source: "github.com/kszpakowski/kcl-modules-private/function-xcell"
            #         }
            #     }
            # }
        ]
    }
}
