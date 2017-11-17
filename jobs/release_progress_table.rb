hrows = [
  {
    style: 'color:rgba(255, 255, 255, 0.5);',
    class: 'center',
    cols: [
      {class: 'center', value: 'Initiative'},
      {class: 'center', value: 'Completed'},
      {class: 'center', value: 'Target'},
      {class: 'center', value: 'Estimate'},
      {class: 'center', value: 'Target Progress'},
      {class: 'center', value: 'Remaining'}
    ]
  }
]

rows = [
  {
  cols: [
      { class: 'center', value: 'Transfer App (SDS)' },
      { class: 'center', value: 10 },
      { class: 'center', value: 14 },
      { class: 'center', value: 24 },
      { class: 'center', value: 4 },
      { class: 'center', value: 14 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Transfer App (Front End)' },
      { class: 'center', value: 7 },
      { class: 'center', value: 6 },
      { class: 'center', value: 11 },
      { class: 'center', value: 0 },
      { class: 'center', value: 4 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Insight' },
      { class: 'center', value: 14 },
      { class: 'center', value: 10 },
      { class: 'center', value: 17 },
      { class: 'center', value: 0 },
      { class: 'center', value: 3 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'ADA' },
      { class: 'center', value: 7 },
      { class: 'center', value: 10 },
      { class: 'center', value: 18 },
      { class: 'center', value: 3 },
      { class: 'center', value: 11 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'UX' },
      { class: 'center', value: 12 },
      { class: 'center', value: 13 },
      { class: 'center', value: 22 },
      { class: 'center', value: 1 },
      { class: 'center', value: 10 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Self Service CC' },
      { class: 'center', value: 11 },
      { class: 'center', value: 6 },
      { class: 'center', value: 11 },
      { class: 'center', value: 0 },
      { class: 'center', value: 0 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Open API' },
      { class: 'center', value: 13 },
      { class: 'center', value: 11 },
      { class: 'center', value: 20 },
      { class: 'center', value: 0 },
      { class: 'center', value: 7 }
    ]
  }
]

send_event('progressTable', { hrows: hrows, rows: rows } )
