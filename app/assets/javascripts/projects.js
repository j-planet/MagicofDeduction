//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery(function($) {
    function selectTab(e) {
        e.preventDefault();

        $(".projectSide .active").removeClass("active");
        $(this).addClass("active");

        $(".projectContent div").hide();
        $("#project_" + $(this).data("projectid")).show();
    }

    $(".projectSide li").click(selectTab);

    $(".projectSide li:first").click();
});

