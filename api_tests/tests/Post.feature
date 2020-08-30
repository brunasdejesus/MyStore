import requests

url = "https://jsonplaceholder.typicode.com/users"

payload = " {\r\n        \"id\": 1,\r\n        \"name\": \"Leanne Graham\",\r\n        \"username\": \"Bret\",\r\n        \"email\": \"Sincere@april.biz\",\r\n        \"address\": {\r\n            \"street\": \"Kulas Light\",\r\n            \"suite\": \"Apt. 556\",\r\n            \"city\": \"Gwenborough\",\r\n            \"zipcode\": \"92998-3874\",\r\n            \"geo\": {\r\n                \"lat\": \"-37.3159\",\r\n                \"lng\": \"81.1496\"\r\n            }\r\n        },\r\n        \"phone\": \"1-770-736-8031 x56442\",\r\n        \"website\": \"hildegard.org\",\r\n        \"company\": {\r\n            \"name\": \"Romaguera-Crona\",\r\n            \"catchPhrase\": \"Multi-layered client-server neural-net\",\r\n            \"bs\": \"harness real-time e-markets\"\r\n        }\r\n    }"
headers = {
  'Content-Type': 'application/json',
  'Cookie': '__cfduid=d8291b1b9349e18e7e54e75ef4bbb15271598683596'
}

response = requests.request("POST", url, headers=headers, data = payload)

print(response.text.encode('utf8'))
