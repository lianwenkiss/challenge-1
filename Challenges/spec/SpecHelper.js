beforeEach(function() {
  this.addMatchers({
    toBePlaying: function(expectedSong) {
      var player = this.actual;
      return player.currentlyPlayingSong === expectedSong && 
             player.isPlaying;
    },

    toContainTextValue: function(expected) {
      var actual = this.actual;
      return ~this.actual.indexOf(expected);
    }
  });
});
