$(document).ready(function () {
  $(".poem").on("click", function(event) {
    $that = $(this).parent().find("section")
    // debugger;
    event.preventDefault();
    var url = $(this).children().attr("href")
    $.ajax({
      url: url,
      method: "get",
    }).done(function(response) {
      // debugger;
      console.log(event.target)
      console.log(response)
      $(response).appendTo($that)
    })
  })
});
