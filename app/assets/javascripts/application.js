// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function colourCycle(element, id) {
    const elementById = document.getElementById(id)
    $(element).hover(
        function changeColor(){
            for (let i = 0; i < rgb.length; i++) {
                if (up[i]) {
                    rgb[i]++;
                } else {
                    rgb[i]--;
                }
                if (rgb[i] >= 256) {
                    up[i] = false
                } else if (rgb[i] <= 0) {
                    up[i] = true
                }
            }

            elementById.style.backgroundColor = "rgb(" + rgb[0] + "," + rgb[1] + "," + rgb[2] + ")"
            if ($(element).is(":hover")) {
                setTimeout(function(){changeColor()}, 10);
            }
        }
    )

}