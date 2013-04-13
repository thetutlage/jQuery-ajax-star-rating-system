<?php include_once( 'libs/getItems.php' ); include_once( 'libs/ip.php' );?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="jquery/jRating.jquery.css" />
	<link rel="stylesheet" href="style.css" />
	<script type="text/javascript" src="jquery/jquery.js"></script>
	<script type="text/javascript" src="jquery/jRating.jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".rating").jRating({
				decimalLength : 1,
				rateMax : 5, // maximal rate - integer from 0 to 9999 (or more)
				phpPath: 'libs/rating.php',
				onSuccess: function(){
					alert('Your rating has been submitted');
				},
				onError: function(){
					alert('There was a problem submitting your feedback');
				}
			});
		});
	</script>
</head>
<body>
	
	<div id="wrapper">
		<h2> Articles Rating </h2>
		
		<?php if($allItems !== 0) { foreach($allItems as $value) {
			$allIpAddress = explode(',',$value['ip_address']);
			$current_ipAddress = GetUserIP();
			
			if(in_array($current_ipAddress,$allIpAddress))
			{
				$class = 'jDisabled';
			}
			else
			{
				$class = '';
			}
			
		?>
		<div class="items">
			<h4><?php echo $value['title']; ?></h4>
			<img src="<?php echo $value['image']; ?>" style="width:300px; height:150px;"/>
			<p><?php echo $value['description']; ?></p>
			<div class="rating <?php echo $class; ?>" id="<?php echo $value['rating']; ?>_<?php echo $value['id']; ?>"></div>
		</div>
		<?php } } ?>
	</div><!-- end wrapper -->
	

</body>
</html>
