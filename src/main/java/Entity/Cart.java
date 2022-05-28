package Entity;

public class Cart {
    private String email;
    private String id;
    private int quantity;

    public Cart(String email, String id, int quantity) {
        this.email = email;
        this.id = id;
        this.quantity = quantity;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
