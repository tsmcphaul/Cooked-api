# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_1 = Category.create( name: "Appetizers", image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2010/11/1/0/FNM_120110-Copy-That-002_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382539494507.jpeg")
category_2 =Category.create( name: "Breakfast", image: "https://img.kidspot.com.au/4i6pv_0_/kk/2015/03/big_breakfast_kd-501643-1.jpg")
category_3 = Category.create( name: "Salads", image: "https://www.wellplated.com/wp-content/uploads/2019/04/Spinach-Strawberry-Salad.jpg")
category_4 = Category.create( name: "Sandwiches", image: "https://www.recipegirl.com/wp-content/uploads/2007/02/Grilled-Reuben-Sandwiches-1-1.jpg")
category_5 = Category.create( name: "Desserts", image: "https://www.myweekendplan.com.my/wp-content/uploads/2020/05/15-Words-to-Describe-Your-Desserts-4.jpg")
category_6 = Category.create( name: "Pasta", image: "https://elavegan.com/wp-content/uploads/2021/10/hand-stirring-creamy-tomato-sauce-vegetable-pasta-in-black-skillet.jpg")
category_7 = Category.create( name: "Seafood", image: "https://img.taste.com.au/z_S6BhQY/taste/2018/03/apr-18_salmon-with-parsley-salad-3000x2000-136320-1.jpg")
category_8 = Category.create( name: "International", image: "https://s3-media0.fl.yelpcdn.com/bphoto/ItSOelrDHcH5wu0F_D8-ug/l.jpg")
category_9 = Category.create( name: "Vegan", image: "https://www.runtastic.com/blog/wp-content/uploads/2015/12/thumbnail_1200x800-1-1024x683.jpg")
category_10 = Category.create( name: "Burgers", image: "https://www.leanandgreenbusiness.com/wp-content/uploads/2019/04/images1889-5ca5983e24411-1024x683.jpg")
category_11 = Category.create( name: "Poultry", image: "https://hips.hearstapps.com/hmg-prod/images/190416-air-fryer-wings-137-1556204553.jpg")
category_12 = Category.create( name: "Beef", image: "https://static.onecms.io/wp-content/uploads/sites/9/2021/03/26/beef-wellington-FT-RECIPE0321.jpg")
category_13 = Category.create( name: "Pork", image: "https://hips.hearstapps.com/delish/assets/18/11/1520972774-pork-chops-horizontal.jpg")


Recipe.create(
    name: "Grilled Cheese Sandwich",
    ingredients: "Bread, Cheedar Cheese, Butter",
    instructions: "Preheat skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side-down onto skillet bottom and add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side-up on top of sandwich. Grill until lightly browned and flip over; continue grilling until cheese is melted. Repeat with remaining 2 slices of bread, butter and slice of cheese.",
    likes: 10,
    image: "https://natashaskitchen.com/wp-content/uploads/2021/08/Grilled-Cheese-Sandwich-3.jpg",
    preptime: 5,
    cooktime: 15,
    category_id: category_4.id
)

Recipe.create(
    name: "Spaghetti",
    ingredients: "Spaghetti, Ground Beef, Onion, Tomato Paste, Tomato Soup",
    instructions: "Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain.  In a large skillet over medium heat, cook ground beef with onion until meat is brown. Drain. Return meat mixture to pan with tomato paste, tomato soup and water. Cook, stirring, until heated through and thickened, 5 to 15 minutes. Serve over cooked pasta.", 
    likes: 7,
    image: "https://a7m3f5i5.rocketcdn.me/wp-content/uploads/2015/09/moms-spaghetti-sauce-recipe-a-healthy-slice-of-life-6-of-6-800x600.jpg",
    preptime: 25,
    cooktime: 25,
    category_id: category_6.id
)

Recipe.create(
    name: "Banana Pudding",
    ingredients: "Whipped Topping, Condensed Milk, Cream Cheese, Milk, Pudding Mix, Bananas, Chessmen Cookies",
    instructions: "Line the bottom of a 13x9x2-inch dish with 1 bag of cookies and layer bananas on top. In a bowl, combine the milk and pudding mix and blend well using a handheld electric mixer. Using another bowl, combine the cream cheese and condensed milk together and mix until smooth. Fold the whipped topping into the cream cheese mixture. Add the cream cheese mixture to the pudding mixture and stir until well blended. Pour the mixture over the cookies and bananas and cover with the remaining cookies. Refrigerate until ready to serve.", 
    likes: 15,
    image: "https://preppykitchen.com/wp-content/uploads/2021/07/banana-pudding-recipe-n.jpg",
    preptime: 15,
    cooktime: 0,
    category_id: category_5.id
)


