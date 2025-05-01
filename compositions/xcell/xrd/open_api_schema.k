schema StringSchema:
    type: str = "string"

schema IntegerSchema:
    type: str = "integer"

type OpenApiType = ObjectSchema | StringSchema | IntegerSchema

schema ObjectSchema:
    type: str = "object"
    properties: {str: OpenApiType}
    required?: [str]
