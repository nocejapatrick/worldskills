<!-- Template Name: Skill Template -->

<?php get_header();?>
<div class="skill-header">
         <div class="skill-header-container">
            <div class="skill-header-title"><?php echo get_the_title(); ?></div>
            <div class="skill-header-desc"><?php echo get_field('skill_description');?></div>
        </div>
</div>
 
                        <?php while(have_posts()) : the_post(); ?>
                        <?php the_content();?>
                        <?php endwhile; ?>
<section class="proud-holder">
   <div class="p-container">
      <div class="proud-container">
         <div class="proud-title">Make your country proud</div>
         <div class="proud-desc">Find out how to start competing in a competition.</div>
         <button class="passion-btn mt-1">Put your skills to the test</button>
      </div>
   </div>
</section>
<?php get_footer();?>