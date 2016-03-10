<?php echo $this->Element('admin/adminHeader');?>
<?php echo $this->Element('admin/adminSidebar');?>
<?php echo $this->Html->script('nicEdit-latest.js'); ?>
<style>
.error-message{color:red;}
</style>
<div id="main" role="main">
	<div id="ribbon">
	<!--	<span class="ribbon-button-alignment"> 
			<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
			<i class="fa fa-refresh"></i>
			</span> 
		</span> -->
		<ol class="breadcrumb">	
			<li>
					<?php echo $this->Html->link('Dashboard', '/admin/dashboard'); ?>
             </li>
			 
			 <li>Add Page</li>
			
			
		</ol>
	</div>
	
	<div id="content">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
				<h1 class="page-title txt-color-blueDark">
					<i class="fa fa-table fa-fw "></i> 
						
					<span>
						Add Page
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
					<h2>Add Page</h2>				
				</header>
				<!-- widget div-->
				<div>
					<div class="widget-body no-padding">
					<?php echo $this->Form->create($page,['id'=>'smart-form-register']); ?>

								<div class="form-group">
										<label class="control-label">Title</label>
										<?php echo $this->Form->input('title', array('label'=>false, 'div'=>false, 'class'=>'form-control', 'required'=>false)); ?>											
								</div>
								
								<div class="form-group">
										<label class="control-label">Slug</label>
										<?php echo $this->Form->input('slug', array('label'=>false, 'div'=>false, 'class'=>'form-control', 'required'=>false)); ?>			
								</div>

								<div class="form-group">
									<label class="control-label">Content</label>
									<div class="input textarea"><?php echo $this->Form->input('content', array('type'=>'textarea',  'required'=>false, 'label'=>false, 'div'=>false, 'id'=>'page_content', 'class'=>'form-control pagecontent', 'style'=>array('height:300px;width:928px;'))); ?></div>
								</div>
								
								<div class="form-group">
										<label class="control-label">SEO Title</label>
										<div class="input text">
										<?php echo $this->Form->input('seo_title', array('label'=>false,  'required'=>false, 'div'=>false, 'class'=>'form-control')); ?>			
										</div>						
								</div>

								<div class="form-group">
									<label class="control-label">SEO Content</label>
									<div class="input textarea"><?php echo $this->Form->input('seo_content', array('type'=>'textarea',  'required'=>false,  'label'=>false, 'div'=>false, 'id'=>'seocontent', 'class'=>'form-control pagecontent', 'style'=>array('height:100px;width:928px;'))); ?></div>
								</div>
								
								<div class="checkbox">
                                    <label>
                                        	<?php  echo $this->Form->input('headlayout', array('label'=>false, 'type'=>'checkbox', 'div'=>false, 'required'=>false)); ?><strong>Custom header for become a partner on the top</strong>
                                    </label>
                                </div> 
									
								<button type="submit" class="btn btn-default">Submit Button</button>
						<?php echo $this->Form->end(); ?>			
						
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
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
		<script type="text/javascript">
			bkLib.onDomLoaded(function() { 
			new nicEditor({fullPanel : true}).panelInstance('page_content');
			new nicEditor({fullPanel : true}).panelInstance('seocontent');
			});
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		$(document).ready(function() {
		$("#flash_notification").click(function(){
				//$(this).remove();
				$(this).slideUp();
			});
			
	 	$("#smart-form-register").validate({
	  	 errorClass:"error-message",
			 rules:
			{
				"title":{required:true},	
				"slug":{required:true},	
				"content":{required:true},	
				"seo_title":{required:true},	
				"seo_content":{required:true}																					
            },
			
			messages:
			{
				"title": {required: "This field is required"},
				"slug": {required: "This field is required"},
				"content": {required: "This field is required"},
				"seo_title": {required: "This field is required"},
				"seo_content": {required: "This field is required"}			
			}	 
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