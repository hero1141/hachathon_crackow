App.painter = App.cable.subscriptions.create("PainterChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log('dziaua')
    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    ctx.beginPath();
    ctx.moveTo((data.cords.start[0] -20) , (data.cords.start[1]-50));
    ctx.lineTo((data.cords.end[0]- 20), (data.cords.end[1]-50));
    ctx.strokeStyle = "black";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.closePath();
    // Called when there's incoming data on the websocket for this channel
  },

  speak: function(data) {
    return this.perform('speak', data);
  }
});
console.log(App.paint)
