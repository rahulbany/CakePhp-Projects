<aside id="left-panel">
			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as it --> 
					<a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
					<?php if(!empty($logedinUser->profile_image)) {
											 echo $this->Html->image('profileImage/'.$logedinUser->profile_image, ['alt'=>'demouserdpscrrenshot']); 
										 } else {
										  echo $this->Html->image('profileImage/default.png'); 
										}	?>
						<span>
							<?php echo $this->request->session()->read('Auth.User.login_name') ?>
						</span>
						<i class="fa fa-angle-down"></i>
					</a> 
				</span>
			</div>
			<!-- end user info -->

			<!-- NAVIGATION : This navigation is also responsive-->
			<nav>
				<ul>
					<li>
					  	<?=  $this->Html->link('<i class="fa fa-lg fa-fw fa-home"></i> Dashboard',['controller'=>'dashboard','action'=>'index'],['escape' => false]); ?>
					</li>	
						
					
					
					<li>
						<a href="javascript:void(0)"><i class="fa fa-lg fa-fw fa-puzzle-piece"></i>  <span class="menu-item-parent">Booking Management</span></a>
						<ul>
							<li>	
								<?= $this->Html->link('<i class="fa fa-plus"></i>Add Booking',['controller'=>'bookings','action'=>'index'],['escape' => false]); ?>
							</li>
							<li>	
								<?= $this->Html->link('<i class="glyphicon glyphicon-list-alt"></i>Bookings',['controller'=>'bookings','action'=>'booking'],['escape' => false]); ?>
							</li>
						
						</ul>
					</li> 
					

					<li>
						<a href="javascript:void(0)"><i class="fa fa-lg fa-fw fa-puzzle-piece"></i>  <span class="menu-item-parent">Service Management</span></a>
						<ul>
							<li>
								<?=  $this->Html->link('Add Service',['controller'=>'jobs','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								<?=  $this->Html->link('Add Extra Service',['controller'=>'jobs','action'=>'add_extra'],['escape' => false]); ?>
							</li>
							<li>
								<?=  $this->Html->link('Manage Service',['controller'=>'jobs','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li> 

					<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-user"></i>  <span class="menu-item-parent">Admin Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Admin',['controller'=>'users','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								<?= $this->Html->link('Manage Admin',['controller'=>'users','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>  
					
				 	<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-user"></i> <span class="menu-item-parent">Partners Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Partner',['controller'=>'partners','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('Manage Partners',['controller'=>'partners','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-user"></i> <span class="menu-item-parent">Customer Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Customer',['controller'=>'customers','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('Manage customers',['controller'=>'customers','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li> 	 
					<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-list-alt"></i> <span class="menu-item-parent"> Coupon Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Coupon',['controller'=>'coupons','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('Manage Coupons',['controller'=>'coupons','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>
					
					
					<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-list-alt"></i> <span class="menu-item-parent">Area Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Service Area',['controller'=>'areas','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('Manage Service Area',['controller'=>'areas','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>
					
					
					
					
					<li>
					  	<?=  $this->Html->link('<i class="glyphicon glyphicon-dashboard"></i> Completed Jobs',['controller'=>'jobs','action'=>'completedJob'],['escape' => false]); ?>
					</li>	
					<li>
					  	<?=  $this->Html->link('<i class="glyphicon glyphicon-hand-right"></i> Open Jobs',['controller'=>'jobs','action'=>'openJob'],['escape' => false]); ?>
					</li>	
					<li>
					  	<?=  $this->Html->link('<i class="glyphicon glyphicon-hand-right"></i>Running jobs',['controller'=>'jobs','action'=>'runningJob'],['escape' => false]); ?>
					</li>	
					<li>
					  	<?=  $this->Html->link('<i class="glyphicon glyphicon-import"></i>Admin percentage(%)',['controller'=>'jobs','action'=>'percentage'],['escape' => false]); ?>
					</li>
						<li>
						<a href="javascript:void(0)"><i class="glyphicon glyphicon-file"></i> <span class="menu-item-parent"> CMS Management</span></a>
						<ul>
							<li>
								<?= $this->Html->link('Add Page',['controller'=>'Pages','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('View Pages',['controller'=>'Pages','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>	
					
					<li>
					<a href="javascript:void(0)"><i class="glyphicon glyphicon-globe"></i> <span class="menu-item-parent"> State And City</span></a>
						<ul>
							<li>
								<?= $this->Html->link('State',['controller'=>'States','action'=>'index'],['escape' => false]); ?>
							</li>
							<li>
								 <?= $this->Html->link('City',['controller'=>'Cities','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li>

				 	<!-- <li>
						<a href="javascript:void()"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Referal  Management</span></a>
						<ul>
							<li>
								// $this->Html->link('<i class="fa fa-lg fa-fw fa-home"></i> Add Referal',['controller'=>'referals','action'=>'add'],['escape' => false]); ?>
							</li>
							<li>
								 //$this->Html->link('<i class="fa fa-lg fa-fw fa-home"></i> Manage Referals',['controller'=>'referals','action'=>'index'],['escape' => false]); ?>
							</li>
						</ul>
					</li> -->  
					
					 							
					<!--li>
						<a href="#"><i class="fa fa-lg fa-fw fa-pencil-square-o"></i> <span class="menu-item-parent">Forms</span></a>
						<ul>
							<li>
								<a href="form-elements.html">Smart Form Elements</a>
							</li>
							<li>
								<a href="form-templates.html">Smart Form Layouts</a>
							</li>
							<li>
								<a href="validation.html">Smart Form Validation</a>
							</li>
							<li>
								<a href="bootstrap-forms.html">Bootstrap Form Elements</a>
							</li>
							<li>
								<a href="bootstrap-validator.html">Bootstrap Form Validation</a>
							</li>
							<li>
								<a href="plugins.html">Form Plugins</a>
							</li>
							<li>
								<a href="wizard.html">Wizards</a>
							</li>
							<li>
								<a href="other-editors.html">Bootstrap Editors</a>
							</li>
							<li>
								<a href="dropzone.html">Dropzone </a>
							</li>
							<li>
								<a href="image-editor.html">Image Cropping <span class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
							</li>
						</ul>
					</li-->
				</ul>
			</nav>
			<!--span class="minifyme" data-action="minifyMenu"> 
				<i class="fa fa-arrow-circle-left hit"></i> 
			</span -->
</aside>