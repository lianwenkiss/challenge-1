$ ->
  positions = $(".challenge4 .code div")
  positions.filter( (idx) -> idx % 3 == 0 ).hover(
    ( (evt) ->
      self = $(this)
      self.css color: "red"),
    ( (evt) ->
      self = $(this)
      self.css color: "#fff")
  )

  positions.filter( (idx) -> idx % 3 == 2 ).hover(
    ( (evt) ->
      self = $(this)
      self.css background: "blue"),
    ( (evt) ->
      self = $(this)
      self.css background: "-webkit-radial-gradient(center, ellipse cover,  #71935a 0%,#306306 99%)")
  )

  intervals = []
  counter = 0
  movers = positions.filter( (idx) -> idx % 3 == 1)
  movers.hover(
    ( (evt) ->
      self = $(this)
      intervals.push setInterval(
        ( ->
          toggler = counter++ % 2
          if toggler
            self.css left: 0
          else
            self.css left: "100%"
        ), 
        2000
      )
    ),
    ( (evt) ->
      self = $(this)
      self.css color: "#fff")
  )

  movers.click ->
    intervals.forEach (interval) ->
      clearInterval interval