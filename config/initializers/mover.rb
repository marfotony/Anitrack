require 'uri'
require 'net/http'


module Mover
  #code
  class Send
    url = URI("https://api.sendgrid.com/v3/mail/send")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["authorization"] = 'Bearer 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'
    request["content-type"] = 'application/json'
    request.body = "{\"personalizations\":[{\"to\":[{\"email\":\"micnkru@gmail.com\",\"name\":\"John Doe\"}],\"subject\":\"Hello, World!\"}],\"from\":{\"email\":\"sam.smith@example.com\",\"name\":\"Sam Smith\"},\"reply_to\":{\"email\":\"sam.smith@example.com\",\"name\":\"Sam Smith\"},\"subject\":\"Hello, World!\",\"content\":[{\"type\":\"text/html\",\"value\":\"<html><p>Hello, world!</p></html>\"}]}"

    response = http.request(request)
    puts response.read_body
  end
end
