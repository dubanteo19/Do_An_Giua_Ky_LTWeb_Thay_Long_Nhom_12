package Model;

import java.io.Serializable;

public class Product implements Serializable{
	private int id;
	private String name;
	private double costPrice;
	private double unitPrice;
	private double weight;
	private String thumb;
	
	public Product(int id, String name, double costPrice, double unitPrice, double weight, String thumb) {
		this.id = id;
		this.name = name;
		this.costPrice = costPrice;
		this.unitPrice = unitPrice;
		this.weight = weight;
		this.thumb = thumb;
	}
	public Product() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;  
	}
	
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", costPrice=" + costPrice + ", unitPrice=" + unitPrice
				+ ", weight=" + weight + ", thumb=" + thumb + "]";
	}
	
}
