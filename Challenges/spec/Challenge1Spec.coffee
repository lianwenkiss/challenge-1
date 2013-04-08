describe "Challenge 1", ->

  beforeEach ->
    # Can't user XHR without a server, must append HTML directly
    setFixtures """
      <div class="challenge1">
        <div class="description">
          <h2>Challenge 1</h2>
          <p>Make the following HTML code match the following image using only CSS.</p>
          <img src="http://dl.dropbox.com/u/26385406/challenge1.png"  />
        </div>

        <div class="code">
          <div>I am first</div>
          <div>I am in the middle</div>
          <div>I am last</div>
        </div>
      </div>
    """

    @positions = $(".challenge1 .code div")
    
  it "should have floated divs, 100px wide, 100 px tall", ->
    expect(@positions).toHaveCss
      width: "100px"
      float: "left"
      height: "100px"

  it "should have thin, white, Helvetica or sans-serif font", ->
    expect(@positions).toHaveCss
      'font-family': "Helvetica, sans-serif"
      'font-weight': "300"
      color: "rgb(255, 255, 255)"

  it "should have divs with radial gradient backgrounds", ->
    @positions.each (idx, position) ->
      backgroundColor = $(position).css('background')
      expect(backgroundColor).toContainTextValue 'radial'

