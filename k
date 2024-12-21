<!DOCTYPE html>  
<html lang="en">  
<head>  
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">  
   <title>Recipe Book</title>  
   <style>  
      body {  
        font-family: Arial, sans-serif;  
        margin: 0;  
        padding: 0;  
      }  
 
      header {  
        background-color: #3d372e;  
        color: white;  
        padding: 1em;  
        text-align: center;  
        position: fixed;  
        top: 0;  
        left: 0;  
        width: 100%;  
        z-index: 1;  
        
      }
            .banner {  
        width: 100%;  
        height: 20px;  
        background-size: cover;  
        background-position: center;  
        background-image: url('https://picsum.photos/200/300');  
      }  
 
      nav ul {  
        list-style: none;  
        margin: 0;  
        padding: 0;  
        display: flex;  
        justify-content: space-between;  
      }  
 
      nav li {  
        margin-right: 20px;  
      }  
 
      nav a {  
        color: #e8ba99;  
        text-decoration: none;  
      }  
 
    main {  
        padding-top: 200px; /* adjust to the height of the header */  
      } 
 
      section {  
        background-color: #ecd0c2;  
        padding: 1em;  
        margin-bottom: 20px;  
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  
      }  
 
      h1 {  
        margin-top: 0;  
      }  
 
      .recipe-container {  
        display: flex;  
        flex-wrap: wrap;  
        justify-content: center;  
      }  
 
      .recipe {  
        margin: 20px;  
        width: calc(33.33% - 20px);  
      }  
 
      .recipe img {  
        width: 100%;  
        height: 150px;  
        object-fit: cover;  
        border-radius: 10px;  
      }  
 
      .recipe h2 {  
        margin-top: 0;  
      }  
 
      button {  
        background-color: #333;  
        color: #fff;  
        border: none;  
        padding: 10px 20px;  
        font-size: 16px;  
        cursor: pointer;  
      }  
 
      button:hover {  
        background-color: #555;  
      }  
 
      footer {  
        background-color: #333;  
        color: #fff;  
        padding: 1em;  
        text-align: center;  
        clear: both;  
        position: relative;  
        bottom: 0;  
        left: 0;  
        width: 100%;  


      }  
 
      .modal {  
        display: none;  
        position: fixed;  
        z-index: 1;  
        left: 0;  
        top: 0;  
        width: 100%;  
        height: 100%;  
        overflow: auto;  
        background-color: rgb(0,0,0);  
        background-color: rgba(0,0,0,0.4);  
      }  
 
      .modal-content {  
        background-color: #fefefe;  
        margin: 15% auto;  
        padding: 20px;  
        border: 1px solid #888;  
        width: 80%;  
      }  
 
      .close {  
        color: #aaa;  
        float: right;  
        font-size: 28px;  
        font-weight: bold;  
      }  
 
      .close:hover,  
      .close:focus {  
        color: black;  
        text-decoration: none;  
        cursor: pointer;  
      }  
   </style>  
</head>  
<body>  
   <header>  
      <nav>  
        <ul>  
           <li><a href="#breakfast">Breakfast</a></li>  
           <li><a href="#lunch">Lunch</a></li>  
           <li><a href="#dinner">Dinner</a></li>  
           <li><a href="#desserts">Desserts</a></li>  
        </ul>  
      </nav>  
   </header>  
   <main>  
      <section id="breakfast">  
        <h1>Breakfast Recipes</h1>  
        <div class="recipe-container">  
           <div class="recipe">  
              <h2>Pancakes</h2>  
              <img src="https://www.howtocook.recipes/wp-content/uploads/2020/09/pancake-recipe.jpg" alt="Pancakes">  
              <p>A Sweet and Fluffy Delicacy</p>  
              <button onclick="openModal('pancakes')">View Recipe</button>  
           </div>  
           <div class="recipe">  
              <h2>Scrambled Eggs</h2>  
              <img src="https://cdn.loveandlemons.com/wp-content/uploads/2021/05/scrambled-eggs-1-580x851.jpg" alt="Scrambled Eggs">  
              <p>A High-protein, healthy but delicious food!</p>  
              <button onclick="openModal('scrambled-eggs')">View Recipe</button>  
           </div>  
        </div>  
      </section>  
      <section id="lunch">  
        <h1>Lunch Recipes</h1>  
        <div class="recipe-container">  
           <div class="recipe">  
              <h2>Grilled Chicken Sandwich</h2>  
              <img src="https://easychickenrecipes.com/wp-content/uploads/2023/06/grilled-chicken-sandwich-1-of-6-edited-768x1024.jpg" alt="Grilled Chicken Sandwich">  
              <p>Healthy, Flavourful, and Juicy sandwich</p>  
              <button onclick="openModal('grilled-chicken-sandwich')">View Recipe</button>  
           </div>  
           <div class="recipe">  
              <h2>Tomato Soup</h2>  
              <img src="https://natashaskitchen.com/wp-content/uploads/2021/08/Tomato-Soup-Recipe-4-728x1092.jpg" alt="Tomato Soup">  
              <p>Warm soup to Comfort you any day!</p>  
              <button onclick="openModal('tomato-soup')">View Recipe</button>  
           </div>  
        </div>  
      </section>  
      <section id="dinner">  
        <h1>Dinner Recipes</h1>  
        <div class="recipe-container">  
           <div class="recipe">  
              <h2>Beef Stroganoff</h2>  
              <img src="https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_913/k%2FPhoto%2FRecipes%2F2024-03-beef-stroganoff-190%2Fbeef-stroganoff-190-342_1" alt="Beef Stroganoff">  
              <p>Juicy and Tender chunks of Beef well worth the effort!</p>  
              <button onclick="openModal('beef-stroganoff')">View Recipe</button>  
           </div>  
           <div class="recipe">  
              <h2>Roasted Vegetables</h2>  
              <img src="https://www.recipetineats.com/tachyon/2021/07/Roasted-Vegetables_55.jpg?resize=900%2C1260&zoom=0.72" alt="Roasted Vegetables">  
              <p>High-fiber, Nutritional Dinner!</p>  
              <button onclick="openModal('roasted-vegetables')">View Recipe</button>  
           </div>  
        </div>  
      </section>  
      <section id="desserts">  
        <h1>Dessert Recipes</h1>  
        <div class="recipe-container">  
           <div class="recipe">  
              <h2>Chocolate Cake</h2>  
              <img src="https://cafedelites.com/wp-content/uploads/2020/04/cake.jpg" alt="Chocolate Cake">  
              <p>A Mouth-watering,Sweet, and Delicious Chocolate cake, </p>  
              <button onclick="openModal('chocolate-cake')">View Recipe</button>  
           </div>  
           <div class="recipe">  
              <h2>Fruit Salad</h2>  
              <img src="https://theforkedspoon.com/wp-content/uploads/2019/07/Fruit-Salad-5-700x1050.jpg" alt="Fruit Salad">  
              <p>A Refreshing and Fruity salad to fufill your Cravings!</p>  
              <button onclick="openModal('fruit-salad')">View Recipe</button>  
           </div>  
        </div>  
      </section>  
   </main>  
   <footer>  
   <div><button onclick="openModal('citations')">View Citations</button> </div>
      <p>&copy; 2025 Recipe Book</p>  
   </footer>  
 
   <!-- Modals for each recipe -->  
   <div id="pancakes-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Pancakes Recipe</h2>  
        <p>A Sweet and Fluffy Delicacy!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>1 cup all-purpose flour</li>  
           <li>2 tablespoons sugar</li>  
           <li>2 teaspoons baking powder</li>  
           <li>1/4 teaspoon salt</li>  
           <li>1 cup milk</li>  
           <li>1 large egg</li>  
           <li>2 tablespoons butter, melted</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>In a large bowl, whisk together flour, sugar, baking powder, and salt.</li>  
           <li>In a separate bowl, whisk together milk, egg, and melted butter.</li>  
           <li>Add the wet ingredients to the dry ingredients and stir until just combined.</li>  
           <li>Heat a non-stick skillet or griddle over medium heat.</li>  
           <li>Drop the batter by 1/4 cupfuls onto the skillet or griddle.</li>  
           <li>Cook for 2-3 minutes, until bubbles appear on the surface and the edges start to dry.</li>  
           <li>Flip and cook for another 1-2 minutes, until golden brown.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="scrambled-eggs-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Scrambled Eggs Recipe</h2>  
        <p>A High-protein,Healthy, but Delicious food!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>2 eggs</li>  
           <li>1 tablespoon butter</li>  
           <li>Salt and pepper to taste</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Crack the eggs into a bowl and whisk them together.</li>  
           <li>Heat the butter in a non-stick skillet over medium heat.</li>  
           <li>Pour in the eggs and cook until the edges start to set.</li>  
           <li>Use a spatula to gently scramble the eggs.</li>  
           <li>Cook until the eggs are cooked through.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="grilled-chicken-sandwich-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Grilled Chicken Sandwich Recipe</h2>  
        <p>Healthy,Flavourful, and Juicy sandwich!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>1 boneless, skinless chicken breast</li>  
           <li>1 tablespoon olive oil</li>  
           <li>1 teaspoon salt</li>  
           <li>1/2 teaspoon black pepper</li>  
           <li>4 slices of bread</li>  
           <li>Lettuce, tomato, and cheese (optional)</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Preheat a grill or grill pan to medium-high heat.</li>  
           <li>Season the chicken with salt and pepper.</li>  
           <li>Grill the chicken for 5-6 minutes per side, until cooked through.</li>  
           <li>Assemble the sandwiches with the grilled chicken, lettuce, tomato, and cheese (if using).</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="tomato-soup-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Tomato Soup Recipe</h2>  
        <p>Warm soup to Comfort you any day!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>2 tablespoons butter</li>  
           <li>1 onion, chopped</li>  
           <li>3 cloves garlic, minced</li>  
           <li>2 cups chopped fresh tomatoes</li>  
           <li>1 cup chicken broth</li>  
           <li>1/2 cup heavy cream</li>  
           <li>Salt and pepper to taste</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Melt the butter in a large pot over medium heat.</li>  
           <li>Add the onion and garlic and cook until softened.</li>  
           <li>Add the chopped tomatoes, chicken broth, and heavy cream.</li>  
           <li>Bring the mixture to a boil, then reduce the heat and simmer for 15-20 minutes.</li>  
           <li>Season with salt and pepper to taste.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="beef-stroganoff-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Beef Stroganoff Recipe</h2>  
        <p>Juicy and Tender chunks of Beef well worth the effort!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>1 pound beef strips</li>  
           <li>1 tablespoon vegetable oil</li>  
           <li>1 onion, chopped</li>  
           <li>2 cloves garlic, minced</li>  
           <li>1 cup mushrooms, sliced</li>  
           <li>1 cup beef broth</li>  
           <li>1 tablespoon Dijon mustard</li>  
           <li>1 teaspoon Worcestershire sauce</li>  
           <li>Salt and pepper to taste</li>  
           <li>8 ounces sour cream</li>  
           <li>Chopped fresh parsley (optional)</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Cook the beef in a large skillet over medium-high heat until browned.</li>  
           <li>Add the onion and garlic and cook until softened.</li>  
           <li>Add the mushrooms and cook until they release their liquid and start to brown.</li>  
           <li>Add the beef broth, mustard, and Worcestershire sauce.</li>  
           <li>Bring the mixture to a boil, then reduce the heat and simmer for 5-7 minutes.</li>  
           <li>Stir in the sour cream and season with salt and pepper to taste.</li>  
           <li>Serve hot, garnished with parsley if desired.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="roasted-vegetables-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Roasted Vegetables Recipe</h2>  
        <p>High-fiber, Nutritional Dinner!</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>2 tablespoons olive oil</li>  
           <li>1 large onion, chopped</li>  
           <li>3 cloves garlic, minced</li>  
           <li>2 large carrots, peeled and chopped</li>  
           <li>2 large potatoes, peeled and chopped</li>  
           <li>Salt and pepper to taste</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Preheat the oven to 425°F (220°C).</li>  
           <li>In a large bowl, toss the chopped onion, garlic, carrots, and potatoes with the olive oil, salt, and pepper until they are evenly coated.</li>  
           <li>Spread the vegetables out in a single layer on a large baking sheet.</li>  
           <li>Roast in the preheated oven for 25-30 minutes, until the vegetables are tender and lightly browned.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="chocolate-cake-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Chocolate Cake Recipe</h2>  
        <p>A Mouth-watering,Sweet, and Delicious Chocolate cake,</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>2 cups all-purpose flour</li>  
           <li>1 cup granulated sugar</li>  
           <li>2 teaspoons baking powder</li>  
           <li>1 teaspoon salt</li>  
           <li>1 cup unsweetened cocoa powder</li>  
           <li>1 cup whole milk, at room temperature</li>  
           <li>2 large eggs</li>  
           <li>1 teaspoon vanilla extract</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>Preheat the oven to 350°F (180°C).</li>  
           <li>In a medium bowl, whisk together the flour, sugar, baking powder, and salt.</li>  
           <li>In a large mixing bowl, whisk together the cocoa powder and milk until smooth.</li>  
           <li>Add the eggs one at a time, whisking well after each addition.</li>  
           <li>Whisk in the vanilla extract.</li>  
           <li>Gradually add the dry ingredients to the chocolate mixture, whisking until just combined.</li>  
           <li>Pour the batter into two 9-inch (23cm) round cake pans.</li>  
           <li>Bake for 30-35 minutes, until a toothpick inserted into the center comes out clean.</li>  
        </ol>  
      </div>  
   </div>  
 
   <div id="fruit-salad-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Fruit Salad Recipe</h2>  
        <p>A Refreshing and Fruity salad to fufill your Cravings!

</p>  
        <p>Ingredients:</p>  
        <ul>  
           <li>1 cup fresh pineapple, diced</li>  
           <li>1 cup fresh strawberries, hulled and sliced</li>  
           <li>1 cup fresh grapes, halved</li>  
           <li>1 cup fresh kiwi, peeled and diced</li>  
           <li>2 tablespoons honey</li>  
           <li>1 tablespoon fresh lime juice</li>  
        </ul>  
        <p>Instructions:</p>  
        <ol>  
           <li>In a large bowl, combine the pineapple, strawberries, grapes, and kiwi.</li>  
           <li>In a small bowl, whisk together the honey and lime juice until well combined.</li>  
           <li>Pour the honey-lime dressing over the fruit and toss to coat.</li>  
           <li>Serve immediately, or cover and refrigerate for up to 2 hours before serving.</li>  
        </ol>  
      </div>  
   </div>  
 <div id="citations-modal" class="modal">  
      <div class="modal-content">  
        <span class="close">&times;</span>  
        <h2>Citations</h2>
        <ul>  
           <li>“Best Homemade Pancake Recipe (Step-By-Step!).” How to Cook.Recipes, 10 Dec. 2020, www.howtocook.recipes/best-homemade-pancake-recipe/.</li>  
           <li>“How to Make Scrambled Eggs.” Love and Lemons, 23 May 2021, www.loveandlemons.com/scrambled-eggs-recipe/.</li>  
           <li>“Grilled Chicken Sandwiches.” Easy Chicken Recipes, 16 Nov. 2022, easychickenrecipes.com/grilled-chicken-sandwiches/.</li>  
           <li>Kravchuk, Natasha . “Easy Tomato Soup Recipe.” NatashasKitchen.com, 6 Aug. 2021, natashaskitchen.com/tomato-soup-recipe/.</li>  
           <li>Perlmutter, Rachel. “Beef Stroganoff.” Kitchn, The Kitchn, 7 Apr. 2024, www.thekitchn.com/beef-stroganoff-recipe-23651072. Accessed 21 Dec. 2024.</li>  
           <li>Nagi. “Roasted Vegetables.” RecipeTin Eats, 19 July 2021, www.recipetineats.com/roasted-vegetables/.</li>  
           <li>Karina. “Chocolate Cake.” Cafe Delites, 1 Apr. 2020, cafedelites.com/chocolate-cake/#recipe.</li>  
           <li>Randhawa, Jessica. “Easy Fruit Salad Recipe.” The Forked Spoon, 2 July 2020, theforkedspoon.com/fruit-salad-recipe/</li>  
           <li>Rombauer, Irma S, and Marion Rombauer Becker. Joy of Cooking. Simon and Schuster, 1975.</li>  
           <li>Hazan, Marcella. Essentials of Classic Italian Cooking. Knopf, 20 July 2011.</li>  
           <li>America's Test Kitchen. The Complete America’s Test Kitchen TV Show Cookbook 2001-2021. America’s Test Kitchen, 27 Oct. 2020.</li> 
           <li>J. Kenji López-Alt. The Food Lab: Better Home Cooking through Science. W. W. Norton and Company, 21 Sept. 2015.</li> 
           <li>Claiborne, Craig, and Pierre Franey. Craig Claiborne’s the New New York Times Cookbook. New York, Wings Books ; Avenel, N.J, 1995.</li> 
           
        </ul>  
        </div>
        </div>
   <script>  
      function openModal(recipe) {  
        var modal = document.getElementById(recipe + '-modal');  
        modal.style.display = 'block';  
      }  
 
      var closeButtons = document.getElementsByClassName('close');  
      for (var i = 0; i < closeButtons.length; i++) {  
        closeButtons[i].addEventListener('click', function() {  
           var modal = this.parentNode.parentNode;  
           modal.style.display = 'none';  
        });  
      }  
 
      window.addEventListener('click', function(event) {  
        if (event.target.classList.contains('modal')) {  
           event.target.style.display = 'none';  
        }  
      });  
   </script>  
</body>  
</html>



</html>
