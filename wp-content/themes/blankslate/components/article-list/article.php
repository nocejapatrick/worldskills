<div class="article" style="background: url('<?php echo get_the_post_thumbnail_url(); ?>'); background-size:cover; background-position: 50% 50%;">
    <div class="black-overlay">
        <div class="title"><?php echo get_the_title();?></div>
        <div class="description"><?php the_excerpt(); ?></div>
        <div class="text-right">
            <a href="<?php the_permalink(); ?>">READ MORE</a>
        </div>
    </div>
</div>