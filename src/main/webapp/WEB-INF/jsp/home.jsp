<html>
<head>
	<title>Home</title>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>

	<script type="text/javascript">
	
		$(document).ready(function() {
			
			// Check The Status Every 2 Seconds
			var timer = setInterval(function() {
				
				$.ajax({
					  url: 'reportstatus.json',
					  success: function(data) {
						
						if(data === 'COMPLETE') {
							$('#reportLink').html("<a target='_target' href='report.html'>Download the New Report</a>");	
							clearInterval(timer);
						}
					  }
				});
			    
			}, 2000);
		});
		
	</script>

</head>
<body bgcolor="yellow">
<center>
<h1>
  Welcome to Report Generator Page 
</h1>
<div  id="reportLink">The Report Is Being Generated... Please Wait to get the download link</div>
</center>
</body>
</html>
