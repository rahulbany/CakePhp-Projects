<?php echo $this->Element('admin/adminHeader');?>
<?php echo $this->Element('admin/adminSidebar');?>
<style>
    .black_overlay{
        display: none;
        position: absolute;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        background-color: black;
        z-index:1001;
        -moz-opacity: 0.8;
        opacity:.80;
        filter: alpha(opacity=80);
    }
    .white_content {
        display: none;
        position: absolute;
        top: 25%;
        left: 25%;
        width: 50%;
        height: 50%;
        padding: 16px;
        border: 16px solid orange;
        background-color: white;
        z-index:1002;
        overflow: auto;
    }

</style>

<div id="main" role="main">
	<div id="ribbon">
	<!--	<span class="ribbon-button-alignment"> 
			<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
			<i class="fa fa-refresh"></i>
			</span> 
		</span>-->
		<ol class="breadcrumb">

			<li>
					<?php echo $this->Html->link('Dashboard', '/admin/dashboard'); ?>
             </li>
			 <li>
				<?php echo $this->Html->link('Add Coupons',['controller'=>'Coupons','action'=>'add'] ); ?>
             </li>
			 
			 <li>Discount Management</li>
			
		</ol>
	</div>
	
	<div id="content">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
				<h1 class="page-title txt-color-blueDark">
					<i class="fa fa-table fa-fw "></i> 
						Dashboard 
					<span>> 
						Discount Management
					</span>
				</h1>
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
									<h2>Discount Management</h2>
							
								</header>
								<!-- table start   -->
							<?php if(!empty($discountList)) { 
/* 							foreach($jobs as $test){
								print json_encode($test['scheduled_service']['payable_money']);
							} */
							//echo $pay; 
							?>	
								<div>
									<div class="jarviswidget-editbox"></div>
									<div class="widget-body no-padding">
										<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
											<thead>			                
												<tr>
													<th data-hide="phone,tablet">Coupon Code</th>
													<th data-hide="phone,tablet">Discount Value (In % OR $)</th>												
													<th data-hide="phone,tablet">From Date</th>												
													<th data-hide="phone,tablet">To Date</th>												
													<th data-hide="phone,tablet">Action</th>												
												</tr>
											</thead>
											<tbody>
											<?php foreach($discountList as $value) {
										$coupon_id = $value->id;
											?>
												<tr> 
													<td><?php echo h($value->discount_code); ?></td>
													<?php if($value->discount_type == 'amount') { ?>
															<td> <?php echo "$".h($value->discount_money_value); ?></td>
													 <?php }  else { ?>
														<td> <?php echo h($value->discount_money_value).'%'; ?></td>
													 <?php }?>
													<td><?php echo h(date("Y-M-d",strtotime($value->created_at))); ?></td>													
													<td><?php echo h($value->ending_time); ?></td>
												<td class="actions">
														<?= $this->Form->postLink('<i class="fa fa-trash-o"></i>',['action' => 'delete',$value->id],['escape'=>false,'class'=>'on-default remove-row','title'=>'Delete'],['confirm' => 'Are you sure want to delete?'])?>
														<?= $this->Form->postLink('<i class="fa fa-list-ol"></i>',['action' => 'customerList',$value->id],['escape'=>false,'class'=>'on-default remove-row','title'=>'Customer List'],['confirm' => 'Are you sure want to delete?'])?>
												</tr>
											<?php } ?>
											</tbody>
										</table>
									</div>
								</div>
							<?php }  else { ?>
                            <div id="dt-toolbar" style="text-align:center;">
							No records found.
							</div>
                      <?php  }
                        ?>	
						<!-- end table-->	

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
		
			
		




	
		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
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