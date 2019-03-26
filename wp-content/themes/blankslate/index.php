
<?php get_header(); ?>
<div class="parent-header">
<header id="header" role="banner">
<div class="bg-padding">
<section id="branding">
<div id="site-title"><?php if ( is_front_page() || is_home() || is_front_page() && is_home() ) { echo '<h1>'; } ?><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_html( get_bloginfo( 'name' ) ); ?>" rel="home"><?php echo esc_html( get_bloginfo( 'name' ) ); ?></a><?php if ( is_front_page() || is_home() || is_front_page() && is_home() ) { echo '</h1>'; } ?></div>
<div id="site-description"><?php bloginfo( 'description' ); ?></div>
</section>
<div class="title-and-desc">
    <div class="title">Learning new skills can change your life</div>
<div class="desc">We've helped millions of young people. Find out more about how we can help you</div>
    <button class="header-btn" id="skill-up">Skill up</button>
</div>
</div>
</header>
<div class="black"></div>
        <video src="/WorldSkills/wp-content/uploads/2019/03/449034_00_01_WX30_Welcome.mp4" id="vid" class="vids"></video>
        <video src='/WorldSkills/wp-content/uploads/2019/03/449034_00_02_XR15_WhatYou.mp4' id="vid2" class="vids"></video>
<div class="skill-container">
    <h1 class="skill">Skills</h1>
    <div class="skill-table">
        <div class="box">Engineering Technology</div>
        <div class="box">Information and Communication</div>
        <div class="box">Creative Arts</div>
        <div class="box">Transportation</div>
        <div class="box">Construction</div>
        <div class="box">Personal Services</div>
    </div>
</div>
</div>
<div class="blur"></div>
<section id="content" role="main" style="overflow:hidden;">

<div class="p-container">
    <div id="circle-design">
        <div class="circle one"></div>
        <div class="circle two"></div>
        <div class="circle three"></div>
    </div>
    <h1 class="section-title">NEWS</h1></div>
<?php include('components/article-list/article-list.php'); ?>
<?php get_template_part( 'nav', 'below' ); ?>
</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>