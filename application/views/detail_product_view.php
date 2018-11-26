<!-- Animate CSS -->
<link rel="stylesheet" href="<?php echo site_url('node_modules/animate.css/') ?>animate.min.css">

<section id="detail-product">
    <div class="container" id="detail">
		<div class="row">
			<div class="left col-xs-12 col-md-12 col-lg-7">
				<div class="slider-product">
					<ul class="thumbnails">
						<li>
							<a href="#slide1">
								<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw1.jpg" />
							</a>
						</li>
						<li>
							<a href="#slide2">
								<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw2.jpg" />
							</a>
						</li>
						<li>
							<a href="#slide3">
								<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw3.jpg" />
							</a>
						</li>
						<li>
							<a href="#slide4">
								<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw4.jpg" />
							</a>
						</li>
						<li>
							<a href="#slide5">
								<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw5.jpg" />
							</a>
						</li>
					</ul>

					<ul class="slides">
						<li id="slide1">
							<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw1.jpg" alt="" />
						</li>
						<li id="slide2">
							<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw2.jpg" alt="" />
						</li>
						<li id="slide3">
							<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw3.jpg" alt="" />
						</li>
						<li id="slide4">
							<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw4.jpg" alt="" />
						</li>
						<li id="slide5">
							<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw5.jpg" alt="" />
						</li>
					</ul>

				</div>
			</div>

			<div class="right col-xs-12 col-md-12 col-lg-5">
				<div class="content">
					<div class="overall item">
						<h4>
							Name of Product: White by Vera Wang Floral Illusion Wedding Dress
						</h4>
						<h5>
							Category: New Arrivals
						</h5>
						<span class="code">Code: CDG310</span>

						<table class="table table-borderless">
							<tr>
								<td>Rent Cost</td>
								<td>
									<span class="price-rent">
                                        999.999.999 vnd <small>999.999.000 vnd</small>
                                    </span>
								</td>
							</tr>
							<tr>
								<td>Price</td>
								<td>
									<span class="price-buy">
                                        999.999.999 vnd <small>999.999.000 vnd</small>
                                    </span>
								</td>
							</tr>
						</table>
					</div>

					<div class="detail item">
						<h5>
							Detail Infomation
						</h5>

						<table class="table table-borderless">
							<tr>
								<td>Color</td>
								<td colspan="2">
									<span>White</span>
								</td>
							</tr>
							<tr>
								<td>Size</td>
								<td>
									<span>M, L , S</span>
								</td>
								<td>
									<a href="javascript:void(0)">
										Size & Fit Guide
									</a>
								</td>
							</tr>
						</table>
					</div>

					<div class="desc item">
						<h5>
							Description
						</h5>

						<p class="paragraph">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel scelerisque diam. Morbi sit amet vulputate libero. Integer vestibulum tincidunt justo eu varius. Duis augue orci, aliquet eget faucibus eget, luctus vel felis.
							<a href="javascript:void(0)">Read more...</a>
						</p>

						<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#dressBooking">
							<i class="fas fa-check-circle"></i> Booking Now
						</button>
					</div>

					<div class="share item">
						<h5>
							Share this: <a href="javascript:void(0)"><i class="fab fa-facebook-square"></i> </a>
						</h5>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="container" id="related">
		<h1>
			Related Products
		</h1>

		<div class="row">
            <?php for ($i = 0; $i < 4; $i++) { ?>
				<div class="item col-xs-12 col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.<?php echo $i ?>s">
					<div class="image">
						<div class="mask">
							<a href="<?php echo base_url('product/detail/') ?>">
								<img src="https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/37390753_418398698672124_8871318781691953152_n.jpg?_nc_cat=103&_nc_ht=scontent.fsgn2-2.fna&oh=6beea61e6da7aaef01d3d28a1876ebe8&oe=5C7C7AC1" alt="image product">
							</a>
						</div>

						<div class="name">
							<h6>Name of Product Jessica</h6>
						</div>
					</div>

					<div class="content">
						<h4>
							<a href="<?php echo base_url('product/detail/') ?>">
								Appliqued Chantilly Lace Trumpet Wedding Dress
							</a>
						</h4>
						<h6>Code: CDG310</h6>
						<div class="price">
							<span class="price-rent">
								999.999.999 vnd <small>999.999.000 vnd</small>
							</span>

							<span class="price-buy">
								999.999.999 vnd <small>999.999.000 vnd</small>
							</span>
						</div>
					</div>
				</div>
            <?php } ?>
		</div>
	</div>
</section>

<div class="modal fade" id="dressBooking" tabindex="-1" role="dialog" aria-labelledby="dressBookingLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="dressBookingLabel">Booking Dress name</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
                <?php
                echo form_open_multipart('', array('class' => 'form-horizontal'));
                ?>

				<div class="row">
					<div class="left col-xs-12 col-md-6">
						<img src="https://cdn.rawgit.com/huijing/filerepo/gh-pages/lw5.jpg" alt="" />
					</div>
					<div class="right col-xs-12 col-md-6">
						<div class="content">
							<div class="overall item">
								<h4>
									Name of Product: White by Vera Wang Floral Illusion Wedding Dress
								</h4>
								<h5>
									Category: New Arrivals
								</h5>
								<span class="code">Code: CDG310</span>

								<table class="table table-borderless">
									<tr>
										<td>Rent Cost</td>
										<td>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="priceRadio" id="priceRadio1" value="option1" checked>
												<label class="form-check-label" for="priceRadio1">
													<span class="price-rent">
														999.999.999 vnd <small>999.999.000 vnd</small>
													</span>
												</label>
											</div>
										</td>
									</tr>
									<tr>
										<td>Price</td>
										<td>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="priceRadio" id="priceRadio2" value="option2">
												<label class="form-check-label" for="priceRadio2">
													<span class="price-buy">
														999.999.999 vnd <small>999.999.000 vnd</small>
													</span>
												</label>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="detail item">
								<h5>
									Detail Infomation
								</h5>

								<table class="table table-borderless">
									<tr>
										<td>Color</td>
										<td colspan="2">
											<span>White</span>
										</td>
									</tr>
									<tr>
										<td>Size</td>
										<td>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="sizeRadio" id="sizeRadio1" value="option1" checked>
												<label class="form-check-label" for="sizeRadio1">
													<span>S</span>
												</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="sizeRadio" id="sizeRadio2" value="option2" >
												<label class="form-check-label" for="sizeRadio2">
													<span>M</span>
												</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="sizeRadio" id="sizeRadio3" value="option3" >
												<label class="form-check-label" for="sizeRadio3">
													<span>L</span>
												</label>
											</div>
										</td>
									</tr>
								</table>
							</div>

							<div class="departure item">
								<h5>
									Departure Day and Booking Store
								</h5>

								<form>
									<div class="form-group">
										<input type="date" class="form-control" id="booking_date" placeholder="Departure Day">
									</div>

									<div class="form-group">
										<select class="form-control">
											<option>--- Select a store to booking ---</option>
											<option>Store 1</option>
											<option>Store 2</option>
											<option>Store 3</option>
										</select>
									</div>
								</form>
							</div>

							<div class="info item">
								<h5>
									Information
								</h5>

								<div class="row">
									<div class="form-group col-xs-12 col-md-12">
                                        <?php
                                        //echo form_label('Họ tên (*)', 'contact_name');
                                        echo form_error('contact_name');
                                        echo form_input('contact_name', set_value('contact_name'), 'class="form-control" id="contact_name" placeholder="Full Name" ');
                                        ?>
									</div>

									<div class="form-group col-xs-12 col-md-12">
                                        <?php
                                        //echo form_label('Email (*)', 'contact_mail');
                                        echo form_error('contact_mail');
                                        echo form_input('contact_mail', set_value('contact_mail'), 'class="form-control" id="contact_mail" placeholder="Email" ');
                                        ?>
									</div>
									<div class="form-group col-xs-12 col-md-12">
                                        <?php
                                        //echo form_label('Số điện thoại (*)', 'contact_phone');
                                        echo form_error('contact_phone');
                                        echo form_input('contact_phone', set_value('contact_phone'), 'class="form-control" id="contact_phone" placeholder="Phone Number (optional)" ');
                                        ?>
									</div>

									<div class="form-group col-xs-12 col-md-12">
                                        <?php
                                        //echo form_label('Nội dung', 'contact_message');
                                        echo form_error('contact_message');
                                        echo form_textarea('contact_message', set_value('contact_message'), 'class="form-control" id="contact_message" placeholder="Message to Us..." ');
                                        ?>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
                <?php echo form_submit('submit', 'Submit', 'class="btn btn-primary"'); ?>
			</div>

            <?php echo form_close(); ?>
		</div>
	</div>
</div>

<!-- wow JS -->
<script src="<?php echo site_url('node_modules/wow.js/') ?>dist/wow.min.js"></script>

<script>
    $(document).ready(function(){
        new WOW().init();
    })
</script>