describe "Challenge 4", ->

  beforeEach ->
    setFixtures """
      <div class="challenge4">
        <div class="description">
          <h2>Challenge 3</h2>
          <p>Apply the following animations to the styling from Challege 2 using only CSS</p>
          <ul>
              <li>1. Animate the text color of the left align divs to red on mouse over.</li>
              <li>2. Animate the background color of the right align divs to blue on mouse over.</li>
              <li>3. Animate the center align divs to slide back and forth horizontally on mouse over.</li>
              <li>4. Halt animation of the center divs when mouse is clicked.</li>
          </ul>
          <img src="http://dl.dropbox.com/u/26385406/challenge3.png"  />
        </div>

        <div class="code">
          <div>I am first</div><div>I am in the middle</div><div>I am last</div>
          <div>I am first</div><div>I am in the middle</div><div>I am last</div>
        </div>
      </div>
    """

    @positions = $(".challenge4 .code div")