package Entity;

public class Product {
    private String id;
    private String name;
    private double price;
    private String title;
    private String color;
    private int gender;
    private String image;
    private int quantity;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product(String id, String name, double price, String title, String color, int gender, String image, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.title = title;
        this.color = color;
        this.gender = gender;
        this.image = image;
        this.quantity = quantity;
    }

    public Product(String id, String name, double price, String title, String color, int gender, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.title = title;
        this.color = color;
        this.gender = gender;
        this.image = image;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", title='" + title + '\'' +
                ", color='" + color + '\'' +
                ", gender=" + gender +
                ", image='" + image + '\'' +
                '}';
    }
}
