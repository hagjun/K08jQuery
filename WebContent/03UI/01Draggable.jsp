<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02Droppable.jsp</title>
<link rel="stylesheet" href="../common/bootstrap4.5.3/css/bootstrap.css" />
<script src="../common/jquery/jquery-3.5.1.js"></script>
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
#draggable {
   width: 100px;
   height: 100px;
   padding: 0.5em;
   float: left;
   margin: 10px 10px 10px 0;
}

#droppable {
   width: 150px;
   height: 150px;
   padding: 0.5em;
   float: left;
   margin: 10px;
}
</style>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
   $(function() {
      $("#draggable").draggable();
      $("#droppable").droppable(
            {
               drop : function(event, ui) {
                  $(this).addClass("ui-state-highlight").find("p").html(
                        "Dropped!");
               }
            });
   });
</script>

</head>
<body>
   <div id="draggable" class="ui-widget-content">
      <p>Drag me to my target</p>
   </div>

   <div id="droppable" class="ui-widget-header">
      <p>Drop here</p>
   </div>
</body>
</html>