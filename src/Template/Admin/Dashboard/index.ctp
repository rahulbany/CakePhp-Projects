<?php echo $this->Element('admin/adminHeader');?>
<?php echo $this->Element('admin/adminSidebar');?>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type = "text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type = "text/javascript"></script>
    <!--link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel = "Stylesheet" type="text/css" /--> 
<div id="main" role="main">
<div id="ribbon">
		<!-- <span class="ribbon-button-alignment"> 
			<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
			<i class="fa fa-refresh"></i>
			</span> 
		</span> -->
		<ol class="breadcrumb">
			 <li>Dashboard</li>
		</ol>
	</div>
		
	<div id="content">
		<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark"><i class="fa-fw fa fa-home"></i> Dashboard <span>> My Dashboard</span></h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">
							<li class="sparks-info">
								<h5> My Income <span class="txt-color-blue">$47,171</span></h5>
								<div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
									1300, 1877, 2500, 2577, 2000, 2100, 3000, 2700, 3631, 2471, 2700, 3631, 2471
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Traffic <span class="txt-color-purple"><i class="fa fa-arrow-circle-up"></i>&nbsp;45%</span></h5>
								<div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Orders <span class="txt-color-greenDark"><i class="fa fa-shopping-cart"></i>&nbsp;2447</span></h5>
								<div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
						</ul>
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
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
									<header>
										<span class="widget-icon"> <i class="fa fa-table"></i> </span>
										<h2>Open Jobs</h2>
									</header>
									
											<div class="row">
															<div class="col-xs-12 col-sm-6 col-md-3" >
																<div class="panel panel-success pricing-big">
																	<div class="panel-heading">
																		<h3 class="panel-title">
																			PARTNER
																		</h3>
																	</div>
																	<div class="panel-body no-padding text-align-center">
																		<div class="the-price">
																			<h1>
																				<strong><?php echo $val = ($partnerCount!=0?$partnerCount:0);?></strong>
																			</h1>
																		</div>
																	</div>
																	<div class="panel-footer text-align-center">
																		<a role="button" class="btn btn-primary btn-block"  onclick="partner_list()" href="javascript:void(0);">GO<span> now!</span></a>
																		<div>
																			<!-- Or <a href="javascript:void(0);">Sign up</a> -->
																		</div>
																	</div>
																</div>
															</div>
														
														<div class="col-xs-12 col-sm-6 col-md-3">
															<div class="panel panel-teal pricing-big">
																	<div class="panel-heading">
																		<h3 class="panel-title">
																			CUSTOMER
																		</h3>
																	</div>
																	<div class="panel-body no-padding text-align-center">
																		<div class="the-price">
																			<h1>
																				<strong><?php echo $val = ($customerCount!=0?$customerCount:0); ?></strong>
																				<!-- $99<span class="subscript">/ mo</span></h1-->
																			</h1>	
																		</div>
																	</div>
																	<div class="panel-footer text-align-center">
																		<a role="button" class="btn btn-primary btn-block"  onclick="customer_list()"  href="javascript:void(0);">GO<span> now!</span></a>
																		<div>
																			<!-- <a href="javascript:void(0);"><i>We accept all major credit cards</i></a>-->
																		</div>
																	</div>
															</div>
														</div>
														
														<div class="col-xs-12 col-sm-6 col-md-3">
															<div class="panel panel-primary pricing-big">
																<img alt="" class="ribbon" src="img/ribbon.png">
																<div class="panel-heading">
																	<h3 class="panel-title">
																		NEW CUSTOMER</h3>
																</div>
																	<div class="panel-body no-padding text-align-center">
																		<div class="the-price">
																			<h1>
																				<?php echo $val = ($newCustomerCount!=0?$newCustomerCount:0);?>
																				<!-- $350<span class="subscript">/ mo</span-->
																			</h1>
																		</div>
																	</div>
																<div class="panel-footer text-align-center">
																	<a role="button" class="btn btn-primary btn-block"  onclick="new_customer()"  href="javascript:void(0);">GO<span>now!</span></a>
																	<div>
																		<!-- <a href="javascript:void(0);"><i>We accept all major credit cards</i></a> -->
																	</div>
																</div>
															</div>
														</div>
														
													<div class="col-xs-12 col-sm-6 col-md-3">
															<div class="panel panel-darken pricing-big">
																<div class="panel-heading">
																	<h3 class="panel-title">
																		OPEN JOBS
																	</h3>
																</div>
																	<div class="panel-body no-padding text-align-center">
																		<div class="the-price">
																			<h1>
																				<?php echo $val = ($getOpenJobsCount!=0?$getOpenJobsCount:0); ?>
																			</h1>
																		</div>
																	</div>
																<div class="panel-footer text-align-center">
																	<a role="button" class="btn btn-primary btn-block" onclick="open_job()" href="javascript:void(0);">GO<span> now!</span></a>
																	<div>
																		<!-- <a href="javascript:void(0);"><i>We accept all major credit cards</i></a>-->
																	</div>
																</div>
															</div>
													</div>		    	
										</div>
								</div>
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
		<?php echo $this->Html->css('admin/datetimepicker.css'); ?>
		
		
<script type="text/javascript">	
function partner_list() {
	var data = 'partner';
	$.ajax({
			type:'post',
			url:"Dashboard/partnerList",
			data:'data='+data,
			success:function(response) {
				//alert(response);
				if(response == 'true') {
					window.location.href = "<?php echo $this->Url->build(array('controller'=>'partners', 'action'=>'index')); ?>";
				}
			}
	});
}

function customer_list() {
	var data = 'customer' ;
	$.ajax({
		type:'post',
		url:'Dashboard/customerList',
		data:'data='+data,
		success: function(response) {
			if(response == 'true') {
				window.location.href = "<?php echo $this->Url->build(array('controller'=>'customers', 'action'=>'index')); ?>";
			}
		}
	});
}

function new_customer() {
var data = 'new_customer';
	$.ajax({
	type:'post',
	url:'Dashboard/newCustomer',
	data:'data='+data,
		success:function(response) {
			if(response=='true') {
				window.location.href = "<?php echo $this->Url->build(array('controller'=>'customers', 'action'=>'index')); ?>";
			}
		}
	});
}

function open_job() {
var data = 'open_job';
		$.ajax({
			type:'post',
			url:'Dashboard/openJob',
			data:'data='+data,
			success:function(response) {
					if(response=='true') {
						window.location.href = "<?php echo $this->Url->build(array('controller'=>'jobs', 'action'=>'openJob')); ?>";
					}
			}			
		});
}

// DO NOT REMOVE : GLOBAL FUNCTIONS!		
	$(document).ready(function() {
		 $("#txtDate").datepicker({
                onSelect: function (date, obj) {
                    //alert("You selected: " + date);
					var data = date;
					$.ajax({
						type:"post",
						url:"Dashboard/index",
						data:'data='+data,
							success:function(response)
							{
											var objct = $.parseJSON(response);
											if(objct.response=='false')
											{
												//alert("no record found");
												$("#service_list").html('<tr class="odd"><td valign="top" colspan="4" class="dataTables_empty">No booking found today</td></tr>');
							
											} else 
											{
												var trHTML = '';
												$.each(objct, function(key,value) 
												{
													trHTML += '<tr><td>'+  date_format(value.ScheduledServices__created_at) +'</td><td>'+ value.Users__first_name +'</td><td>'+  value.CustomerPropertys__street_address +'  '+value.CustomerPropertys__city ; 				
												});
												$("#service_list").html(trHTML);
												$(".odd").hide();
											}	
											//console.log(trHTML);		
							}
					}); 
                },
                showOn: 'button',
                buttonImageOnly: true,
                //buttonImage: 'http://jqueryui.com/demos/datepicker/images/calendar.gif'
           });
		$("#flash_notification").click(function(){
				//$(this).remove();
				$(this).slideUp();
			});
			
			pageSetUp();
			
			/* // DOM Position key index //
		
			l - Length changing (dropdown)
			f - Filtering input (search)
			t - The Table! (datatable)
			i - Information (records)
			p - Pagination (paging)
			r - pRocessing 
			< and > - div elements
			<"#id" and > - div with an id
			<"class" and > - div with a class
			<"#id.class" and > - div with an id and class
			
			Also see: http://legacy.datatables.net/usage/features
			*/	
	
			/* BASIC ;*/
				var responsiveHelper_dt_basic = undefined;
				var responsiveHelper_datatable_fixed_column = undefined;
				var responsiveHelper_datatable_col_reorder = undefined;
				var responsiveHelper_datatable_tabletools = undefined;
				
				var breakpointDefinition = {
					tablet : 1024,
					phone : 480
				};
	
				$('#dt_basic').dataTable({
					"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
					"autoWidth" : true,
					"preDrawCallback" : function() {
						// Initialize the responsive datatables helper once.
						if (!responsiveHelper_dt_basic) {
							responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
						}
					},
					"rowCallback" : function(nRow) {
						responsiveHelper_dt_basic.createExpandIcon(nRow);
					},
					"drawCallback" : function(oSettings) {
						responsiveHelper_dt_basic.respond();
					}
				});
	
			/* END BASIC */
			
			/* COLUMN FILTER  */
		    var otable = $('#datatable_fixed_column').DataTable({
		    	//"bFilter": false,
		    	//"bInfo": false,
		    	//"bLengthChange": false
		    	//"bAutoWidth": false,
		    	//"bPaginate": false,
		    	//"bStateSave": true // saves sort state using localStorage
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
				"autoWidth" : true,
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_fixed_column) {
						responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_fixed_column.respond();
				}		
			
		    });
		    
		    // custom toolbar
		    $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');
		    	   
		    // Apply the filter
		    $("#datatable_fixed_column thead th input[type=text]").on( 'keyup change', function () {
		    	
		        otable
		            .column( $(this).parent().index()+':visible' )
		            .search( this.value )
		            .draw();
		            
		    } );
		    /* END COLUMN FILTER */   
	    
			/* COLUMN SHOW - HIDE */
			$('#datatable_col_reorder').dataTable({
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'C>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
				"autoWidth" : true,
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_col_reorder) {
						responsiveHelper_datatable_col_reorder = new ResponsiveDatatablesHelper($('#datatable_col_reorder'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_col_reorder.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_col_reorder.respond();
				}			
			});
			
			/* END COLUMN SHOW - HIDE */
	
			/* TABLETOOLS */
			$('#datatable_tabletools').dataTable({
				
				// Tabletools options: 
				//   https://datatables.net/extensions/tabletools/button_options
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'T>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
		        "oTableTools": {
		        	 "aButtons": [
		             "copy",
		             "csv",
		             "xls",
		                {
		                    "sExtends": "pdf",
		                    "sTitle": "SmartAdmin_PDF",
		                    "sPdfMessage": "SmartAdmin PDF Export",
		                    "sPdfSize": "letter"
		                },
		             	{
	                    	"sExtends": "print",
	                    	"sMessage": "Generated by SmartAdmin <i>(press Esc to close)</i>"
	                	}
		             ],
		            "sSwfPath": "js/plugin/datatables/swf/copy_csv_xls_pdf.swf"
		        },
				"autoWidth" : true,
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_tabletools) {
						responsiveHelper_datatable_tabletools = new ResponsiveDatatablesHelper($('#datatable_tabletools'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_tabletools.respond();
				}
			});
			
			/* END TABLETOOLS */
		
		})

		</script>