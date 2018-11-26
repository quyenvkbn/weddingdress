<!-- Animate CSS -->
<link rel="stylesheet" href="<?php echo site_url('node_modules/animate.css/') ?>animate.min.css">

<section id="products">
	<div class="container-fluid ads-short">
		<h5>Sample sale bridal styles starting at $199</h5>
		<a href="<?php ?>" class="btn btn-light" role="button">
			View Detail
		</a>
	</div>

	<div class="container-fluid ads-md" style="background-image: url('https://images.unsplash.com/photo-1487163731010-29462200612c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=817b0c5460d4ea65f3baaabc78b0ddd4&auto=format&fit=crop&w=1953&q=80');">
		<div class="overlay">
			<div class="content">
				<h3>Sample sale bridal styles starting at $199</h3>
				<a href="<?php ?>" class="btn btn-outline" role="button">
					View Detail
				</a>
			</div>
		</div>
	</div>

	<div class="container content">
		<div class="row">
			<div class="left col-xs-12 col-md-12 col-lg-3">
				<div class="accordion" id="sideBar">
					<div class="card">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0">
								<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									Explore
								</button>
							</h5>
						</div>

						<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#sideBar">
							<div class="card-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header" id="headingTwo">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									Filter by
								</button>
							</h5>
						</div>
						<div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#sideBar">
							<div class="card-body">
								<div class="item">
									<div class="item-head">
										Rent Cost
									</div>
									<div class="item-body">
										<?php for ($i = 0; $i < 4; $i++) { ?>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="Radios1" id="Radios1-<?php echo $i ?>" value="option1-<?php echo $i ?>" <?php echo ($i == 0)? 'checked' : '' ?>>
												<label class="form-check-label" for="Radios<?php echo $i ?>">
													0 - 999.999.999 vnd
												</label>
											</div>
										<?php } ?>
									</div>
								</div>

								<div class="item">
									<div class="item-head">
										Price
									</div>
									<div class="item-body">
                                        <?php for ($i = 0; $i < 4; $i++) { ?>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="Radios2" id="Radios2-<?php echo $i ?>" value="option2-<?php echo $i ?>" <?php echo ($i == 0)? 'checked' : '' ?>>
												<label class="form-check-label" for="Radios<?php echo $i ?>">
													0 - 999.999.999 vnd
												</label>
											</div>
                                        <?php } ?>
									</div>
								</div>

								<div class="item">
									<div class="item-head">
										Silhouette
									</div>
									<div class="item-body">
                                        <?php for ($i = 0; $i < 4; $i++) { ?>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="Radios3" id="Radios3-<?php echo $i ?>" value="option3-<?php echo $i ?>" <?php echo ($i == 0)? 'checked' : '' ?>>
												<label class="form-check-label" for="Radios<?php echo $i ?>">
													Ballgown (30)
												</label>
											</div>
                                        <?php } ?>
									</div>
								</div>

								<div class="item">
									<div class="item-head">
										Availability
									</div>
									<div class="item-body">
										<div class="form-check">
											<input class="form-check-input" type="radio" name="Radios4" id="Radios4-1" value="option4-1" checked>
											<label class="form-check-label" for="Radios4">
												In stock
											</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="Radios4" id="Radios4-2" value="option4-2">
											<label class="form-check-label" for="Radios4">
												Out of Stock
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="right col-xs-12 col-md-12 col-lg-9">
				<div class="grid">
					<div class="grid-sizer"></div>
                    <?php for ($i = 0; $i < 8; $i++) { ?>
						<div class="grid-item <?php echo ($i % 2 == 0)? 'grid-item-mt' : '' ?> wow fadeInUp" data-wow-delay="0.<?php echo $i ?>s">
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
		</div>
	</div>

</section>

<!-- Isotope JS -->
<script src="<?php echo site_url('node_modules/isotope-layout/') ?>dist/isotope.pkgd.min.js"></script>
<!-- imageLoaded JS -->
<script src="<?php echo site_url('node_modules/imagesloaded/') ?>imagesloaded.pkgd.min.js"></script>
<!-- wow JS -->
<script src="<?php echo site_url('node_modules/wow.js/') ?>dist/wow.min.js"></script>

<script>
    $(document).ready(function(){
        // init Isotope
        var $grid = $('.grid').isotope({
            itemSelector: '.grid-item',
            percentPosition: true,
            masonry: {
                // use element for option
                columnWidth: '.grid-sizer'
            }
        });
        // layout Isotope after each image loads
        $grid.imagesLoaded().progress( function() {
            $grid.isotope('layout');
        });

        new WOW().init();

		{
		    // Sticky sideBar on Scroll

			$(document).scroll(function(){
			    if ($(window).scrollTop() > 200){
			        $('#sideBar').addClass('active');
				}

                if ($(window).scrollTop() < 200){
                    $('#sideBar').removeClass('active');
                }
			})
		}
    })
</script>