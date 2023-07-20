<?php
//The amount of products to show on each page
$num_of_products_on_each_page = 16;
//Pagination system
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int) $_GET['p'] : 1;
//Select products ordered by the date added
$stmt = $pdo->prepare('SELECT * FROM products ORDER BY name ASC LIMIT ?,?');

//bindValue allows us to use int in SqlStatement
$stmt->bindValue(1, ($current_page - 1) * $num_of_products_on_each_page, PDO::PARAM_INT);
$stmt->bindValue(2, $num_of_products_on_each_page, PDO::PARAM_INT);
$stmt->execute();

//Fetch the products from database, and return as Array
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);

//Get the total number of products
$total_products = $pdo->query('SELECT * FROM products')->rowCount();
?>

<?=template_header("All Products | Kaimono")?>

    <!------- featured products ------->
    <div class="featured-prod-section">
        <div class="row row-2">
            <p class="title-2"><b>ALL PRODUCTS</b></p>
        </div>
        <?php foreach (array_chunk($products, 16, true) as $product): ?>
        <div class="row">
            <?php foreach ($products as $product): ?>
                <div class="col-4">
                        <a href="index.php?page=product&id=<?=$product['id']?>">
                            <img src="<?=$product['img']?>">
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
                <?php endforeach?>
        <?php endforeach?>
        </div>
        <div class="buttons">
        <?php if ($current_page > 1): ?>
        <a href="index.php?page=products&p=<?=$current_page - 1?>">Prev</a>
        <?php endif;?>
        <?php if ($total_products > ($current_page * $num_of_products_on_each_page) - $num_of_products_on_each_page + count($products)): ?>
        <a href="index.php?page=products&p=<?=$current_page + 1?>">Next</a>
        <?php endif;?>
    </div>
    </div>



    <?=template_footer()?>
</body>
</html>
