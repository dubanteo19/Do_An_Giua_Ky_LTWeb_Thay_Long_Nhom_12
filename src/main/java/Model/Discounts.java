package Model;

public class Discounts {
	private int id;
	private double amount;
	private String code;
	private String type;
	private String description;
	private double condition;
	private String expDate;
	
	/**
     * Constructor khởi tạo một đối tượng Discounts với các thuộc tính được cung cấp.
     *
     * @param id          Mã định danh của mã giảm giá
     * @param amount      Giá trị giảm giá
     * @param code        Mã giảm giá
     * @param type        Loại giảm giá
     * @param description Mô tả giảm giá
     * @param condition   Điều kiện áp dụng giảm giá
     * @param exp_date    Ngày hết hạn giảm giá
     */
    public Discounts(int id, double amount, String code, String type, String description, double condition, String expDate) {
        this.id = id;
        this.amount = amount;
        this.code = code;
        this.type = type;
        this.description = description;
        this.condition = condition;
        this.expDate = expDate;
    }

    // Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getCondition() {
        return condition;
    }

    public void setCondition(double condition) {
        this.condition = condition;
    }

    public String getExpDate() {
        return expDate;
    }

    public void setExpDate(String expDate) {
        this.expDate = expDate;
    }

    @Override
    public String toString() {
        return "Discounts{" +
                "id=" + id +
                ", amount=" + amount +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", description='" + description + '\'' +
                ", condition=" + condition +
                ", expDate='" + expDate + '\'' +
                '}';
    }
}
