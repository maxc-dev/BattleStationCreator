$(document).on("click",".appDetails", function () {
    let clickedImgID = $(this).attr('id');
    alert('you clicked on button #' + clickedImgID);
});