<div class="p-container">
    <div class="p-row">
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <?php include('article.php'); ?>
        <?php comments_template(); ?>
        <?php endwhile; endif; ?>
    </div>
</div>