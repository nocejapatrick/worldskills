<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" />
<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri()."/css/style.css"?>"/>
<?php wp_head(); ?>
<script>
    jQuery(document).ready(function($){
        $('#skill-up').click(function(){
            var header = $('#header');
            header.css({filter:'blur(15px)'});
            $('.title-and-desc').fadeOut('slow',function(){
                $('.skill-container').fadeIn('slow');
            });
        })
        var videoArray = ['#vid2','#vid']
        $('.box').hover(function(){
            var num = $('.box').index(this);
            $(videoArray[num]).addClass('show');
            $('.black').css({display:'block'});
            $(videoArray[num])[0].play();
               
        },function(){
            $('.vids').removeClass('show');
            $('.vids').each(i=>{
                $('.vids')[i].pause()
                $('.vids')[i].currentTime = 0;
            })
            $('.black').css({display:'none'});
        })

        $('.burger').click(function(){
            $('#menu').slideToggle();
        })
    })
</script>
</head>
<body <?php body_class(); ?>>
<div id="wrapper" class="hfeed">
    <div class="row">
        <div class="icon">
            <img src="/WorldSkills/wp-content/themes/blankslate/images/WorldSkills_Philippines_White.png" alt="">
        </div>
        <div class="burger">
            <div></div>
            <div></div>
            <div></div>
        </div>
        <nav id="menu" role="navigation">
        <div id="search">
        <?php get_search_form(); ?>
        </div>
        <?php wp_nav_menu( array( 'theme_location' => 'main-menu' ) ); ?>
        </nav>
    </div>
<div id="container">