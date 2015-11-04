$ ->
  Reveal.initialize
    history: true
    fragments: true
    showNotes: true
    dependencies: [
      {src: 'reveal.js-3.1.0/plugin/notes/notes.js'}
    ]


  Reveal.addEventListener 'slidechanged', (event) ->
    MathJax.Hub.Rerender()
