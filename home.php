<?php
//Fetch the 8 most recently added products from the database
$stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 8');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header('KAIMONO. Philippines | Official Online Fashion')?>

    <div class="row">
        <div class="header-banner">
            <div class="header-info">
                <p><b>CHECK OUT OUR PRODUCTS</b></p>
                <h1>Sale up to 30% UP</h1>
                <a href="index.php?page=products" class="btn">EXPLORE NOW</a>
            </div>
        </div>
    </div>

    <div class="featured-section">
        <div class="categories">
            <figure>
                <img src="images/banner1.jpg">
                <img src="images/banner2.jpg">
                <img src="images/banner3.png">
                <img src="images/banner4.jpg">
            </figure>
        </div>
    </div>

    <!------- featured products ----->
    <div class="featured-prod-section">
        <p class="title"><b>NEW ARRIVAL PRODUCTS</b></p>
        <?php foreach (array_chunk($recently_added_products, 8, true) as $product): ?>
            <div class="row">
                <?php foreach ($recently_added_products as $product): ?>
                    <div class="col-4">
                        <a href="index.php?page=product&id=<?=$product['id']?>">
                            <img src="<?=$product['img']?>" alt="<?=$product['name']?>">
                        </a>
                        <a href="index.php?page=product&id=<?=$product['id']?>">
                            <h4><?=$product['name']?></h4>
                        </a>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <p><s>P <?=$product['rrp']?></s>&nbsp;P <?=$product['price']?></p>
                    </div>
                <?php endforeach;?>
                <br>
                <?php endforeach;?>
            </div>
    </div>
    </div>

    <?=template_footer()?>