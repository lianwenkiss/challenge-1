describe "Consecutive Runs", ->

  beforeEach ->
    @arr = []
    @arrOneItem = [1]
    @arrTwoItems = [1, 2]

  it "should return null when the array has fewer than 3 items", ->

    notAnArray = @arr.findConsecutiveRuns()
    expect(notAnArray).toBeNull()

    notAnArray = @arrOneItem.findConsecutiveRuns()
    expect(notAnArray).toBeNull()

    notAnArray = @arrTwoItems.findConsecutiveRuns()
    expect(notAnArray).toBeNull()

  describe "when the array has 3 or more items", ->

    beforeEach ->
      @arr = [1, 1, 1]
      @arrDoubles = [2, 4, 6]
      @arrSquares = [25, 16, 9, 4]

    it "should return null when the array has no consecutive numbers", ->
      notAnArray = @arr.findConsecutiveRuns()
      expect(notAnArray).toBeNull()

      notAnArray = @arrDoubles.findConsecutiveRuns()
      expect(notAnArray).toBeNull()

      notAnArray = @arrSquares.findConsecutiveRuns()
      expect(notAnArray).toBeNull()

    describe "and the array has consecutive numbers", ->
      
      beforeEach ->
        @arr = [1, 2, 3, 0]
        @arrTeens = [2, 12, 13, 14]
        @arrReverse = [4, 6, 1, 9, 8, 7, 25, 16, 9, 4]
        @arrMultiple = [0, 7, 4, 3, 4, 5, 8, 3, 2, 1]
        @arrOverlap = [1, 2, 3, 4, 5]

      it "should return an array when the consecutive numbers are increasing", ->
        anArray = @arr.findConsecutiveRuns()
        anotherArray = @arrTeens.findConsecutiveRuns()

        expect(anArray).toEqual(jasmine.any(Array))
        expect(anArray.length).toBe 1
        expect(anArray[0]).toBe 0

        expect(anotherArray).toEqual(jasmine.any(Array))
        expect(anotherArray.length).toBe 1
        expect(anotherArray[0]).toBe 1

      it "should return an array when the consecutive numbers are decreasing", ->
        anArray = @arrReverse.findConsecutiveRuns()
        expect(anArray).toEqual(jasmine.any(Array))
        expect(anArray.length).toBe 1
        expect(anArray[0]).toBe 3

      it "should return an array when there multiple sets of consecutive numbers", ->
        anArray = @arrMultiple.findConsecutiveRuns()
        expect(anArray).toEqual(jasmine.any(Array))
        expect(anArray.length).toBe 2
        expect(anArray[0]).toBe 3
        expect(anArray[1]).toBe 7

      it "should return an array when the consecutive numbers overlap", ->
        anArray = @arrOverlap.findConsecutiveRuns()
        expect(anArray).toEqual(jasmine.any(Array))
        expect(anArray.length).toBe 3