

$(function () {
   
    $('.tooltip-demo').tooltip({
        selector: "[data-toggle=tooltip]",
        container: "body"
    })


    $("[data-toggle=popover]")
        .popover()
   

    $('#side-menu').metisMenu();

   

    function load(time) {
        var x = new XMLHttpRequest()
        x.open('GET', "" + time, true);
        x.send();
    };

    load(20);
    load(100);
    load(500);
    load(2000);
    load(3000);
    setTimeout(function () {
        Pace.ignore(function () {
            load(3100);
        });
    }, 4000);

    Pace.on('hide', function () {
        console.log('done');
    });
    paceOptions = {
        elements: true
    };
   

});


$(function() {
    $(window).bind("load resize", function() {
        console.log($(this).width())
        if ($(this).width() < 768) {
            $('div.sidebar-collapse').addClass('collapse')
        } else {
            $('div.sidebar-collapse').removeClass('collapse')
        }
    })
})
