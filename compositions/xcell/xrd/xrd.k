import crossplane.v1.apiextensions_crossplane_io_v1_composite_resource_definition as xrd

xcell = xrd.CompositeResourceDefinition {
    metadata = {
        name: "xcells.infra.kszpakowski.com"
    }
    spec = {
        group: "infra.kszpakowski.com"
        names: {
            kind: "xCell"
            listKind: "xCellList"
            plural: "xcells"
            singular: "xcell"
        }
        versions: [
            {
                name: "v1alpha1"
                served: True
                referenceable: True
                schema: {
                    openAPIV3Schema: _schema
                }
            }
        ]
    }
}

_schema: ObjectSchema = {
    properties: {
        spec: ObjectSchema {
            properties: {
                region: StringSchema {}
            }
            required: ["region"]
        }
        status: ObjectSchema {
            properties: {}
        }
    }
}

