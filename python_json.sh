cat test.json
# output:
# {"title":"Person","type":"object","properties":{"firstName":{"type":"string"},"lastName":{"type":"string"},"age":{"description":"Age in years","type":"integer","minimum":0}},"required":["firstName","lastName"]}

cat test.json | python -m json.tool
# {
#     "properties": {
#         "age": {
#             "description": "Age in years",
#             "minimum": 0,
#             "type": "integer"
#         },
#         "firstName": {
#             "type": "string"
#         },
#         "lastName": {
#             "type": "string"
#         }
#     },
#     "required": [
#         "firstName",
#         "lastName"
#     ],
#     "title": "Person",
#     "type": "object"
# }
