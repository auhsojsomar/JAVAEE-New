<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <title>JAVAEE - What date is it?</title>
</head>
<style>
  .datepicker {
    cursor:pointer;
  }
  .toast {
    background:red;
  }
</style>
<body>
  <div class="wrapper">
    <nav class="nav-wrapper teal darken-4">
      <div class="container">
        <a href="#" class="brand-logo">Logo</a>
        <ul class="right hide-on-med-and-down">
          <li><a href="">Home</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="about.jsp">About</a></li>
        </ul>
      </div>
    </nav>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
      <li>
        <a href="color-game.jsp">Color Game</a>
      </li>
      <li>
        <a href="name-compatibility.jsp">Name Compatibility</a>
      </li>
      <li>
        <a href="javascript:void(0)">What date is it?</a>
      </li>
      <li>
        <a href="cooking.jsp">Who is cooking?</a>
      </li>
      <li>
        <a href="human-evolution.jsp">Human Evolution</a>
      </li>
      <li>
        <a href="human-randomizer.jsp">Human Randomizer</a>
      </li>
      <li>
        <a href="passing-chances.jsp">Passing Chances</a>
      </li>
      <li>
        <a href="quiz-app.jsp">Quiz Application</a>
      </li>
      <li>
        <a href="task-checker.jsp">Task Checker</a>
      </li>
      <li>
        <a href="binary-addition.jsp">Binary Addition</a>
      </li>
    </ul>
  </div>
  <div id="what-date">
    <div class="row">
      <div class="col s12 m12 l6 offset-l3">
        <div class="card horizontal" style="margin-top: 35px; height: 90vh !important;">
          <div class="card-stacked">
            <div class="card-content">
              <div class="container-fluid">
                <span class="card-title center-align"> <strong>What date is it?</strong> </span>
                <ul class="browser-default">
                  <li>
                    <p class="lead">The system will check wether the date chosend is behind, future or now</p>
                  </li>
                </ul>
                <input type="text" class="datepicker" readonly>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="../materialize/js/materialize.js"></script>
    <script>
      $(".dropdown-trigger").dropdown({
        coverTrigger: false,
        hover: true,
        constrainWidth: false
      });
      $(document).ready(function(){
        $('.datepicker').datepicker();
      });
      $('.datepicker').change(function(){
        if($('.datepicker').val() == ''){
          M.toast({html: 'Choose date!'});
        }
        else{
          let options = { year: 'numeric', month: 'long', day: 'numeric' };
          let date = $('.datepicker').val();
          let date_now = new Date();
          let new_date = date_now.toLocaleDateString("en-US", options);
          if(new Date(date) < new Date(new_date)){
             alert('before');
          }
          else if(new Date(date) > new Date(new_date)){
            alert('after');
          }
          else{
            alert('now');
          }
        }
      });
    </script>
</body>
</html>