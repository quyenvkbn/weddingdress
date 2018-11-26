<section id="booking">
    <div class="container" id="desc">
		<div class="heading">
			<h1>Our Showroom</h1>
		</div>

		<div class="body">
			<p class="paragraph">LET’S MAKE OUR FIRST DATE!</p>

			<p class="paragraph">The Booking page below is for you to book your personal styling session with an experienced bridal stylist.</p>

			<p class="paragraph">We know that engagement times vary so we endeavour to make sure we have a gown available for all of our brides. To do this, we keep our delivery times shorter than other stores and keep some of our stock of our most popular pieces in our HQ for a quick purchase.</p>

			<p class="paragraph">Any orders under 5 months from your wedding date could require a rush fee.</p>

			<p class="paragraph">We highly recommend that you read our FAQ before booking an appointment.</p>

			<p class="paragraph">You are welcome to bring as many people as you wish to your bridal fitting.</p>

			<p class="paragraph">We get it, life happens! However, our showrooms are busy and we can only take a limited number of brides per day. Therefore please adhere to your appointment time and if it needs to be changed or cancelled, please phone the store as soon as possible.</p>
		</div>
    </div>

	<div class="container-fluid" id="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.031779531226!2d105.77918241977537!3d21.042369100000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454c99118ed37%3A0x47ae4d512aa9200b!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTw6JuIGto4bqldSDEkGnhu4duIOG6o25oIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1541586870939" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>

	<div class="container" id="list-contact">
		<div class="row">
			<?php for ($i = 0; $i < 4; $i++) { ?>
				<div class="item col-xs-12 col-md-4">
					<div class="inner">
						<h3>Name of Address <?php echo $i+1 ?></h3>

						<div class="table-responsive">
							<table class="table table-borderless">
								<tr>
									<td>Address:</td>
									<td>Shop D 102 Charters Towers Road, Hermit Park QLD 4810, Australia</td>
								</tr>
								<tr>
									<td>Tel:</td>
									<td>
										<a href="tel:84 1234 5678">
											84 1234 5678
										</a>
									</td>
								</tr>
								<tr>
									<td>Email:</td>
									<td>
										<a href="mailto:contact@ciel.vn">
											contact@ciel.vn
										</a>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>

	<div class="container" id="form-contact">
		<div class="row">
			<div class="left col-xs-12 col-md-6">
				<h1>
					Feel free to say Hello with us
				</h1>
				<p class="paragraph">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porttitor metus eget risus ultrices, sit amet rutrum sapien laoreet. Quisque placerat leo arcu, nec porta sapien posuere sit amet.
				</p>
				<p class="paragraph">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porttitor metus eget risus ultrices, sit amet rutrum sapien laoreet. Quisque placerat leo arcu, nec porta sapien posuere sit amet.
				</p>
			</div>

			<div class="right col-xs-12 col-md-6">
                <?php
                echo form_open_multipart('', array('class' => 'form-horizontal'));
                ?>

				<div class="row">
					<div class="form-group col-xs-12 col-md-12">
                        <?php
                        //echo form_label('Họ tên (*)', 'contact_name');
                        echo form_error('contact_name');
                        echo form_input('contact_name', set_value('contact_name'), 'class="form-control" id="contact_name" placeholder="Full Name" ');
                        ?>
					</div>

					<div class="form-group col-xs-12 col-md-6">
                        <?php
                        //echo form_label('Email (*)', 'contact_mail');
                        echo form_error('contact_mail');
                        echo form_input('contact_mail', set_value('contact_mail'), 'class="form-control" id="contact_mail" placeholder="Email" ');
                        ?>
					</div>
					<div class="form-group col-xs-12 col-md-6">
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

					<div class="form-group col-xs-12 col-md-12">
						<div class="form-foot">
                            <?php echo form_submit('submit', 'Submit', 'class="btn btn-primary"'); ?>
						</div>
					</div>
				</div>

                <?php echo form_close(); ?>
			</div>
		</div>
	</div>

	<div class="container-fluid connection">
		<h1>Get Connected</h1>
		<div class="line"></div>
		<ul>
			<li>
				<a href="javascript:void(0);" target="_blank">
					<i class="fab fa-facebook-square"></i>
				</a>
			</li>

			<li>
				<a href="javascript:void(0);" target="_blank">
					<i class="fab fa-instagram"></i>
				</a>
			</li>

			<li>
				<a href="javascript:void(0);" target="_blank">
					<i class="fab fa-pinterest-square"></i>
				</a>
			</li>

			<li>
				<a href="javascript:void(0);" target="_blank">
					<i class="fab fa-youtube-square"></i>
				</a>
			</li>
		</ul>
	</div>
</section>