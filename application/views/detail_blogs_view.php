<section id="detail-blog">
    <div class="container">
		<div class="back">
			<a onclick="goBack()">
				<i class="fas fa-arrow-left"></i> Back
			</a>
		</div>
		<div class="cover">
			<div class="mask">
				<img src="https://images.unsplash.com/photo-1519225421980-715cb0215aed?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=58a24190d8298ebfad35691d6695bdbb&auto=format&fit=crop&w=1950&q=80" alt="blog cover image">
			</div>
		</div>

		<article>
			<div class="heading">
				<h3>
					HOW TO LOOK GOOD IN PROM PICTURES
				</h3>
				<span class="category">
					Posted in <a href="<?php echo base_url('') ?>">Category I</a> <a href="<?php echo base_url('') ?>">Category II</a>
				</span>
			</div>
			<div class="content">
				<p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam aliquam arcu volutpat nisi interdum tincidunt. Vivamus scelerisque sodales dui quis laoreet. Curabitur vehicula blandit ligula nec accumsan. Donec nec semper orci, vel facilisis lectus. Sed nec cursus mauris, quis tristique mauris. Mauris faucibus luctus imperdiet. Phasellus mattis, massa ut facilisis scelerisque, risus odio rutrum erat, a maximus turpis lectus sit amet odio. Integer eget ultricies nibh, aliquet interdum tellus. Curabitur feugiat finibus massa dictum aliquam.</p>

				<p class="paragraph">Etiam cursus convallis nulla. Praesent eu arcu malesuada, varius felis consequat, sagittis leo. Integer blandit lectus semper, cursus ante quis, consequat augue. Pellentesque varius vulputate metus sit amet egestas. Cras ac felis lobortis, iaculis nisi nec, sodales mauris. Integer leo enim, pellentesque ac turpis vitae, aliquet dignissim elit. Vestibulum eleifend nibh bibendum pharetra condimentum. Donec accumsan imperdiet pellentesque. Mauris felis mi, ullamcorper a leo ut, facilisis volutpat libero. Pellentesque lobortis dolor et quam rhoncus scelerisque. Nulla egestas posuere enim. Fusce ultrices urna et rhoncus elementum. Vestibulum id est aliquet, rhoncus nulla vel, laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

				<p class="paragraph">Donec laoreet leo tincidunt, sollicitudin risus imperdiet, convallis lorem. Morbi nec odio sed ante faucibus dignissim. Morbi pulvinar sem eget lacus auctor posuere. Praesent euismod sagittis diam. Mauris fringilla, erat id dictum dignissim, mauris risus aliquam tellus, nec iaculis lectus purus at risus. Aliquam erat volutpat. Suspendisse vel ligula sit amet lacus ultrices dapibus et sed velit. In elementum augue augue, eu ultrices enim semper vitae. Ut eu convallis felis. Mauris fermentum magna sit amet justo gravida consectetur. Sed eu justo condimentum, commodo est sit amet, maximus ipsum. Vivamus id sodales diam, eu rhoncus ex. Fusce nunc nibh, luctus at sem ac, sodales commodo ante. Duis finibus suscipit ante. Nulla et risus sed ante aliquam finibus vitae ac quam.</p>

				<p class="paragraph">Vestibulum varius efficitur dolor non iaculis. Etiam ut metus id neque maximus sollicitudin. Nullam sed laoreet tellus, et lacinia nisi. Donec vehicula quam odio, vel euismod est vehicula vitae. Etiam luctus cursus est, id interdum velit convallis in. Etiam tempus pharetra vehicula. Ut non facilisis eros.</p>

				<p class="paragraph">Donec laoreet leo tincidunt, sollicitudin risus imperdiet, convallis lorem. Morbi nec odio sed ante faucibus dignissim. Morbi pulvinar sem eget lacus auctor posuere. Praesent euismod sagittis diam. Mauris fringilla, erat id dictum dignissim, mauris risus aliquam tellus, nec iaculis lectus purus at risus. Aliquam erat volutpat. Suspendisse vel ligula sit amet lacus ultrices dapibus et sed velit. In elementum augue augue, eu ultrices enim semper vitae. Ut eu convallis felis. Mauris fermentum magna sit amet justo gravida consectetur. Sed eu justo condimentum, commodo est sit amet, maximus ipsum. Vivamus id sodales diam, eu rhoncus ex. Fusce nunc nibh, luctus at sem ac, sodales commodo ante. Duis finibus suscipit ante. Nulla et risus sed ante aliquam finibus vitae ac quam.</p>

				<p class="paragraph">Vestibulum varius efficitur dolor non iaculis. Etiam ut metus id neque maximus sollicitudin. Nullam sed laoreet tellus, et lacinia nisi. Donec vehicula quam odio, vel euismod est vehicula vitae. Etiam luctus cursus est, id interdum velit convallis in. Etiam tempus pharetra vehicula. Ut non facilisis eros.</p>

				<p class="paragraph">Phasellus quis mauris sollicitudin dolor laoreet pharetra. Praesent rhoncus maximus arcu ultrices fringilla. Quisque at ante et dui mollis suscipit a nec elit. Nullam condimentum lectus in purus ornare, ut tempus leo dignissim. Duis sodales vulputate erat non volutpat. Praesent erat turpis, varius ac fringilla vitae, consequat a dolor. Aenean varius porttitor mattis. Ut eget aliquet felis, eget lobortis eros. Nunc dapibus nisi sed turpis efficitur, non feugiat nunc maximus.</p>
			</div>
		</article>

		<div class="recommended">
			<div class="heading">
				<h4>
					Recent Posts
				</h4>
			</div>
			<div class="row">
                <?php for ($i = 0; $i < 3; $i++) { ?>
					<div class="item col-xs-12 col-md-4 wow fadeInUp" data-wow-delay="0.<?php echo $i ?>s">
						<div class="image">
							<a href="<?php echo base_url('blogs/detail/') ?>">
								<img src="https://images.unsplash.com/photo-1529636798458-92182e662485?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a51e979bf2f18b8276c6eab3135509c1&auto=format&fit=crop&w=1950&q=80" alt="image blog <?php echo $i ?>">
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
	</div>
</section>

<script>
    function goBack() {
        window.history.back();
    }
</script>