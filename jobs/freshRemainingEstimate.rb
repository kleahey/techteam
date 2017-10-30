require "net/http"
require 'net/https'
require "uri"
require 'json'
require 'pp'

uri = URI.parse("https://cawiki.atlassian.net/rest/api/2/search")

header = {'Content-Type': 'text/json'}

json = {
  jql: "project = FRESH AND sprint in openSprints () ORDER BY remainingEstimate DESC",
  fields: [
    "timeestimate"
  ]
}

SCHEDULER.every '1m', :first_in => 0 do |id|

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
request.basic_auth("kleahey", "Planet@ry77")
request.body = json.to_json

response = http.request(request)

hello = JSON.parse(response.body)

j = 0

hello["issues"].each do |x|
  next if x["fields"]["timeestimate"].nil?
  next if x["fields"]["timeestimate"] == 0
  j += x["fields"]["timeestimate"].to_i
end

send_event('freshWorkload', { current: j/60/60 })

end
