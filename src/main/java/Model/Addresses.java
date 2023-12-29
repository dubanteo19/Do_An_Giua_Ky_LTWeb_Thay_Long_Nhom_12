package Model;

public class Addresses {
	private int id;
	private String province;
	private String districts;
	private String wards;
	private String description;
	
	 /**
     * Constructor khởi tạo một đối tượng Addresses với các thuộc tính được cung cấp.
     *
     * @param id          Mã định danh của địa chỉ
     * @param province    Tỉnh/Thành phố
     * @param districts   Quận/Huyện
     * @param wards       Phường/Xã
     * @param description Mô tả địa chỉ
     */
    public Addresses(int id, String province, String districts, String wards, String description) {
        this.id = id;
        this.province = province;
        this.districts = districts;
        this.wards = wards;
        this.description = description;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistricts() {
        return districts;
    }

    public void setDistricts(String districts) {
        this.districts = districts;
    }

    public String getWards() {
        return wards;
    }

    public void setWards(String wards) {
        this.wards = wards;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    @Override
    public String toString() {
        return "Addresses{" +
                "id=" + id +
                ", province='" + province + '\'' +
                ", districts='" + districts + '\'' +
                ", wards='" + wards + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
}
