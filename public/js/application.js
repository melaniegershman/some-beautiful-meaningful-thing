$(document).ready(function () {
  $(".poem").on("click", function(event) {
    $that = $(this).parent().find("section")
    event.preventDefault();
    var url = $(this).children().attr("href")
    if ($(".single-poem").length > 0) {
      $(".single-poem").remove();
    } else {
    $.ajax({
      url: url,
      method: "get",
    }).done(function(response) {
      // debugger;
      console.log(event.target)
      console.log(response)
      $(response).appendTo($that)
    })

    }
  })
});
