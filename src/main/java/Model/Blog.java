package Model;

public class Blog {
	private int id;
	private String content;
	private String createdAt;
	private String updatedAt;
	/**
     * Constructor khởi tạo một đối tượng Blog với các thuộc tính được cung cấp.
     *
     * @param id          Mã định danh của blog
     * @param content     Nội dung blog
     * @param created_at  Thời điểm tạo blog
     * @param updated_at  Thời điểm cập nhật blog
     */
    public Blog(int id, String content, String createdAt, String updatedAt) {
        this.id = id;
        this.content = content;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }
}
