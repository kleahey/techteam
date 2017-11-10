require 'httparty'
require 'date'
require 'json'
require 'pp'
require 'time'
require 'logger'

# Velocity Chart
labels = ['Transfer App (SDS)', 'Transfer App (Front End)', 'Insight', 'ADA', 'UX', 'Self Service CC', 'Open API']

data =  [{
        label: 'Completed',
        data: [7, 3, 12, 7, 11, 11, 9],
        backgroundColor: [
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)',
          'rgba(0, 204, 0, 0.3)'
        ],
        borderColor: [
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)',
          'rgba(0, 204, 0, 1.0)'
        ],
        borderWidth: 1
      },
      {
        label: 'Target',
        data: [2, 1, 0, 0, 0, 0, 0],
        backgroundColor: [
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)',
          'rgba(66, 244, 179, 0.1)'
        ],
        borderColor: [
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
          'rgba(66, 244, 179, 1.0)',
        ],
        borderWidth: 1
      },
      {
        label: 'Remaining',
        data: [15, 6, 13, 11, 16, 14, 11],
        backgroundColor: [
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)',
          'rgba(255, 255, 255, 0.2)'
        ],
        borderColor: [
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
          'rgba(255, 255, 255, 1.0)',
        ],
        borderWidth: 1
      }
    ]

options = {
  scales: {
    yAxes: [{
        stacked: true,
        ticks: {
          beginAtZero: true,
          fontFamily: 'Roboto',
          fontSize: 18,
          fontColor: 'rgba(255, 255, 255, 0.6)'
        }
      }],
      xAxes: [{
        stacked: true,
        ticks: {
          beginAtZero: true,
          fontFamily: 'Roboto',
          fontSize: 18,
          fontColor: 'rgba(255, 255, 255, 1.0)'
        }
      }]
  },
  legend: {
    display: true,
    labels: {
      fontColor: 'rgba(255, 255, 255, 1.0)',
      fontSize: 18,
      fontFamily: 'Roboto'
    }
  }
 }

send_event('releaseProgress', { labels: labels, options: options, datasets: data })
