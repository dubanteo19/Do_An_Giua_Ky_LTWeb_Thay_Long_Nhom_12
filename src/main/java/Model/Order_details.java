package Model;

public class Order_details {
	private int orderId;
	private int productId;
	private double price;
	private int quantity;
	
	/**
     * Constructor khởi tạo một đối tượng Order_details với các thuộc tính được cung cấp.
     *
     * @param order_id    Mã định danh của đơn hàng
     * @param product_id  Mã định danh của sản phẩm
     * @param price       Giá sản phẩm
     * @param quantity    Số lượng sản phẩm
     */
    public Order_details(int orderId, int productId, double price, int quantity) {
        this.orderId = orderId;
        this.productId = productId;
        this.price = price;
        this.quantity = quantity;
    }

    // Getter và Setter cho các thuộc tính

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    @Override
    public String toString() {
        return "Order_details{" +
                "orderId=" + orderId +
                ", productId=" + productId +
                ", price=" + price +
                ", quantity=" + quantity +
                '}';
    }
}
