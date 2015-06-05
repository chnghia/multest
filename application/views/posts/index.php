<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>listing</title>
  <link rel="stylesheet" href="<?php echo base_url("assets/css/bootstrap.css"); ?>" />
  <link rel="stylesheet" href="<?php echo base_url("assets/css/main.css"); ?>" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url("assets/js/bootstrap.js"); ?>"></script>

  <script type="text/javascript">

    function post_search(query, page) {
      $("div#LoadingImage").show();
      $("div#results").hide();
      $.getJSON("<?php echo base_url("search"); ?>", {query: query, page: page}, function(result) {

        if (result.count == 0) {
          $("div#results table").empty().append("<h3> no data </h3>");
        } else {
          $("div#results table").empty();
          $("div#results ul.pagination").empty();
          var table = "";
          for (var i=0; i<result.data.length; i++) {
            row = "<tr>";
            row += "<td style=\"width:60px\"><div class=\"media-middle\">";
            row += "<img class=\"media-object\" src=\"" + result.data[i]["profile_image_url"] + "\" alt=\"\">";
            row += "</div></td>";
            row += "<td style=\"width:100px\">" + result.data[i]["name"] + "</td>";
            row += "<td>" + result.data[i]["text"] + "</td>";
            row += "</tr>";
            table += row;
          }
          $("div#results table").append(table);

          var pre = "";
          if (result.page == 1) {
            pre += "<li class=\"disabled\"><a href=\"#\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>";
          } else {
            pre += "<li><a href=\"#\" onclick=\"post_search('"+query+"',"+ (result.page-1) +")\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>";
          }
          var nex = "";
          if (result.page == (Math.floor(result.count/result.limit)+1)) {
            nex += "<li class=\"disabled\"><a href=\"#\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>";
          } else {
            nex += "<li><a href=\"#\" onclick=\"post_search('"+query+"',"+ (result.page+1) +")\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>"; 
         }


          var paging = "";
          paging += pre;
          for (var i=0; i< Math.floor(result.count/result.limit)+1; i++) {
            if ((i+1) == result.page) {
              paging += "<li class=\"active\"><a href=\"#\">" + (i+1) + "<span class=\"sr-only\">(current)</span></a></li>";
            } else {
              paging += "<li><a href=\"#\" onclick=\"post_search('"+query+"',"+ (i+1) +")\" \">" + (i+1) + "</a></li>";
            }
          }
          paging += nex;

          $("div#results ul.pagination").append(paging);
        }

        setTimeout(function(){
          $("div#LoadingImage").hide();
          $("div#results").show();
        }, 300); 
      });
    }

    $( document ).ready(function() {
      post_search('dog,cat', 1);
    });
  </script>
</head>
<body>
  <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted">nghiach</h3>
      </div>

      <div class="panel actionbar">
        <div class="btn-group btn-group-justified" role="group">
          <a class="btn btn-lg btn-success" href="#" onclick="post_search('dog', 1);" role="button">Dog</a>
          <a class="btn btn-lg btn-success" href="#" onclick="post_search('cat', 1);" role="button">Cat</a>
          <a class="btn btn-lg btn-success" href="#" onclick="post_search('dog,cat', 1);" role="button">Dog or Cat</a>
        </div>
      </div>

      <div class="">
          <div id="results">
            <div class="">
              <table class="table-bordered">
              </table>
            </div>
            <nav>
              <ul class="pagination">
              </ul> 
            </nav>
          </div>
          <div id="LoadingImage" class="panel panel-default" style="display: none">
            <img src="<?php echo base_url("assets/images/ajax-loader.gif"); ?>" class="ajax-loader"/>
          </div>
      </div>
    </div> <!-- /container -->
</body>
</html>