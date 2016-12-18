App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    if(data.alert && window.location.pathname != '/messages'){
      $.notify({
      	message: '<a href="messages?receiver_id='+data.alert.id+'">New message from'+data.alert.email+' </a>'
      },{
      	icon_type: 'image'
      });
    }
    $('.mess').append(data.message);
    // Called when there's incoming data on the websocket for this channel
  }
});
