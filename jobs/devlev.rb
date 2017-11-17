require 'httparty'
require 'date'
require 'json'
require 'pp'
require 'time'
require 'logger'
require 'net/http'
require 'net/https'

SCHEDULER.every '2h', :first_in => '30s' do

dates = []
today = Time.now

i = 30

while i > 0
  value = today - ( i * 86400 )
  dates.push(value.strftime("%m-%d"))
  i -= 1
end

created = []
x = 0
i = 30

while i > 0
  uri = URI.parse("https://cawiki.atlassian.net/rest/api/2/search")
  header = {'Content-Type': 'text/json'}
  json = {
    jql: "project = DEVLEV AND createdDate >= -#{i}d AND createdDate < -#{i - 1}d",
    fields: [
      "timeestimate"
    ]
  }

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
  request.basic_auth("kleahey", "Planet@ry77")
  request.body = json.to_json

  response = http.request(request)
  response = JSON.parse(response.body)

  x = x + response["total"]
  created.push(x)

  i -= 1
end

resolved = []
x = 0
i = 30

while i > 0
  uri = URI.parse("https://cawiki.atlassian.net/rest/api/2/search")
  header = {'Content-Type': 'text/json'}
  json = {
    jql: "project = DEVLEV AND resolved >= -#{i}d AND resolved < -#{i - 1}d",
    fields: [
      "timeestimate"
    ]
  }

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
  request.basic_auth("kleahey", "Planet@ry77")
  request.body = json.to_json

  response = http.request(request)
  response = JSON.parse(response.body)

  x = x + response["total"]
  resolved.push(x)

  i -= 1
end


  labels = dates

  data = [
    {
      label: "Created",
      data: created,
      backgroundColor: [ 'rgba(255, 99, 132, 0.2)' ] * labels.length,
      borderColor: [ 'rgba(255, 99, 132, 1)' ] * labels.length,
      borderWidth: 1,
    }, {
      label: "Resolved",
      data: resolved,
      backgroundColor: [ 'rgba(0, 255, 0, 0.2)' ] * labels.length,
      borderColor: [ 'rgba(0, 255, 0, 1)' ] * labels.length,
      borderWidth: 1,
    }
  ]

  send_event('devlevLinechart', { labels: labels, datasets: data })

end
