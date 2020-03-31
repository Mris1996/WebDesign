
 var tasknumber = 0; 
   function createtable() 
	  
	  {
		  tasknumber++;
		  if(tasknumber == 1){
			  
			  alert("Press and hold the Shift key and move the mouse to draw! Click on cell if you want to erase that box's colour!");
		  }
		document.getElementById("restart").style.visibility = "hidden";
		document.getElementById("stop").style.visibility = "visible";
		document.getElementById("gamestart").style.visibility = "hidden";
		
		var celldata = document.getElementById('celldata').value;
		var rows = document.getElementById('rows').value;
		var columns = document.getElementById('columns').value;
		var height = document.getElementById('height').value;
		var width = document.getElementById('width').value;
		var myTable = document.getElementById("generatedTable");
        var table = document.createElement('TABLE');
        var tableBody = document.createElement('TBODY');
        table.appendChild(tableBody);
        for (var y = 0; y < rows; y++)
		{
          var tr = document.createElement('TR');
          tableBody.appendChild(tr);
		  
          for (var x = 0; x < columns; x++) 
		  {
            var td= document.createElement('TD');
            td.width = width;
            td.height = height;
			

            var cellID = "cell [" + x + ", " + y + "]";
            td.setAttribute("id", cellID.toString());
			
			
 	td.addEventListener("mouseover", function(eventh) {
		 if (eventh.shiftKey ==1){
		eventh.target.style.backgroundColor = document.getElementById( "colourc").value; 
		 }
		});	
	 td.addEventListener("click", function(eventh) { 
		eventh.target.style.backgroundColor = "white"; 
	 });

	  if (celldata == null || celldata == "") {
						            
                         td.appendChild(document.createTextNode("Cell " + x + "," + y ));
                    } else {
					
						 td.appendChild(document.createTextNode(celldata));
                    }

            tr.appendChild(td);
          }
        }
        myTable.appendChild(table);
		  
		} 
	  
	
  var  ct;  
   function starttimer() {
	   alert("You have 60 seconds to finish Round: " + tasknumber);
	    
	     var x = 60;
	ct=setInterval(function (){document.getElementById("timer").innerHTML = --x; if(x == 0){clearInterval(ct);stoptimer();}},  1000);
   
     
   }
   
   
   
   
   	function restarttable() {
	table.style.pointerEvents = "auto";
	document.getElementById("gamestart").style.visibility = "visible";
	document.getElementById("restart").style.visibility = "hidden";
	document.getElementById("timer").innerHTML = "60";
	var tab = document.getElementById("generatedTable");
	tab.innerHTML = null;
	
	 
	}





   function stoptimer()
{		
	clearInterval(ct);
	table.style.pointerEvents = "none";
	document.getElementById("restart").style.visibility = "visible";
	document.getElementById("stop").style.visibility = "hidden";
	var score1 = Number(document.getElementById("timer").innerHTML);
	var s2 =  Number(document.getElementById("timer").innerHTML);
	var score2 = score1+s2;
	var s3 =  Number(document.getElementById("timer").innerHTML);
	var score3 = score2+s3;
	if(tasknumber == 1){
	
	document.getElementById("score").innerHTML = "Task:"+tasknumber+ " Score: "+ score1;
	
	}
	if(tasknumber == 2){
			
	document.getElementById("score").innerHTML = "Task:"+tasknumber+ " Score: "+score2;
	
	}
      if(tasknumber == 3){
	
	alert("Your final score is "+ score3 +" Thank you and good bye!");
	
		location.reload(true);
	
	} 
}	
	
	function maxLengthCheck(object){
		
	if(object.value.length > object.maxLength)
	object.value = object.value.slice(0,object.maxLength)
	}
	
	function maxvalue(maxval){
		
	maxval.setAttribute("max", "50");
	maxval.setAttribute("min", "1");	
	}
	function maxvalue2(maxval){
		
	maxval.setAttribute("max", "100");
	maxval.setAttribute("min", "1");	
	}

function reveal(){
	document.getElementById("gameimg").style.visibility = "visible";
	var img = document.getElementById("gameimg");
	if(tasknumber == 1){
	img.src = "rnd1.jpg";
	}
	if(tasknumber == 2){
	img.src = "rnd2.jpg";
	}
	if(tasknumber == 3){
	img.src = "rnd3.jpg";
	}
	document.getElementById("timer").style.display = "block";
 
		} 

	