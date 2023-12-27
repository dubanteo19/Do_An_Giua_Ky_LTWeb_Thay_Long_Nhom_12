package Model;

public class Images {
	private int id;
	private int productId;
	private String name;
	private String path;
	 /**
     * Constructor khởi tạo một đối tượng Images với các thuộc tính được cung cấp.
     *
     * @param id          Mã định danh của hình ảnh
     * @param product_id  Mã định danh của sản phẩm mà hình ảnh thuộc về
     * @param name        Tên hình ảnh
     * @param path        Đường dẫn đến hình ảnh
     */
    public Images(int id, int productId, String name, String path) {
        this.id = id;
        this.productId = productId;
        this.name = name;
        this.path = path;
    }

    // Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
    
    @Override
    public String toString() {
        return "Images{" +
                "id=" + id +
                ", productId=" + productId +
                ", name='" + name + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
