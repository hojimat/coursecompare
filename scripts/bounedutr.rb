require 'net/http'
require 'uri'
require 'nokogiri'

uri = URI.parse("http://registration.boun.edu.tr/scripts/schdepsel.asp")
request = Net::HTTP::Post.new(uri)
request["Host"] = "registration.boun.edu.tr"
request["Referer"] = "http://registration.boun.edu.tr/schedule.htm"
request.set_form_data(
  "semester" => "2016/2017-1",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body
puts 'hel'
