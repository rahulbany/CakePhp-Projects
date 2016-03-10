<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes">
        
	<title> Login Page Admin </title>	 
			<?php echo $this->Html->css('admin/login/style.css'); ?>
	</head>
	<?php 
							############ Show Flash Message ##############
							$session = $this->request->session();
							if ($session->read('Flash.flash')): echo $this->Flash->render(); endif;
							############ End Flash Message ##############
				?>
	
	<body class="login-page">
		<div class="login-header">
			<a href="#">
			<?php echo $this->Html->image("login/login-terra-logo.png", [
					"alt" => "Terra App"
				]); ?></a>
		</div><!-- header -->
			<div class="login-wrapper">
				<h1>Credentials</h1>
			<?php echo  $this->Form->create('/admin', ['class'=>'smart-form client-form', 'id'=>'login-form']) ?>	
				<input type="text" placeholder="Login" name='login_name' />
				<input type="password" placeholder="Password"  name = "password"/>
				<input type="submit" value="proceed with caution" name="" />
				<?php echo $this->Html->link('Reset Credentials',['controller' => 'Users', 'action' => 'forgot_pass']);?>
				<!--a href="#">Reset Credentials</a-->
				<?php echo  $this->Form->end() ?>
			</div>
		<div class="login-footer">
			<a href="#">
			<?php echo $this->Html->image("login/login-terra-logo.png", [
					"alt" => "Terra App"
				]); ?></a>
		</div><!-- footer -->
	</body>
</html>
<?php echo $this->Html->script('jquery.min.js'); ?>
<script type="text/javascript">
		$(document).ready(function() {
			 $(".message.error").click(function() {
				//$(this).remove();
				$(this).slideUp(); 
				});
		/* 		setTimeout(function() {
				$(".message.error").hide('blind', {}, 500)
					}, 5000); */
				
		});	
</script>
