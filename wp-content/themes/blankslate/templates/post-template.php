<!-- Template Name: Skills Area -->


<?php get_header(); ?>
<div class="page-header">
    <div class="page-header-title section-title">
        SKILLS
    </div>
</div>

<div class="p-container">
    <div class="p-row justify-center">
<?php
    $args = array(
    'post_type'      => 'page',
    'posts_per_page' => -1,
    'post_parent'    => $post->ID,
    'order'          => 'ASC',
    'orderby'        => 'menu_order'
 );


$parent = new WP_Query( $args );

if ( $parent->have_posts() ) : ?>

    <?php while ( $parent->have_posts() ) : $parent->the_post(); ?>
        
    <div class="skill-card">
            <a href="<?php the_permalink(); ?>">
                <div class="skill-top" style="background: url('<?php print_r(get_field('skill_picture')['sizes']['medium_large']);?>');">
                    <div class="black-shade"></div>
                    <div class="skill-logo">
                        <img src="/wp-content/themes/blankslate/images/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                    </div>
                </div>
            <div class="skill-body">
                <div class="skill-title"><?php the_title(); ?></div>
                
                <div class="skill-desc"><?php echo get_field('skill_factor'); ?></div>
            </div>
            </a>
        </div>
    <?php endwhile; ?>

<?php endif; wp_reset_postdata(); ?>

    </div>    
</div>
<?php get_footer(); ?>