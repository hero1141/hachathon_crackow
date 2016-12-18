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
      if('start' in data.cords) {
        app.paths.push({
            color: data.cords.color,
            size: data.cords.size,
            points: [{
                x: data.cords.start[0],
                y: data.cords.start[1]
            }]
          });
      }
      else if('end' in data.cords) {
        app.paths[app.paths.length - 1].points.push({
            x: data.cords.end[0],
            y: data.cords.end[1]
        });
      }
      else if('coords' in data.cords) {
        app.paths[app.paths.length - 1].points.push({
            x: data.cords.coords[0],
            y: data.cords.coords[1]
        }); 
      }
      else if('clear' in data.cords){
          app.paths = [];
      }
    }
    else if(n == 0){
      $.notify({
        message: 'Ktoś pisze na TABLICY!'
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
