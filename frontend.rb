require 'unirest'

response = Unirest.post("http://localhost:3000/unicorns.json", parameters: {unicorn: {age: 12, color: "green", theme_song: "hello"}})


p response.body
