// Generated by CoffeeScript 1.4.0
(function() {

  $(function() {
    var counter, intervals, movers, positions;
    positions = $(".challenge4 .code div");
    positions.filter(function(idx) {
      return idx % 3 === 0;
    }).hover((function(evt) {
      var self;
      self = $(this);
      return self.css({
        color: "red"
      });
    }), (function(evt) {
      var self;
      self = $(this);
      return self.css({
        color: "#fff"
      });
    }));
    positions.filter(function(idx) {
      return idx % 3 === 2;
    }).hover((function(evt) {
      var self;
      self = $(this);
      return self.css({
        background: "blue"
      });
    }), (function(evt) {
      var self;
      self = $(this);
      return self.css({
        background: "-webkit-radial-gradient(center, ellipse cover,  #71935a 0%,#306306 99%)"
      });
    }));
    intervals = [];
    counter = 0;
    movers = positions.filter(function(idx) {
      return idx % 3 === 1;
    });
    movers.hover((function(evt) {
      var self;
      self = $(this);
      return intervals.push(setInterval((function() {
        var toggler;
        toggler = counter++ % 2;
        if (toggler) {
          return self.css({
            left: 0
          });
        } else {
          return self.css({
            left: "100%"
          });
        }
      }), 2000));
    }), (function(evt) {
      var self;
      self = $(this);
      return self.css({
        color: "#fff"
      });
    }));
    return movers.click(function() {
      return intervals.forEach(function(interval) {
        return clearInterval(interval);
      });
    });
  });

}).call(this);
