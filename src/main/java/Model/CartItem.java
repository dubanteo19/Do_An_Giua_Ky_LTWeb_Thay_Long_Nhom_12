package Model;

public class CartItem {
	private Product product;
	private int quanlity;

	public CartItem(Product product, int quanlity) {
		this.product = product;
		this.quanlity = quanlity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	public void increase(int quanlity) {
		this.quanlity += quanlity;
	}

	public double calculatePrice() {
		return this.product.getUnitPrice() * this.quanlity;
	}
}
