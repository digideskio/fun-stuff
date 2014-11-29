// $(document).ready(function(){

// ( function() {
  function CustomAlert(){
    this.render = function(dialog){
      var winW = window.innerWidth;
      var winH = window.innerHeight;
      var dialogbox = document.getElementById('dialogbox');
      var dialogoverlay = document.getElementById('dialogoverlay');

      dialogoverlay.style.display = "block";
      dialogoverlay.style.height = winH + "px";

      //the 200 being subtracted from winW/2 is box width
      //divided by 2. Width is defined in CSS
      dialogbox.style.left = (winW/2) - 200 + "px";
      dialogbox.style.top = winH/2  - 100 + "px";
      dialogbox.style.display = "block";

      document.getElementById('dialogboxhead').innerHTML = "Acknowledge This Box";
      document.getElementById('dialogboxbody').innerHTML = dialog;
      document.getElementById('dialogboxfoot').innerHTML = "<button onclick = 'Alert.ok()'>OK</button>";
    }

    this.ok = function(){
      document.getElementById('dialogbox').style.display = "none";
      document.getElementById('dialogoverlay').style.display = "none";
    }
  }

  var Alert = new CustomAlert();

  var button1 = document.getElementById('button1');
  var button2 = document.getElementById('button2');
  var button3 = document.getElementById('button3');

  button1.addEventListener('click', function(){
    Alert.render("Heyoo!");
  });

  button2.addEventListener('click', function(){alert("button2!")});
  button3.addEventListener('click', function(){alert("button3!")});
  // })();

//   $('#button1').click(function(){
//     Alert.render("Heyooo!!!");
//   })

//   $('#button2').click(function(){
//       alert(this.id);
//     })
//   $('#button3').click(function(){
//       alert(this.id);
//     })

// })