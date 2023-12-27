package Model;

public class Orders {
	private int id;
	private int statusId;
	private int userId;
	private double totalPrice;
	private int discountId;
	private String paymentMethod;
	private double shippingFee;
	private String address;
	private String dateCreated;
	private String lastUpdated;
	
	/**
     * Constructor khởi tạo một đối tượng Orders với các thuộc tính được cung cấp.
     *
     * @param id             Mã định danh của đơn hàng
     * @param statusId       Mã định danh trạng thái đơn hàng
     * @param userId         Mã định danh người dùng
     * @param totalPrice     Tổng giá trị đơn hàng
     * @param discountId     Mã định danh giảm giá
     * @param paymentMethod  Phương thức thanh toán
     * @param shippingFee    Phí vận chuyển
     * @param address        Địa chỉ giao hàng
     * @param dateCreated    Ngày tạo đơn hàng
     * @param lastUpdated    Ngày cập nhật đơn hàng
     */
    public Orders(int id, int statusId, int userId, double totalPrice, int discountId, String paymentMethod, double shippingFee, String address, String dateCreated, String lastUpdated) {
        this.id = id;
        this.statusId = statusId;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.discountId = discountId;
        this.paymentMethod = paymentMethod;
        this.shippingFee = shippingFee;
        this.address = address;
        this.dateCreated = dateCreated;
        this.lastUpdated = lastUpdated;
    }

    // Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(String lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
	@Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", statusId=" + statusId +
                ", userId=" + userId +
                ", totalPrice=" + totalPrice +
                ", discountId=" + discountId +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", shippingFee=" + shippingFee +
                ", address='" + address + '\'' +
                ", dateCreated=" + dateCreated +
                ", lastUpdated=" + lastUpdated +
                '}';
    }
}
