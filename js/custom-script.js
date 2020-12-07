
	$( ".popup-registration" ).dialog({
        height: 250,
        width:400,
        autoOpen: false,
        modal: true,
    });

	$(".soumettre-btn").click(function() {
        $(".popup-registration").dialog("open");
    });

    $(".OK-btn").click(function() {
        $(".popup-registration").dialog("close");
    });

    $('#buttoir').datepicker();

