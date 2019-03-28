<!-- Template Name: Skill Template -->

<?php get_header();?>
<div class="skill-header">
         <div class="skill-header-container">
            <div class="skill-header-title"><?php echo get_the_title(); ?></div>
            <div class="skill-header-desc"><?php echo get_field('skill_description');?></div>
        </div>
</div>
<div class="p-container">
    <div class="p-row mt-3">
      <?php $picture = get_field('skill_picture'); ?>
       <div class="skill-img-holder"><img src="<?php print_r($picture['sizes']['large']);?>" alt="" class="img-fluid"></div>
       <div class="could-be-holder">
          <div class="could-be-desc">
             <?php echo get_field('could_be_description');?>
          </div>
          <ul>
          <?php $skill_list = explode(',',get_field('skill_list'));
                  foreach($skill_list as $skill){
                     echo '<li>'.$skill.'</li>';
                  }
          ?>   
          </ul>
          <div class="could-be-desc mt-2">
              Our personality quiz will give you ideas about skills and jobs for you
          </div>
          <button class="passion-btn mt-1">Find your passion</button>
       </div>
    </div>
 </div>
 <div class="skill-intro-holder">
    <div class="p-container">
       <div class="p-row align-items-center mb-1">
          <div class="flag-holder">
             <img src="/wp-content/themes/blankslate/images/philippines-flag.svg" alt="">
          </div>
         <div class="skill-intro-title"><?php echo get_field('more_about_skill_title');?></div>
       </div>
       <div class="p-row">
            <div class="skill-intro-desc"><?php echo get_field('more_about_skill_desc'); ?></div>
            <div class="skill-intro-img"><img src="<?php print_r(get_field('more_about_skill_image')['sizes']['large']);?>" alt="" class="img-fluid"></div>
       </div>
   </div>
 </div>
<section class="proud-holder">
   <div class="p-container">
      <div class="proud-container">
         <div class="proud-title">Make your country proud</div>
         <div class="proud-desc">Find out how to start competing in a competition.</div>
         <button class="passion-btn mt-1" onclick="window.location.href = 'https://worldskills.org/get-involved/how-worldskills-works/'">Put your skills to the test</button>
      </div>
   </div>
</section>
<?php get_footer();?>