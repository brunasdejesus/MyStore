import requests

url = "https://jsonplaceholder.typicode.com/users"

payload  = {}
headers = {
  'Cookie': '__cfduid=d8291b1b9349e18e7e54e75ef4bbb15271598683596'
}

response = requests.request("GET", url, headers=headers, data = payload)

print(response.text.encode('utf8'))
