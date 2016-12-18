var n = 0;
App.painter = App.cable.subscriptions.create("PainterChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    if(window.location.pathname == '/table'){
      var canvas = document.getElementById("canvas");
      var ctx = canvas.getContext("2d");
      ctx.beginPath();
      ctx.moveTo((data.cords.start[0] -20) , (data.cords.start[1]-50));
      ctx.lineTo((data.cords.end[0]- 20), (data.cords.end[1]-50));
      ctx.strokeStyle = "black";
      ctx.lineWidth = 5;
      ctx.stroke();
      ctx.closePath();
    }
    else if(n == 0){
      $.notify({
        message: 'Kurwa malują po tablicy !!'
      });
    }
    n++;
    if(n==1000) n = 0;
  },
  speak: function(data) {
    return this.perform('speak', data);
  }
});
console.log(App.paint)
