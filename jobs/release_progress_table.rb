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
      { class: 'center', value: 7 },
      { class: 'center', value: 9 },
      { class: 'center', value: 24 },
      { class: 'center', value: 2 },
      { class: 'center', value: 15 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Transfer App (Front End)' },
      { class: 'center', value: 3 },
      { class: 'center', value: 4 },
      { class: 'center', value: 10 },
      { class: 'center', value: 1 },
      { class: 'center', value: 6 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Insight' },
      { class: 'center', value: 12 },
      { class: 'center', value: 8 },
      { class: 'center', value: 21 },
      { class: 'center', value: 0 },
      { class: 'center', value: 13 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'ADA' },
      { class: 'center', value: 7 },
      { class: 'center', value: 6 },
      { class: 'center', value: 17 },
      { class: 'center', value: 0 },
      { class: 'center', value: 11 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'UX' },
      { class: 'center', value: 11 },
      { class: 'center', value: 9 },
      { class: 'center', value: 25 },
      { class: 'center', value: 0 },
      { class: 'center', value: 16 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Self Service CC' },
      { class: 'center', value: 11 },
      { class: 'center', value: 8 },
      { class: 'center', value: 22 },
      { class: 'center', value: 0 },
      { class: 'center', value: 14 }
    ]
  },
  {
  cols: [
      { class: 'center', value: 'Open API' },
      { class: 'center', value: 9 },
      { class: 'center', value: 6 },
      { class: 'center', value: 17 },
      { class: 'center', value: 0 },
      { class: 'center', value: 11 }
    ]
  }
]

send_event('progressTable', { hrows: hrows, rows: rows } )
