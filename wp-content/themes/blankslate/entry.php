<div class="page-header">
    <div class="page-header-title section-title">
        <?php print_r(get_the_category()[0]->cat_name); ?>
    </div>
</div>

<div class="p-container">
    <div class="p-row">
        <div class="main-article">
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <header>
                    <?php if ( is_singular() ) { echo '<h1 class="entry-title">'; } else { echo '<h2 class="entry-title">'; } ?><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark"><?php the_title(); ?></a><?php if ( is_singular() ) { echo '</h1>'; } else { echo '</h2>'; } ?> <?php edit_post_link(); ?>
                    <?php if ( !is_search() ) get_template_part( 'entry', 'meta' ); ?>
                </header>
                <?php get_template_part( 'entry', ( is_archive() || is_search() ? 'summary' : 'content' ) ); ?>
                <?php if ( !is_search() ) get_template_part( 'entry-footer' ); ?>
            </article>
        </div>
    

        <div class="side-news">
            <div class="side-title center">NEWS</div>
            <div class="side-body">
                <ul>
                    <li class="news-list active"><a href="http://" target="_blank" rel="noopener noreferrer"><div class="triangle triangle-active"></div><span>PATRICK NEIL NOCEJA GOT MEDALLION OF EXCELLENCE</span></a></li>
                    <li class="news-list"><a href="http://" target="_blank" rel="noopener noreferrer"><div class="triangle"></div><span>COOKING FROM DAVAO CITY JOIN THAILAND</span></a></li>
                    <li class="news-list"><a href="http://" target="_blank" rel="noopener noreferrer"><div class="triangle"></div><span>CUTE BOY FROM ANTIPOLO CITY JOIN THE HAIRDRESSING</span></a></li>
                    <li class="news-list"><a href="http://" target="_blank" rel="noopener noreferrer"><div class="triangle"></div><span>CHARLES THE REPRESENTATIVE OF PHILIPPINES FROM DAVAO</span></a></li>
                    <li class="news-list"><a href="http://" target="_blank" rel="noopener noreferrer"><div class="triangle"></div><span>PH ELECTRONICS GOES TO THAILAND ASEAN WORLD SKILLS</span></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
