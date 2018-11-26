<!-- Animate CSS -->
<link rel="stylesheet" href="<?php echo site_url('node_modules/animate.css/') ?>animate.min.css">

<section id="blogs">
	<div class="container-fluid" id="grid-controls">
		<div class="container">
			<ul class="nav nav-pills nav-fill">
				<li class="nav-item">
					<button class="nav-link" data-filter="*">All Posts</button>
				</li>
				<li class="nav-item">
					<button class="nav-link" data-filter=".plan">Wedding Planning</button>
				</li>
				<li class="nav-item">
					<button class="nav-link" data-filter=".tip">Tips & Trends</button>
				</li>
				<li class="nav-item">
					<button class="nav-link" data-filter=".career">Career</button>
				</li>
				<li class="nav-item">
					<button class="nav-link" data-filter=".sale">Sale</button>
				</li>
			</ul>
		</div>
	</div>
	<div class="container" id="grid-content">
		<div class="grid">
			<div class="grid-sizer"></div>
            <?php for ($i = 0; $i < 8; $i++) { ?>
				<div class="grid-item <?php echo ($i % 2 == 0)? 'plan' : '' ?> wow fadeInUp" data-wow-delay="0.<?php echo $i ?>s">
					<div class="image">
						<a href="<?php echo base_url('blogs/detail/') ?>">
							<img src="https://images.unsplash.com/photo-1519225421980-715cb0215aed?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=58a24190d8298ebfad35691d6695bdbb&auto=format&fit=crop&w=1950&q=80" alt="image product">
						</a>
					</div>

					<div class="content">
						<h4>
							<a href="<?php echo base_url('blogs/detail/') ?>">
								Appliqued Chantilly Lace Trumpet Wedding Dress
							</a>
						</h4>
						<p class="paragraph">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel scelerisque diam. Morbi sit amet vulputate libero. Integer vestibulum tincidunt justo eu varius. Duis augue orci, aliquet eget faucibus eget, luctus vel felis.
							<a href="<?php echo base_url('blogs/detail/') ?>">Read more...</a>
						</p>
						<span class="date">20 Oct 2018</span>
					</div>
				</div>
            <?php } ?>
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

        $('#grid-controls .nav').on( 'click', 'button', function() {
            var filterValue = $(this).attr('data-filter');
            $grid.isotope({ filter: filterValue });
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