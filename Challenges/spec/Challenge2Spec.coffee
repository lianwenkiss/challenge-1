describe "Challenge 2", ->

  beforeEach ->

    setFixtures """
      <div class="challenge2">
        <div class="description">
            <h2>Challenge 2</h2>
            <p>Make the following HTML code match the following image using only CSS.</p>
            <img src="http://dl.dropbox.com/u/26385406/challenge2.png"  />
        </div>

        <div class="code">
            <div>I am first</div><div>I am in the middle</div><div>I am last</div>
            <div>I am first</div><div>I am in the middle</div><div>I am last</div>
        </div>
      </div>
    """

    @positions = $(".challenge2 .code div")

  it "puts first and fourth divs on the left", ->
    @positions.filter( (idx) -> idx % 3 == 0 ).each (idx, position) ->
      position = $(position)
      expect(position).toHaveCss
        float: "left"

  it "puts third and sixth divs on the right", ->
    @positions.filter( (idx) -> idx % 3 == 2 ).each (idx, position) ->
      position = $(position)
      expect(position).toHaveCss
        float: "right"

  it "puts the second and fifth divs in the center", ->
    @positions.filter( (idx) -> idx % 3 == 1 ).each (idx, position) ->
      position = $(position)
      expect(position).toHaveCss
        position: "absolute"
