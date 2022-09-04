package dto;
 
import java.io.Serializable;

public class cereal implements Serializable{
      private static final long serialVersionUID = -4274700572038677000L;
      
      private String id;  //10-19: cheerios / 20-29: cinnamon / 30-39: kellogg / 40-49: luckycharms
      private String name; //시리얼 이름
      private int price; //시리얼 가격
      private String note; //상품 설명
      private long stock; //재고 수
      private int compare;
      private String file;
      private int quantity;  //장바구니에 담은 개수
   
      public cereal() {
      super();
      // TODO Auto-generated constructor stub
   }
   public cereal(String id, int compare) {
      super();
      this.id = id;
      this.compare = compare;
   }
   
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
   }
   public String getNote() {
      return note;
   }
   public void setNote(String note) {
      this.note = note;
   }
   public long getStock() {
      return stock;
   }
   public void setStock(long stock) {
      this.stock = stock;
   }
   public int getCompare() {
      return compare;
   }
   public void setCompare(int compare) {
      this.compare = compare;
   }
   public String getFile() {
      return file;
   }

   public void setFile(String file) {
      this.file = file;
   }
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
   
    
}
    
    