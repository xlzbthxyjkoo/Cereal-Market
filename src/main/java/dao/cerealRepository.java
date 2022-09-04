package dao;
import java.util.ArrayList;
import dto.cereal;

public class cerealRepository {
    private ArrayList<cereal>listOfcereal =new ArrayList<cereal>();
    private static cerealRepository instance = new cerealRepository();
    
    public static cerealRepository getInstance() {
       return instance;
    }
    
    public cerealRepository(){
        
       cereal cheerios1 =new cereal("num1", 10);//번호,

       cheerios1.setName("Honey Nut Cheerios");//이름
       cheerios1.setPrice(5);//가격
       cheerios1.setNote("Bee Happy. Bee Healthy.\r\n" + 
               "You already know that Honey Nut Cheerios. Naturally Flavored has the irresistible taste of golden honey, making it a family favorite. But did you know that each little “o” also contains soluble fiber from whole grain oats? As part of a heart-healthy* eating plan, eating Honey Nut Cheerios each day can help lower your cholesterol. Made with whole grains and low in fat, Cheerios also provides 12 essential vitamins and minerals. That’s something that everyone can smile about!");//설명
       cheerios1.setStock(99);//재고
       cheerios1.setFile("./image/cheerios/cheeriosa.png");
        
       listOfcereal.add(cheerios1);
         
       cereal cheerios2 =new cereal("num2",11);//번호,

       cheerios2.setName("Cheerios Oat Crunch, Oats ‘N Honey");//이름
       cheerios2.setPrice(6);//가격
       cheerios2.setNote("Oats on O’s\r\n" + 
                "The Cheerios you love with whole grain oats and real honey all rolled into one. New Cheerios Oat Crunch, Oats ‘N Honey, is a nutritious, hearty and simply delicious breakfast or snack.");
       cheerios2.setStock(65);//재고
       cheerios2.setFile("./image/cheerios/cheeriosb.png");
          
       listOfcereal.add(cheerios2);
          
       cereal cheerios3 =new cereal("num3", 12);//번호,

       cheerios3.setName("Chocolate Cheerios");//이름
       cheerios3.setPrice(7);//가격
       cheerios3.setNote("A Touch of Delicious Chocolate Taste in Every Bite!\r\n" + 
                 "Enjoy Chocolate Cheerios cereal—a perfect balance of whole grain goodness and delicious chocolate taste. Made with whole-grain oats, and real cocoa they’re now gluten-free and have only 8 grams of sugar. A heart-healthy choice for our whole family, and a great combination that will make you and your family smile.");//설명
       cheerios3.setStock(10);//재고
       cheerios3.setFile("./image/cheerios/cheeriosc.png");
           
       listOfcereal.add(cheerios3);
         
       cereal cheerios4 =new cereal("num4", 13);//번호,

       cheerios4.setName("Very Berry Cheerios");//이름
       cheerios4.setPrice(7);//가격
       cheerios4.setNote("So berry good\r\n" + 
                 "The goodness of Cheerios, now bursting with the taste of real berries! Very Berry Cheerios is our newest flavor with a blend of strawberries, raspberries, and blueberries, serving just the right amount of sweetness in every bite. With no colors from artificial sources, no artificial flavors, and no high fructose corn syrup, gluten-free Very Berry Cheerios is a bowl of goodness everyone can enjoy.");
       cheerios4.setStock(5);//재고
       cheerios4.setFile("./image/cheerios/cheeriosd.png");

       listOfcereal.add(cheerios4);
           
       cereal cheerios5 =new cereal("num5", 14);//번호,

       cheerios5.setName("Strawberry Banana Cheerios");//이름
       cheerios5.setPrice(8);//가격
       cheerios5.setNote("Strawberry Banana Cheerios cereal brings you the great taste of fresh cut juicy strawberries and perfectly ripe bananas. Made with real fruit puree and whole grain oats, this cereal is one the whole family will love.");
       cheerios5.setStock(15);//재고
       cheerios5.setFile("./image/cheerios/cheeriose.png");

       listOfcereal.add(cheerios5);
       
       cereal cinnamon1  =new cereal("num6", 21);

       cinnamon1.setName("CINNAMON TOAST CRUNCH");//이름
       cinnamon1.setPrice(6);//가격
       cinnamon1.setNote("Wake up to the epic combination of cinnamon and sugar in General Mills Cinnamon Toast Crunch Breakfast Cereal. Every crispy square is blasted with CINNADUST, the irresistible mix of real cinnamon and sugar that makes your mouth happy. Just pour a bowl and add milk. Don't forget to slurp up the CINNAMILK—the delicious cereal milk you find at the bottom of your bowl after enjoying Cinnamon Toast Crunch Cereal. Parents like that each crispy square is made with whole grain wheat, and without high fructose corn syrup or artificial flavors. Plus, every serving provides vitamins and minerals as part of a delicious kids breakfast. The classic kids snack is a favorite with grown-ups, too. Enjoy this crunchy cinnamon cereal any way you like. Sprinkle the crispy squares over a sundae as ice cream toppings. Nibble from a bowlful as party snacks. Or pack them in your brown bag lunch. Explore all the fun creations you can make with Cinnamon Toast Crunch recipes from General Mills, including cereal bars, snack mixes and cakes. This 12-ounce box contains about 8 servings of sweetened rice and whole wheat cereal and is an official participating Box Tops product to help support education. Whether you're looking for delicious kids snacks, trail mix ingredients or a breakfast cereal for the whole family, General Mills cereals spread goodness from tots to grown-ups.");
       cinnamon1.setStock(89);//재고
       cinnamon1.setFile("./image/cinnamon/cinnamona.png");

       listOfcereal.add(cinnamon1);
       
       cereal cinnamon2  =new cereal("num7", 22);
       
       cinnamon2.setName("CHOCOLATE TOAST CRUNCH");//이름
       cinnamon2.setPrice(7);//가격
       cinnamon2.setNote("Taste the chocolatey twist on your favorite crazy squares with General Mills Chocolate Toast Crunch Cereal. Each crispy, chocolatey square is loaded with real cocoa, then dusted with that irresistible cinnamon sugar mix. It's a combination so good, it came back by popular demand. Just pour a bowl and add milk. Don't forget to slurp up the delicious cereal milk at the bottom of your bowl after you enjoy every crunchy bite. Parents like that each serving of the cereal provides whole grains, vitamins and minerals as part of a delicious kids breakfast. The crunchy kids cereal is a favorite with grown ups, too. Enjoy this naturally flavored chocolate cereal any way you like. Sprinkle the squares over a sundae as crispy ice cream toppings. Nibble from a bowlful as party snacks. Or pack them in your brown bag lunch. This 12-ounce Family Size cereal box contains about 13 servings of sweetened rice and whole wheat cereal and is an official participating Box Tops product to help support education. Whether you're looking for Cinnamon Toast Crunch cereal, delicious kids snacks or a breakfast cereal for the whole family, General Mills cereals spread goodness from tots to grown-ups.");
       cinnamon2.setStock(56);//재고
       cinnamon2.setFile("./image/cinnamon/cinnamonb.png");

       listOfcereal.add(cinnamon2);
       
       cereal cinnamon3  =new cereal("num8", 23);
       
       cinnamon3.setName("CINNAMON TOAST CRUNCH CHURROS");//이름
       cinnamon3.setPrice(8);//가격
       cinnamon3.setNote("Make breakfast your fiesta time with General Mills Churros Cinnamon Toast Crunch Breakfast Cereal. Each twisty bite captures the shape, color and excitement of churros, that epic cinnamon-sugar treat. The churro-shaped cereal is blasted with CINNADUST, the irresistible mix of real cinnamon and sugar that makes your mouth happy. Just pour a bowl and add milk for part of a delicious kids breakfast. Don't forget to slurp up the CINNAMILK—that delicious cereal milk you find at the bottom of your bowl after enjoying the crunchy cereal. Grown-ups like the epic combination of cinnamon and sugar, too. Plus, every serving of Cinnamon Toast Crunch Churros provides vitamins and minerals. Enjoy this cinnamon cereal any way you like. Pack some in your lunch. Nibble from a bowlful as party snacks. Or make it into cereal bars to share. This 19.3-ounce Family Size cereal box contains about 13 servings of sweetened rice and whole wheat cereal and is an official participating Box Tops product to help support education. Whether you're looking for delicious kids snacks, snack mix ingredients or a breakfast cereal for the whole family, General Mills cereals spread goodness from tots to grown-ups.");
       cinnamon3.setStock(32);//재고
       cinnamon3.setFile("./image/cinnamon/cinnamonc.png");

       listOfcereal.add(cinnamon3);
       
       cereal cinnamon4  =new cereal("num9", 24);
       
       cinnamon4.setName("CINNAMON TOAST CRUNCH CHOCOLATE CHURROS");//이름
       cinnamon4.setPrice(10);//가격
       cinnamon4.setNote("Since their origin in Spain centuries ago, Churros have evolved into the familiar cinnamon-sugar treats enjoyed across cultures around the world. Now we’ve combined this cinnamon-sugar flavor with the unmistakable crunch of Chocolate Toast Crunch Cereal!");
       cinnamon4.setStock(65);//재고
       cinnamon4.setFile("./image/cinnamon/cinnamond.png");

       listOfcereal.add(cinnamon4);
       
       cereal kellogg1  =new cereal("num10", 31);
       
       kellogg1.setName("Kellogg's® Froot Loops® Cereal");//이름
       kellogg1.setPrice(4);//가격
       kellogg1.setNote("Bursting with flavor and a delicious crunch, Kellogg’s® Froot Loops® Cereal is the fruitiest way to start your day.");
       kellogg1.setStock(101);//재고
       kellogg1.setFile("./image/kellogg/kellogga.png");

       listOfcereal.add(kellogg1);
       
       cereal kellogg2  =new cereal("num11", 32);
       
       kellogg2.setName("Kellogg's® Froot Loops® with Marshmallows Cereal");//이름
       kellogg2.setPrice(5);//가격
       kellogg2.setNote("Sweetened multi-grain cereal with marshmallow pieces.");
       kellogg2.setStock(43);//재고
       kellogg2.setFile("./image/kellogg/kelloggb.png");

       listOfcereal.add(kellogg2);
       
       cereal kellogg3  =new cereal("num12", 33);
       
       kellogg3.setName("Kellogg's® Special K® Cinnamon Pecan Cereal");//이름
       kellogg3.setPrice(6);//가격
       kellogg3.setNote("We're nuts about nuts! And Special K® Cinnamon Pecan Cereal has plenty of 'em. The flavor of cinnamon warms up this crunch mix of rice and wheat flakes. This cereal is packed with flavorful pecans; it's never too early to get a little nutty.");
       kellogg3.setStock(35);//재고
       kellogg3.setFile("./image/kellogg/kelloggc.png");

       listOfcereal.add(kellogg3);
       
       cereal kellogg4  =new cereal("num13", 34);
       
       kellogg4.setName("Kellogg's® Special K® Blueberry with Lemon Clusters Cereal");//이름
       kellogg4.setPrice(5);//가격
       kellogg4.setNote("Get ready for a new favorite flavor combination with Special K® Blueberry with Lemon Clusters. With blueberry oat and lemony clusters, this delicious addition also provides vitamins C and E. It's a berry delicious start to the day.");
       kellogg4.setStock(73);//재고
       kellogg4.setFile("./image/kellogg/kelloggd.png");

       listOfcereal.add(kellogg4);
       
       cereal luckycharms1  =new cereal("num14", 41);
       
       luckycharms1.setName("Chocolate Lucky Charms Cereal");//이름
       luckycharms1.setPrice(7);//가격
       luckycharms1.setNote("Magically Delicious Chocolate Lucky Charms cereal features chocolate cereal pieces and colorful marshmallows. Made with 20g of Whole Grains, it's the kids' brand with adult appeal for more than four decades!");
       luckycharms1.setStock(13);//재고
       luckycharms1.setFile("./image/luckycharms/luckycharmsa.png");

       listOfcereal.add(luckycharms1);
       
       cereal luckycharms2  =new cereal("num15", 42);
       
       luckycharms2.setName("Fruity Lucky Charms Cereal");//이름
       luckycharms2.setPrice(6);//가격
       luckycharms2.setNote("Magically delicious Lucky Charms cereal features frosted oats and colored marshmallows. Made with 20g of whole grain per Serving");
       luckycharms2.setStock(31);//재고
       luckycharms2.setFile("./image/luckycharms/luckycharmsb.png");

       listOfcereal.add(luckycharms2);
       
       cereal luckycharms3  =new cereal("num16", 43);
       
       luckycharms3.setName("Lucky Charms Marshmallow Clusters");//이름
       luckycharms3.setPrice(6);//가격
       luckycharms3.setNote("Try Lucky Charms Marshmallow Clusters: More satisfying crunchy clusters and more marshmallowy flavor!");
       luckycharms3.setStock(12);//재고
       luckycharms3.setFile("./image/luckycharms/luckycharmsc.png");

       listOfcereal.add(luckycharms3);
       
       cereal luckycharms4  =new cereal("num17", 44);
       
       luckycharms4.setName("Original Lucky Charms Cereal");//이름
       luckycharms4.setPrice(6);//가격
       luckycharms4.setNote("Make a magical start to the day with General Mills Lucky Charms Gluten Free Cereal with Marshmallows. A crunchy bowl of frosted toasted oat cereal and Lucky's magical marshmallows brings smiles to breakfast time. Share the magic with everyone in your family. Pour a bowl with milk for breakfast, or pack a bag of the whole grain cereal with marshmallows for a snack. The toasted oat cereal provides kids with 19 grams of whole grain per serving, plus 12 vitamins and minerals. The kids cereal is also a good source of calcium and vitamin D. This 10.5-ounce box makes it easy to enjoy breakfast. Or think outside of the cereal box. Set up a sundae station with Lucky Charms for ice cream toppings, serve hot chocolate with the marshmallows on St Patricks Day, or throw a rainbow birthday party with a tray of homemade unicorn cereal bars and marshmallow cookies for party snacks. Who knows what fun ideas you'll think up when you follow Lucky's trail? Whether you're searching for a kids breakfast cereal or fun party snacks for kids, General Mills cereals spread goodness from tots to grown-ups.");
       luckycharms4.setStock(40);//재고
       luckycharms4.setFile("./image/luckycharms/luckycharmsd.png");

       listOfcereal.add(luckycharms4);
       

    }
    public ArrayList<cereal> getAllcereal(){
        return listOfcereal;
    }
    
    public cereal getcerealById(String cerealId) {
       
       cereal cerealById = null;
       
       for(int i=0; i < listOfcereal.size(); i++) {
          
          cereal cereal = listOfcereal.get(i);
          if(cereal != null && cereal.getId() != null && cereal.getId().contentEquals(cerealId)) {
             cerealById = cereal;
             break;
          }
          
       }
       
       
       return cerealById;
    }
    
    
    public void addcereal(cereal cereal) {
        listOfcereal.add(cereal);
    }
    
    public cereal getId(String id) {
       
       cereal Id = null;
       
      for (int i = 0; i < listOfcereal.size(); i++) {
         cereal cereal = listOfcereal.get(i);
         if (cereal != null && cereal.getId() != null && cereal.getId().equals(id)) {
            Id = cereal;
            break;
         }
      }
      return Id;
       
       
    }
       
       
    }
    
    
