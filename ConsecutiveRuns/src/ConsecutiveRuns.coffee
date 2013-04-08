Array::findConsecutiveRuns = ->
  consecutives = []
  for currentVal, idx in @
    secondIdx = idx + 1
    thirdIdx = secondIdx + 1
    if thirdIdx <= @length - 1
      nextVal = @[secondIdx]
      diff = nextVal - currentVal
      # Check for the beginning of a series consecutive numbers
      if diff in [1, -1] and @[thirdIdx] is (@[secondIdx] + diff)
        consecutives.push idx

  if consecutives.length > 0
    return consecutives

  return null