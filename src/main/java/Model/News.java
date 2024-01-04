package Model;

public class News {
	private int id;
	private String title;
	private int blogId;
	private String author;
	/**
     * Constructor khởi tạo một đối tượng News với các thuộc tính được cung cấp.
     *
     * @param id         Mã định danh của tin tức
     * @param title      Tiêu đề tin tức
     * @param blog_id    Mã định danh của blog mà tin tức thuộc về
     * @param author     Tác giả tin tức
     */
    public News(int id, String title, int blogId, String author) {
        this.id = id;
        this.title = title;
        this.blogId = blogId;
        this.author = author;
    }

    // Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", blogId=" + blogId +
                ", author='" + author + '\'' +
                '}';
    }
}
