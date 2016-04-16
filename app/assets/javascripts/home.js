// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// this sets up a new namespace so we don't pollute the global
var Curator = {
	url: (window.location.href).replace("/projects", "")
};

var listEnum = {
	emotion: {
		placeholder: "I'm feeling...",
		list: ["Happy", "Sad", "Angry"]
	},
	artist: {
		placeholder: "I want to hear...",
		list: ["Adele", "Blink 182", "Cold Play", "EverFound", "Falling Up", "Relient K"]
	},
	genre: {
		placeholder: "I'm in the mood for...",
		list: ["Rock", "Hip Hop", "Country", "R&B"]
	},
	activity: {
		placeholder: "I'm going to...",
		list: ["Run", "Box", "Clean", "Walk", "Sleep"]
	},
};

// once the document is ready, do all this stuff
$(document).ready(function() {

	// setup the autocomplete for the list
	$("#select-playlist").autocomplete();

	// add the event handler for when the select changes
	$("#filter").change(function(e) {
		var option = $(this).val();
		if(option != "") {
		   // enable to textbox and change the placeholder
		   $("#select-playlist").prop("disabled", false);
		   $("#select-playlist").prop("placeholder", listEnum[option].placeholder);

		   // set the autocomplete source
		   $("#select-playlist").autocomplete({source: listEnum[option].list});
		}
	});

	// click event for the generate button
	$("#get-playlist").click(function(e) {
		$("#dialog").dialog("open");
		var uri = window.location;
		location.href = uri + "/playlist/" + $("#select-playlist").val();
	});

  // setup the dialog box
  $( "#dialog" ).dialog({
     dialogClass: "no-close",
     autoOpen: false,
     modal: true,
        buttons: [
          {
            text: "OK",
            click: function() {
              $( this ).dialog( "close" );
            }
           }
         ]
   });
});