<?php echo $this->Element('admin/adminHeader');?>
<?php echo $this->Element('admin/adminSidebar');?>
<div id="main" role="main">
	<div id="ribbon">
		<span class="ribbon-button-alignment"> 
			<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
			<i class="fa fa-refresh"></i>
			</span> 
		</span>
		<ol class="breadcrumb">
			<li>Home</li><li>Dashboard</li><li>Partners Management</li>
		</ol>
	</div>
	
	<div id="content">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
				<h1 class="page-title txt-color-blueDark">
					<i class="fa fa-table fa-fw "></i> 
						Dashboard 
					<span>> 
						Partners Management
					</span>
				</h1>
			</div>
			<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">

			</div>
		</div>
		<?php 
							############ Show Flash Message ##############
							$session = $this->request->session();
							if ($session->read('Flash.flash')): echo $this->Flash->render(); endif;
							############ End Flash Message ##############
				?>
		<section id="widget-grid" class="">
		<div class="row">
		<article class="col-sm-12 col-md-12 col-lg-12">
			<div class="jarviswidget" id="wid-id-4" data-widget-editbutton="false" data-widget-custombutton="false">
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
					<h2>User Edit </h2>				
					
				</header>

				<!-- widget div-->
				<div>
					<div class="widget-body no-padding">
						<?= $this->Flash->render('auth') ?>
						<?= $this->Form->create($user,['class'=>'smart-form','id'=>'smart-form-register']); ?>
							<header>
								User Edit
							</header>

							<fieldset>
								<section>
									<label class="input"> <i class="icon-append fa fa-user"></i> 
										<?php echo $this->Form->input('login_name',['label'=>false,'class'=>'form-control','readonly'=>true]); ?>
										<b class="tooltip tooltip-bottom-right">Needed to enter the website</b> </label>
								</section>

								<section>
									<label class="input"> <i class="icon-append fa fa-envelope-o"></i>
										<?php echo $this->Form->input('email',['label'=>false,'class'=>'form-control','placeholder'=>'Email address','readonly'=>'readonly']); ?>
										<b class="tooltip tooltip-bottom-right">Needed to verify your account</b> </label>
								</section>
							</fieldset>

							<fieldset>
								<div class="row">
									<section class="col col-6">
										<label class="input">
											<?php echo $this->Form->input('first_name',['label'=>false,'placeholder'=>'First name']); ?>
										</label>
									</section>
									<section class="col col-6">
										<label class="input">
											<?php echo $this->Form->input('last_name',['label'=>false,'placeholder'=>'Last name']); ?>
										</label>
									</section>
								</div>
							</fieldset>
							<footer>
								<button type="submit" class="btn btn-primary">
									Register
								</button>
							</footer>
						<?= $this->Form->end() ?>				
						
					</div>
					<!-- end widget content -->
					
				</div>
				<!-- end widget div -->
				
			</div>
			<!-- end widget -->
		</article>
			</div>
		</section>
	</div>
</div>
<?php echo $this->Element('admin/adminFooter');?>		

<?php echo $this->Html->script('plugin/pace/pace.min.js'); ?>
		<?php echo $this->Html->script('jquery.min.js'); ?>
		<?php echo $this->Html->script('jquery-ui.min.js'); ?>
		<?php echo $this->Html->script('app.config.js'); ?>
		<?php echo $this->Html->script('plugin/jquery-touch/jquery.ui.touch-punch.min.js'); ?>

		<?php echo $this->Html->script('bootstrap/bootstrap.min.js'); ?>
		<?php echo $this->Html->script('notification/SmartNotification.min.js'); ?>
		<?php echo $this->Html->script('smartwidgets/jarvis.widget.min.js'); ?>
		<?php echo $this->Html->script('plugin/easy-pie-chart/jquery.easy-pie-chart.min.js'); ?>
		<?php echo $this->Html->script('plugin/sparkline/jquery.sparkline.min.js'); ?>
		<?php echo $this->Html->script('plugin/jquery-validate/jquery.validate.min.js'); ?>
		<?php echo $this->Html->script('plugin/masked-input/jquery.maskedinput.min.js'); ?>
		<?php echo $this->Html->script('plugin/select2/select2.min.js'); ?>
		<?php echo $this->Html->script('plugin/bootstrap-slider/bootstrap-slider.min.js'); ?>
		<?php echo $this->Html->script('plugin/msie-fix/jquery.mb.browser.min.js'); ?>
		<?php echo $this->Html->script('plugin/fastclick/fastclick.min.js'); ?>
		<?php echo $this->Html->script('demo.min.js'); ?>
		<?php echo $this->Html->script('app.min.js'); ?>
		<?php echo $this->Html->script('speech/voicecommand.min.js'); ?>
		<?php echo $this->Html->script('smart-chat-ui/smart.chat.ui.min.js'); ?>
		<?php echo $this->Html->script('smart-chat-ui/smart.chat.manager.min.js'); ?>
		
		<!-- PAGE RELATED PLUGIN(S) -->
		<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
		<?php echo $this->Html->script('plugin/datatables/jquery.dataTables.min.js'); ?>
		<?php echo $this->Html->script('plugin/datatables/dataTables.colVis.min.js'); ?>
		<?php echo $this->Html->script('plugin/datatables/dataTables.tableTools.min.js'); ?>
		<?php echo $this->Html->script('plugin/datatables/dataTables.bootstrap.min.js'); ?>
		<?php echo $this->Html->script('plugin/datatable-responsive/datatables.responsive.min.js'); ?>
		
		<!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
		<?php echo $this->Html->script('plugin/vectormap/jquery-jvectormap-1.2.2.min.js'); ?>
		<?php echo $this->Html->script('plugin/vectormap/jquery-jvectormap-world-mill-en.js'); ?>
		<!-- Full Calendar -->
		<?php echo $this->Html->script('plugin/moment/moment.min.js'); ?>
		<?php echo $this->Html->script('plugin/fullcalendar/jquery.fullcalendar.min.js'); ?>
		
		
		<script type="text/javascript">
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		$(document).ready(function() {
		$("#flash_notification").click(function(){
				//$(this).remove();
				$(this).slideUp();
			});
		});
		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
			_gaq.push(['_trackPageview']);
			
			(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
			})();
		</script>