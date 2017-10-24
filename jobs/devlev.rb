require 'httparty'
require 'date'
require 'json'
require 'pp'
require 'time'
require 'logger'

labels = ['25-Sept', '26-Sept', '27-Sept', '28-Sept', '29-Sept', '30-Sept', '1-Oct', '2-Oct', '3-Oct',
  '4-Oct', '5-Oct', '6-Oct', '7-Oct', '8-Oct', '9-Oct', '10-Oct', '11-Oct', '12-Oct', '13-Oct', '14-Oct',
  '15-Oct', '16-Oct', '17-Oct', '18-Oct', '19-Oct', '20-Oct', '21-Oct', '22-Oct', '23-Oct']


  data = [
    {
      label: "Created",
      data: [2, 4, 4, 6, 6, 6, 6, 7, 9, 9, 9, 10, 10, 10, 12, 13, 13, 13, 13, 13, 13, 14, 17, 17, 17, 19, 19, 19, 19],
      backgroundColor: [ 'rgba(255, 99, 132, 0.2)' ] * labels.length,
      borderColor: [ 'rgba(255, 99, 132, 1)' ] * labels.length,
      borderWidth: 1,
    }, {
      label: "Resolved",
      data: [3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 8, 9, 15, 17, 24, 26, 26, 26, 30],
      backgroundColor: [ 'rgba(0, 255, 0, 0.2)' ] * labels.length,
      borderColor: [ 'rgba(0, 255, 0, 1)' ] * labels.length,
      borderWidth: 1,
    }
  ]

  send_event('devlevLinechart', { labels: labels, datasets: data })
