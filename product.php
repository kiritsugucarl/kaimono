<?php
//Check to make sure the id param is specified in the URL
if (isset($_GET['id'])) {
    $stmt = $pdo->prepare('SELECT * FROM products WHERE id = ?');
    $stmt->execute([$_GET['id']]);

    $product = $stmt->fetch(PDO::FETCH_ASSOC);
}

$stmt2 = $pdo->prepare('SELECT * FROM products ORDER BY RAND() DESC LIMIT 4');
$stmt2->execute();
$related_products = $stmt2->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header("Product Details | Kaimono")?>

    <!------- product details ------->

    <div class="small-container single-product">
        <div class="row product-section">
            <div class="col-2">
                <img src="<?=$product['img']?>" width="100%">
            </div>
            <div class="col-2">
                <h1><?=$product['name']?></h1>
                <h4 class="price"><s>P <?=$product['rrp']?></s>&nbsp;P <?=$product['price']?></h4>
                <form autocomplete="off" action="index.php?page=cart" method="post">
                    <input type="number" name="quantity" value="1" min="1" max="<?=$product['quantity']?>" placeholder="QTY" required>
                    <input type="hidden" name="product_id" value="<?=$product['id']?>">
                    <input type="submit" name="add_to_cart" class="btn" value="Add to Cart">
                </form>
                <h3>Product Details <i class="fa fa-indent"></i></h3>
                <br>
                <p><?=$product['desc']?></p>
            </div>
        </div>

        <div class="small-container">
            <div class="row row-2">
                <h2>Related Products</h2>
            </div>
        </div>


        <div class="row">
            <?php foreach ($related_products as $product): ?>
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
        </div>

        <div class="buttons">
            <a href="index.php?page=products">View More</a>
        </div>
    </div>

    <?=template_footer()?>
</body>
</html>
