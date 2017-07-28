// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function sendTextMessage(number, content) {
  return {
  "async": true,
  "crossDomain": true,
  "url": "https://api.twilio.com/2010-04-01/Accounts/ACa19d0e8adca65c6c86e46f52d802005f/Messages.json",
  "method": "POST",
  "headers": {
    "authorization": "Basic QUNhMTlkMGU4YWRjYTY1YzZjODZlNDZmNTJkODAyMDA1Zjo5NjViYmFhNDFmNGE4NTZjNTNjMDIxMjBkZTgxNmQ5OQ==",
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",

  },
  "data": {
    "To"  :   number,
    "From":   "+19099395724",
    "Body":   content
  }
}


}

var ready =  function(){
  // send message to farmer
  $(".message-farmer").unbind('click').click(function(){
      var farmer          = $.parseJSON($(this).attr("farmer"));
      var name            = farmer.name;
      var numberOfAnimals = farmer.number_of_animals;
      var phoneNumber     = farmer.phone_number;
      var profilePic      = farmer.profile_pic;
      var farmSize        = farmer.farm_size;
      var farmLocation    = farmer.farm_location;
      var Addresse        = farmer.address;
      var email           = "micnkru@gmail.com";

      var content =  "Hello " + name + ". we have notices animal 24 needs immediate attention. We have contacted a vet officer to come check up on your farm immediately. Thank You."
      var $this =  $(this);
      $this.text("sending..");

      $.ajax(sendTextMessage("+233" + phoneNumber, content)).done(function (response) {
        console.log(response);
        $this.text("sent");
      });

    });


    //send message to vet_officer
    $(".message-vet").unbind('click').click(function(){
      var vet_officer = $.parseJSON($(this).attr("vet_officer"));
      var location    = vet_officer.location;
      var address     = vet_officer.address;
      var name        = vet_officer.name;
      var phoneNumber = vet_officer.phone_number;

      var content =  "Hello Dr." + name + "A client from the volta region has an animal that could be suffering from indigestion. Please confirm if you are available to visit the farm. Thank You";
      var $this =  $(this);
      $this.text("sending..");

      $.ajax(sendTextMessage("+233" + phoneNumber, content)).done(function (response) {
        console.log(response);
        $this.text("sent");
      });

    })
}


$(document).on('page:load', ready);
$(document).on('turbolinks:load', ready);
