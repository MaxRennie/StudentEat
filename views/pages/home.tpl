{extends file="layouts/main.tpl"}
{block name="body"}
        <div class="glide">        
            <div class="glide__track" data-glide-el="track">            
                <ul class="glide__slides">                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/avotoast.jpeg');">
                            </div>
                            <h3>Avocado Toast</h3>
                        </div>
                    </li>                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/baconwraps.jpeg');">
                            </div>
                            <h3>Bacon Jalapenos</h3>
                        </div>
                    </li>                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/bread.jpeg');">
                            </div>
                            <h3>Bread</h3>
                        </div>
                    </li>                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/choccake.jpeg');">
                            </div>
                            <h3>Chocolate Cake</h3>
                        </div>
                    </li>                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/noodle.jpeg');">
                            </div>
                            <h3>Noodle</h3>
                        </div>
                    </li>                
                    <li class="glide__slide">
                        <div class="recipe-slide-card">
                            <div class="recipe-slide-card-img" style="background-image: url('./img/recipe-images/prawns.jpeg');">
                            </div>
                            <h3>Sauteed Prawns</h3>
                        </div>
                    </li>            
                </ul>        
            </div>
            <div class="glide__arrows" data-glide-el="controls">
                <button class="glide__arrow glide__arrow--left" data-glide-dir="<"><i class="fas fa-angle-left fa-lg"></i></button>
                <button class="glide__arrow glide__arrow--right" data-glide-dir=">"><i class="fas fa-angle-right fa-lg"></i></button>
            </div>    
        </div>
        <h1 class="mb-4 pb-2">Welcome to StudentEat</h1>
        <div class="row">
            <div class="col-lg-9">
                <p>Welcome to StudentEat</p>
                <p>Ready to get started learning the best recipes?</p>
                <a href="index.php?p=categories" class="btn btn-studenteat">Browse recipes</a>
            </div>
            <div class="col-lg-3">
                <img src="./img/plate.png" alt="Plate of food"/>
            </div>
        </div>
    </div>
{/block}