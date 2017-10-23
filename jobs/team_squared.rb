require 'httparty'
require 'date'
require 'json'
require 'pp'
require 'time'
require 'logger'

# Note: change this to obtain your chart data from some external source
labels = ['TT - Sprint 1', 'TT - Sprint 2', 'TT - Sprint 3', 'TT - Sprint 4']
data = [
  {
    label: 'Committed Velocity',
    data: [0, 33, 26, 18],
    backgroundColor: [ 'rgba(192, 192, 192, 0.2)' ] * labels.length,
    borderColor: [ 'rgba(192, 192, 192, 1)' ] * labels.length,
    borderWidth: 1,
  }, {
    label: 'Actual Velocity',
    data: [0, 10, 17, ],
    backgroundColor: [ 'rgba(0, 255, 0, 0.2)' ] * labels.length,
    borderColor: [ 'rgba(0, 255, 0, 1)' ] * labels.length,
    borderWidth: 1,
  }
]
options = { }

send_event('ttBarchart', { labels: labels, datasets: data, options: options })

=begin
class MyLog
  def self.log
    if @logger.nil?
      @logger = Logger.new STDOUT
      @logger.level = Logger::INFO
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end

class Jira
  include HTTParty
  format :json
  base_uri "https://cawiki.atlassian.net"
  basic_auth "kleahey", "Planet@ry77"
end

result = Jira.get("/rest/greenhopper/latest/rapid/charts/sprintreport?rapidViewId=27&sprintId=42")

data = result.parsed_response

MyLog.log.info data["contents"]["completedIssuesInitialEstimateSum"]["value"]
MyLog.log.info data[""]
=end