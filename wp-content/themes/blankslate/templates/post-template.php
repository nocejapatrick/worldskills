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
                <div class="skill-top" style="background: url('<?php echo get_field('thumbnail');?>-300x200.jpg');">
                    <div class="black-shade"></div>
                    <div class="skill-logo">
                        <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
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
        <!-- <div class="skill-card">
            <a href="/WorldSkills/skills/automobile-technology">
                <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8563-300x200.jpg');">
                    <div class="black-shade"></div>
                    <div class="skill-logo">
                        <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                    </div>
                </div>
            <div class="skill-body">
                <div class="skill-title">Automobile Technology</div>
                <div class="skill-desc">Transportation and Logistics</div>
            </div>
            </a>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8915-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Beauty Theraphy</div>
                <div class="skill-desc">Social and Personal Services</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/charles-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Cooking</div>
                <div class="skill-desc">Social and Personal Services</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8534-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Cyber Security</div>
                <div class="skill-desc">Social and Personal Services</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8815-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Electrical Installations</div>
                <div class="skill-desc">Construction and Building Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/rovina.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Electronics</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8830-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Fashion Technology</div>
                <div class="skill-desc">Creative Arts and Fashion</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8903-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Graphics Design Technology</div>
                <div class="skill-desc">Creative Arts and Fashion</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8452-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Hairdressing</div>
                <div class="skill-desc">Social and Personal Services</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8804-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Industrial Automation</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8546-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Information Network Cabling</div>
                <div class="skill-desc">Information and Communication Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8868-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">IT Network Systems Administration</div>
                <div class="skill-desc">Information and Communication Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8552-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">IT Software Solutions for Business</div>
                <div class="skill-desc">Information and Communication Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8890-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Mechanical Engineering CAD</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8836-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Mechatronics</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background: url('/WorldSkills/wp-content/uploads/2019/03/IMG_8664-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Mobile Robotics</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background:url('/WorldSkills/wp-content/uploads/2019/03/IMG_8597-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Refrigeration and Air Conditioning</div>
                <div class="skill-desc">Construction and Building Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background:url('/WorldSkills/wp-content/uploads/2019/03/IMG_8879-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Restaurant Service</div>
                <div class="skill-desc">Social and Personal Services</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background:url('/WorldSkills/wp-content/uploads/2019/03/IMG_8515-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Web Technologies</div>
                <div class="skill-desc">Information and Communication Technology</div>
            </div>
        </div>
        <div class="skill-card">
            <div class="skill-top" style="background:url('/WorldSkills/wp-content/uploads/2019/03/IMG_8674-300x200.jpg'); background-size: cover;
        background-position: 50% 50%;">
                <div class="black-shade"></div>
                <div class="skill-logo">
                     <img src="/WorldSkills/wp-content/uploads/2019/03/WorldSkills_Philippines_White.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="skill-body">
                <div class="skill-title">Welding</div>
                <div class="skill-desc">Manufacturing and Engineering Technology</div>
            </div>
        </div>
 -->


    </div>    
</div>
<?php get_footer(); ?>