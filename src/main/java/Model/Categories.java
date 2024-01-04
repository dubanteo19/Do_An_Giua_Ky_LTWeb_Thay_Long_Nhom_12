package Model;

public class Categories {
	private int id;
	private int parentCategogyId;
	private String name;
	private int active;
	/**
     * Constructor khởi tạo một đối tượng Categories với các thuộc tính được cung cấp.
     *
     * @param id       Mã định danh của danh mục
     * @param parent_categogy_id    Mã định danh của danh mục cha
     * @param name     Tên danh mục
     * @param active   Trạng thái hoạt động của danh mục (0: không hoạt động, 1: hoạt động)
     */
    public Categories(int id, int parentCategogyId, String name, int active) {
        this.id = id;
        this.parentCategogyId = parentCategogyId;
        this.name = name;
        this.active = active;
    }
    
    public Categories() {
	}

	// Getter và Setter cho các thuộc tính

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getParentCategoryId() {
        return parentCategogyId;
    }

    public void setParentCategoryId(int parentCategogyId) {
        this.parentCategogyId = parentCategogyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Categories{" +
                "id=" + id +
                ", parentCategoryId=" + parentCategogyId +
                ", name='" + name + '\'' +
                ", active=" + active +
                '}';
    }
}
