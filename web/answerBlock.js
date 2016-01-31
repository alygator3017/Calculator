function hideAnswerBlock(s) {
    var shape = s;
    if (shape === null) {
        $('#answer').hide();
        console.log("hidden");
    } else {
        $('#answer').show();
        console.log("shown");
    }
    ;
}


