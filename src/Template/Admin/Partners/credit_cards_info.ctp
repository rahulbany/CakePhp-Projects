<?php echo $this->Element('admin/adminHeader');?>
<?php echo $this->Element('admin/adminSidebar');?>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.0.2.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script type="text/javascript" src="../ui.tabs.overflowResize.js"></script>
	<script type="text/javascript" src="../lib/ui.tabs.closable.js"></script>
	<script type="text/javascript" src="../lib/ui.tabs.addTab.js"></script>
	<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../ui.tabs.overflowResize.css">
  <script>
    $(function(){
      $( ".tabpanel" ).tabs({closable: true, addTab:true}).tabs('overflowResize')
      .find( ".ui-tabs-nav" ).sortable({
        distance: 10
      });
    });
  </script>
 <style>
.errors{color:red;}
</style>
<div id="main" role="main">
	<div id="ribbon">
		<ol class="breadcrumb">
			<li>
					<?php echo $this->Html->link('Dashboard', '/admin/dashboard'); ?>
             </li>
			 <li>
				<?php echo $this->Html->link('Add Partner',['controller'=>'Partners','action'=>'add'] ); ?>
             </li>
			 <li>
				<?php echo $this->Html->link('Partner List',['controller'=>'Partners','action'=>'index'] ); ?>
             </li>
			 <li>Partner Information</li>
		</ol>
	</div>
	
	<div id="content">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
				<h1 class="page-title txt-color-blueDark">
					<i class="fa fa-table fa-fw "></i> 
					<span>
						Partner information
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
	<div id="flash_notification" style="display:none;">Successfully updated</div>
	<section id="widget-grid" class="">
	 <div class="tabpanel">
    <ul>
      <li><a href="#tabs-1" class="closable">Contact Info</a></li>
      <li><a href="#tabs-2" class="closable">Payment Setup</a></li>
      <li><a href="#tabs-3" class="closable">Completed Job</a></li>
      <li><a href="#tabs-4" class="closable">Open Jobs</a></li>
    </ul>
	<!-- Partner Contact Info -->
    <div id="tabs-1">
				<?php	echo $this->Form->create($partnerInfo, ['id'=>'smart-form-register','class'=>'smart-form customer_information']); ?>
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i><strong> Name </strong> </span>	
				</header>
			<div>
					<div class="widget-body no-padding">	
						<fieldset>
								<fieldset class="conditional-customer">
												<div class="row">
													<section class="col col-10">
														<label class="input"> 
															<input id="cus_email" type="email" required="" placeholder="Email " name="email"  value="<?php echo $partnerInfo->email;?>">
														</label>
													</section>
												</div>
												
												<div class="row">
													<section class="col col-5">
														<label class="input">
															<input type="text" name="first_name" class="first_name" placeholder="First name" value="<?php echo $partnerInfo->first_name; ?>">
														</label>
													</section>
													<section class="col col-5">
														<label class="input">
															<input type="text" name="last_name" class="last_name" placeholder="Last name" value="<?php echo $partnerInfo->last_name; ?>">
														</label>
													</section>
												</div>			
								</fieldset>		
								
									<header>
										<span class="widget-icon"> <i class="fa fa-edit"></i><strong> Where </strong> </span>	
									</header>
								<fieldset class="conditional-customer">
												<div class="row">
													<section class="col col-10">
														<label class="input"> 
										<input id="address" type="text"  placeholder="Address " name="street_address" value="<?php if(!empty($partnerInfo['addresses'][0]-> street_address)) { echo $partnerInfo['addresses'][0]->street_address;} else { echo "";} ?>" required>
														</label>
													</section>
												</div>
												
												<div class="row">
													<section class="col col-3">
														<label class="input">
															<input type="text" name="city" class="city" placeholder="City" value="<?php if(!empty($partnerInfo['addresses'][0]->city)){ echo $partnerInfo['addresses'][0]->city;} else { echo ""; } ?>">
														</label>
													</section>
													
													<section class="col col-3">
														<label class="input">
															<input type="text" name="zip_code" class="zip" placeholder="Zip Code" value="<?php if(!empty($partnerInfo['addresses'][0]->zip)) { echo $partnerInfo['addresses'][0]->zip;} else { echo "";}  ?>">
														</label>
													</section>
													
													<section class="col col-3">
														<label class="select" >
																		<select  name="state_id">
																			<option selected="" value=""> Select state </option>
																			<?php
																			if(!empty($partnerInfo['addresses'][0]->state_id)) {
																			 foreach($allState as $val) { ?>
								<option value="<?php echo $val->id; ?>" <?php if($val->id == $partnerInfo['addresses'][0]->state_id) {echo "selected";} ?> > <?php  echo $val->state_name; ?> </option>
											<?php }  } else { 
												 foreach($allState as $val) { ?>
												 <option value="<?php echo $val->id; ?>"> <?php echo $val->state_name; ?> </option>
											<?php }}?>
												
															</select> 
														</label>
													</section>
												</div>	
												
												<div class="row">
													<section class="col col-5">
														<label class="input"> 
															<input id="phon_no" type="text" required="" placeholder="Phone no " name="mobile_no" value="<?php echo $partnerInfo->mobile_no;?>"> 
														</label>
													</section>
												</div>		
														
								</fieldset>	
							</fieldset>

									<footer>
										<button type="submit" class="btn btn-primary" id="sub" onclick="customer_info()">
											Save Changes
										</button>
									</footer>
						<?= $this->Form->end() ?>				
					</div>
			</div>

    </div>
	<!-- Partner Contact Info  close-->	
	
	
	
	
	<!-- ----  Payment  information Setup start    ---->
    <div id="tabs-2">
	
	<div data-widget-editbutton="false" id="wid-id-1" class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" role="widget">
								<div role="content">
									<div class="jarviswidget-editbox">
									</div>
									<div class="widget-body no-padding">
										<div class="table-responsive">									
											<table class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>Type</th>
														<th>Last digits</th>
														<th>Expired</th>
														<th>Email</th>
														<th>Default</th>
													</tr>
												</thead>
											<?php if(!empty($getCreditInfo)) {
											//debug($getCreditInfo->toArray());	?>
												<tbody>
													<?php  foreach($getCreditInfo as $val) {  ?>
													<tr>
														<td><?php echo  $val->neme_of_the_card; ?></td>
														<?php $var = $val->credit_card_no;
														$var = substr_replace($var, str_repeat("*", 12), 0, 12); ?>
														<td><?php echo $var; ?></td>
														<td><?php echo  $val->expire_year;?></td>
														<td><?php echo $val->user->email; ?></td>
															<?php if($val->is_enabled == 1) { ?>
																<td> <?php echo $this->Html->image('icon/enable.png', ['alt' => 'enable']); ?> </td>
															<?php } else { ?>
															<td> <?php echo $this->Html->image('icon/disable.png', ['alt' => 'disable']); ?> </td>
																<?php } ?>	
													</tr>
													<?php } ?>		
												</tbody>
										<?php 	} ?>	
											</table>
										</div>
									</div>
								</div>
	</div>
	
					<!--echo $this->Form->create($customerInfo,['id'=>'payment','class'=>'smart-form ']); ?-->
		<?php	echo $this->Form->create(null,['id'=>'smart-form-register','class'=>'smart-form payment']);?>			
		<header>
			<span class="widget-icon"> <i class="fa fa-edit"></i><strong> Add Credit Card </strong> </span>	
		</header>
			<div>
				
					<div class="widget-body no-padding">	
						<fieldset>
								<fieldset class="conditional-customer">
												<div class="row">
													<section class="col col-10">
														<label class="input"> 
															<input id="number" type="text"  placeholder="XXXX-XXXX-XXXX-XXXX " name="credit_card_no" >
														</label>
													</section>
												</div>
												
												<div class="row">
													<section class="col col-5">
														<label class="input"> 
															<input id="number" type="text"  placeholder="CVC" name="cvv" >
														</label>
													</section>
													
													<section class="col col-5">
														<label class="input"> 
															<input id="cad_name" type="text"  placeholder="Card Type" name="neme_of_the_card" >
														</label>
													</section>
													
												</div>
												
												
												<div class="row">
													<section class="col col-5">
														<label class="select">
																	<select name="expire_month_id" >
																		<option value="" selected="" >--Select Expire Month--</option>
																		<?php  foreach($allMonth as $mon) { ?>
																		<option value="<?php echo $mon->id;?>" ><?php echo $mon->month_name;?></option>
																			<?php }
																		?>	
															</select> <i></i> 
													</label>
													</section>
													<section class="col col-5">
														<label class="select">
																		<select name="expire_year" >
																			<option value="" selected="" >--Select Expire Year--</option>
																			 <?php  $y = date("Y");
																			$n = (int)$y+10;
																			for($i=$y; $i<$n; $i++){ ?>
																<option value="<?php  echo $i; ?>"><?php echo $i; ?></option>
																<?php	}	 ?>
																</select> <i></i> 
														</label>
													</section>
												</div>			
								</fieldset>		
							</fieldset>

									<footer>
								<?php 	echo $this->Form->hidden('userID',['value'=>$userID]); ?>
										<button type="submit" class="btn btn-primary" id="pay_info" onclick="credit_info()">
											Add Credit Card
										</button>
									</footer>
									
					</div>
					<?= $this->Form->end() ?>	
			</div>

   </div>
	
	<!-- Payment Setup close-->
	
<!--  Partner Complated Job List  -->	
	<div id="tabs-3">
				<!--header>
					<span class="widget-icon"> <i class="fa fa-edit"></i><strong>Completed Jobs</strong> </span>	
				</header-->
					<div role="content">
							<div class="jarviswidget-editbox"></div>
								<div class="widget-body no-padding">
									<table class="table table-bordered">
											<thead>
													<tr>
														<th>Service Date</th>
														<th>Service Name</th>
														<th>Customer Rating</th>
														<th>Customer Comment</th>
														<th>Service Status</th>
													</tr>
											</thead>
											<tbody>
											<?php if(!empty($completedJob)) { 
																foreach($completedJob as $com_val) {
																	if($com_val->is_done == 'yes') {	?>
																			<tr>
																				<td><?php echo date('M-jS/H:i A/D', strtotime($com_val->scheduled_service->created_at));?></td>
																				<td><?php echo $com_val->scheduled_service->partner_provided_service->service;?></td>
																				<?php @$rating = ($com_val->service_rating->rating!=''?$com_val->service_rating->rating:'-'); ?>
																				<td><?php echo $rating; ?></td>
																				<?php @$comment =  ($com_val->service_rating->comment!=''?$com_val->service_rating->comment:'-'); ?>
																				<td><?php echo $comment; ?></td>
																				<td><?php echo "Done"; ?></td>
																					<?php 
																	} 
																} ?>  </tr> <?php		
														} else {  ?>
																						<tr>
																								<td colspan="4" style="text-align:center;">
																										<?php  echo "No Record Found";?>
																								</td>
																						</tr>
																<?php } ?>				
											</tbody>	
									</table>
							</div>
					</div>

				
    </div>
<!-- Partner Complated Job List -->	

<!---  #################  OPEN JOBS    #################-->

	<div id="tabs-4">
		<div role="content">
							<div class="jarviswidget-editbox"></div>
								<div class="widget-body no-padding">
									<table class="table table-bordered">
											<thead>
													<tr>
														<th>Service Date</th>
														<th>Service Name</th>
														<th>Service Status</th>
													</tr>
											</thead>
											<tbody>
											<?php if(!empty($completedJob)) { 
																foreach($completedJob as $com_val) {
																	if($com_val->is_done == 'no' &&  $com_val->is_cancelled == 'no') {	?>
																			<tr>
																				<td><?php echo date('M-jS/H:i A/D', strtotime($com_val->scheduled_service->created_at));?></td>
																				<td><?php echo $com_val->scheduled_service->partner_provided_service->service;?></td>
																				<td><?php echo "Booked"; ?></td>
																					<?php 
																	} 
																} ?>  		</tr> <?php
																	
														}  else {  ?>
																						<tr>
																								<td colspan="3" style="text-align:center;">
																										<?php  echo "No Record Found";?>
																								</td>
																						</tr>
																<?php } ?>				

											</tbody>	
									</table>
							</div>
					</div>
		
	</div>	
<!-- ####################  OPEN JOBS ###########################-->

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
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript">
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
// #################### CONTACT INFO TAB  ######################333		
function customer_info() {
$(".customer_information").validate({
	  	 errorClass:"errors",
rules: {
					"street_address":{ required: true },
					"city":{ required: true },
					"zip_code":{ required: true,digits: true},
					"state_id":{ required: true},
					"mobile_no":{ required: true,digits: true,maxlength:11}															
     },
messages: {  
						"street_address": {required: "This field is required"},
										"city": {required: "This field is required"},
										"zip_code": { required: "This field is required",
															 digits: "This field can only contain digits"
															},
										"state_id" : {required: "This field is required"},					
										"mobile_no" : {	
																	required: "This field is required",
																	maxlength: "This field contain only 11 digit"
																	
																}																			
	    },	
	submitHandler: function (form) {
		 var datastring =   $(form).serialize();
			 $.ajax({
								type: "POST",
								url:"<?php echo $this->Url->build(array('controller'=>'Partners', 'action'=>'creditCardsInfo/'.$userID)); ?>",
								data:'data='+datastring,
								success: function(response) {
									if(response=='true')
									{	
										alert("Successfully updated");
									}
								},
					});
	}	  
});	

	/*  var datastring = $("#smart-form-register").serialize();
						$.ajax({
								type: "POST",
								url:"<?php echo $this->Url->build(array('controller'=>'Customers', 'action'=>'creditCardsInfo/'.$userID)); ?>",
								data:'data='+datastring,
								success: function(response) {
									if(response=='true')
									{	
										alert("Successfully updated");
									}
								},
					}); */
}

// ############ PAYMENT SETUP  TAB  #############

function credit_info() {
$(".payment").validate({
	  	 errorClass:"errors",
rules: {
					"credit_card_no":{
													required: true,
													digits: true,
													minlength: 16,
													maxlength:16		
												},	
									"cvv": {
													required: true,
													digits: true,
													minlength: 3,
													maxlength:3
												},	
					"neme_of_the_card": {
														required: true
														},	
					"expire_month_id": 	{
													required: true
													},	
						"expire_year":  {
												required: true
												}																
     },
			
messages:     {
	
						"credit_card_no": {
															required: "This field is required",
															digits: "This field can only contain digits",
															minlength: "This field must contain  16 digit",
															maxlength: "This field contain only 16 digit"	
													},
		
									"cvv": {
															required: "This field is required",
															digits: "This field  only contain digits",
															minlength: "This field must contain  3 digit",
															maxlength:"Please enter valid cvc number"
												},
						"neme_of_the_card": {
																required: "This field is required"
															},
						"expire_month_id" : {
															required: "This field is required"
														},
								"expire_year" :	{
															required: "This field is required"
														}					
															
	    },	
	submitHandler: function (form) {
		 var payinfo =   $(form).serialize();
			 $.ajax({
								type: "POST",
								url:"<?php echo $this->Url->build(array('controller'=>'Partners', 'action'=>'paymenInfo/'.$userID)); ?>",
								data:'data='+payinfo,
								success: function(response) {
									 if(response=='one')
										{
											alert("Your credit info has been successfully added");
											$('.payment')[0].reset();	
											window.location.reload();	  
												/* 	$.ajax({
														type:"POST",
														url:"<?php echo $this->Url->build(array('controller'=>'Customers', 'action'=>'credit/'.$userID)); ?>",
														success:function(response) {
															
														}
													}); */	
										}   
								},		
					});
	}	  
});	
				   		
}

//####################  Link Stripe Customer TAB  ###########################
 function update_stripe() {
var stripeID = $(".new_stripe_id").serialize();
	  $.ajax({
								type: "POST",
								url:"<?php echo $this->Url->build(array('controller'=>'Customers', 'action'=>'stripeUpdate/'.$userID)); ?>",
								data:'data='+stripeID,
								success: function(response) {
								 if(response=='one')
									{
										alert("Your stripe id is cussessfully update");
										 //$("#flash_notification").show();
										//window.location.href = "<?php echo $this->Url->build(array('controller'=>'Customers', 'action'=>'creditCardsInfo/'.$userID)); ?>";  
									}  
								},		
						}); 
}

$(document).ready(function() {
		$("#flash_notification").click(function(){
				$(this).slideUp();
			});
			pageSetUp();			
});	
</script>