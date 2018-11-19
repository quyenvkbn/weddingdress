<!-- Animate CSS -->
<link rel="stylesheet" href="<?php echo site_url('node_modules/animate.css/') ?>animate.min.css">

<section id="detail-collection">
    <div class="cover">
        <div class="image">
            <div class="item">
                <div class="mask">
                    <img src="https://images.unsplash.com/photo-1540205082-774dbc2ea08f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bd594cd20182cbfb602e3845c96b1cfa&auto=format&fit=crop&w=934&q=80" alt="image collection 1">
                </div>
            </div>
            <div class="item">
                <div class="mask">
                    <img src="https://images.unsplash.com/photo-1519741196428-6a2175fa2557?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjF9&s=5bea108b5e1bf69929b4c883cf688d3b&auto=format&fit=crop&w=934&q=80" alt="image collection 2">
                </div>
            </div>

            <div class="content">
                <h6 class="subtitle">
                    New Collection
                </h6>
                <h1>
                    Beautifully Crafted, Amazingly Priced
                </h1>
            </div>
        </div>
    </div>

    <div class="container list-items">
        <div class="row">
            <div class="left col-xs-12 col-md-3">
                <div class="line"></div>
                <p class="paragraph">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et congue arcu. Aenean et augue eget tortor ullamcorper facilisis. Pellentesque nec gravida leo. Morbi vel tincidunt arcu, sed feugiat nunc. Curabitur eu aliquet mauris. Praesent arcu dolor, suscipit vel tellus vel, tincidunt maximus libero. Nulla sit amet hendrerit libero, vel interdum lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                </p>
            </div>

            <div class="right col-xs-12 col-md-8">
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
    })
</script>