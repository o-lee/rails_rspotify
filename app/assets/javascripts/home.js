// this sets up a new namespace so we don't pollute the global
var Curator = {
	url: window.location.href
};

var listEnum = {
	Mood: {
		placeholder: "I'm feeling...",
		list: ["Happy", "Sad", "Angry"]
	},
	Artist: {
		placeholder: "I want to hear...",
		list: []
	},
	Genre: {
		placeholder: "I'm in the mood for...",
		list: ["Rock", "Hip Hop", "Country", "R&B"]
	},
	Activity: {
		placeholder: "I'm going to...",
		list: ["Run", "Box", "Clean", "Walk", "Sleep"]
	},
};

// once the document is ready, do all this stuff
$(document).ready(function() {

	// setup the autocomplete for the list
	$("#select-playlist").autocomplete();
	$("#select-playlist").keyup(function() {
		if($("#filter").val() === "Artist" && $(this).val() !== "") {
			var search = $(this).val();
			$.get(Curator.url + "home/artists/" + search, function(data) {
				listEnum.Artist.list = data;
				
				// set the autocomplete source
				$("#select-playlist").autocomplete({source: listEnum['Artist'].list});
				$("#select-playlist").autocomplete("search", search);
			}); 
		}
	});

	// add the event handler for when the select changes
	$("#filter").change(function(e) {
		var option = $(this).val();
		if(option != "") {
			console.log(option);
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
