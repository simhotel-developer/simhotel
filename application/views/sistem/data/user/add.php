<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="<?php echo base_url();?>sistem/home">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="<?php echo base_url();?>sistem/user">User</a>
					</li>
				</ul>
				
			</div>


<div class="portlet box green">
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-gift"></i>Form Add User
										</div>
										
									</div>
									<div class="portlet-body form">
										<?php if(validation_errors()) { ?>
								<div class="alert alert-danger">
								  <button type="button" class="close" data-dismiss="alert">×</button>
									<?php echo validation_errors(); ?>
								</div>
								<?php 
								} 
								?>
										
											<?php echo form_open_multipart('sistem/user_simpan/','class="form-horizontal"'); ?>
											<div class="form-body">
												<h3 class="form-section"></h3>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Group</label>
															<div class="col-md-9">
																<select data-placeholder="Select..." name="user_group_id" class="form-control select2me">
																	<option value=""></option>					
																	<?php
																	foreach ($user_group->result_array() as $tampil) { ?>
																	<option value="<?php echo $tampil['id_user_group'];?>"><?php echo $tampil['nama_user_group'];?></option>
																	<?php
																	}
																	?>
																</select>
																
															</div>
														</div>
													</div>

													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Nama User</label>
															<div class="col-md-9">
																<input type="text" class="form-control" placeholder="" name="nama_user">
																
															</div>
														</div>
													</div>
													
												</div>
												<div class="row">
													
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Email</label>
															<div class="col-md-9">
																<input type="text" class="form-control" placeholder="" name="email_user">
																
															</div>
														</div>
													</div>

													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Telp</label>
															<div class="col-md-9">
																<input type="text" class="form-control" placeholder="" name="telp_user">
																
															</div>
														</div>
													</div>
													
												</div>
												<div class="row">
													
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Username</label>
															<div class="col-md-9">
																<input type="text" class="form-control" placeholder="" name="username_user">
																
															</div>
														</div>
													</div>

													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Password</label>
															<div class="col-md-9">
																<input type="password" class="form-control" placeholder="" name="password_user">
																
															</div>
														</div>
													</div>
													
												</div>


											</div>
											<div class="form-actions">
												<div class="row">
													<div class="col-md-6">
														<div class="row">
															<div class="col-md-offset-3 col-md-9">
																<button type="submit" class="btn green">Save</button>
																</div>
														</div>
													</div>
													<div class="col-md-6">
													</div>
												</div>
											</div>
										<?php echo form_close();?>  
										
									</div>
								</div>