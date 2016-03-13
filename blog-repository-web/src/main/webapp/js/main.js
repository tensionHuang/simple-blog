function showBlogCreatePanel() {

    var $target = $('#newBlogContent'),
        $button = $('#newBlogButton'),
        url = '/neo-career-app-web/edit';

    $button.hide();
    $target.load(url, function (response, status, xhr) {
        /* $refreshbtn = target.find('#refreshbtn');
         target.removeClass('loading'); */
        /* $refreshbtn.removeClass('glyphicon-refresh-animate'); */
        if (status == 'error') {
            console.log("ERROR: ", response);
        }
    });
}

function cancelNewBlog() {
    var $content = $('#newBlogContent'),
        $button = $('#newBlogButton');
    $content.hide();
    $button.show();
}
