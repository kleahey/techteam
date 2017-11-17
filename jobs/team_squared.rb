require 'httparty'
require 'date'
require 'json'
require 'pp'
require 'time'
require 'logger'

# Velocity Chart
labels = ['TT - Sprint 1', 'TT - Sprint 2', 'TT - Sprint 3', 'TT - Sprint 4', 'TT - Sprint 5', 'TT - Sprint 6']
data = [
  {
    label: 'Committed Velocity',
    data: [0, 33, 26, 15, 37, 28],
    backgroundColor: [ 'rgba(192, 192, 192, 0.2)' ] * labels.length,
    borderColor: [ 'rgba(192, 192, 192, 1)' ] * labels.length,
    borderWidth: 1,
  }, {
    label: 'Actual Velocity',
    data: [6, 15, 19, 7, 24, ],
    backgroundColor: [ 'rgba(0, 255, 0, 0.2)' ] * labels.length,
    borderColor: [ 'rgba(0, 255, 0, 1)' ] * labels.length,
    borderWidth: 1,
  }
]
options = { }

send_event('ttBarchart', { labels: labels, datasets: data, options: options })
