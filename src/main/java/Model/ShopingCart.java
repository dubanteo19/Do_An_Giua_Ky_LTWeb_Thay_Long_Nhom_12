package Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShopingCart {
	private Map<Integer, CartItem> cart;

	public ShopingCart() {
		this.cart = new HashMap<Integer, CartItem>();
	}

	public void add(int id, CartItem i) {
		if (cart.containsKey(id)) {
			CartItem cartItem = cart.get(id);
			cartItem.increase(1);
			cart.put(id, cartItem);
		} else {
			this.cart.put(id, i);
		}
	}

	public int getSize() {
		int re = 0;
		for (Map.Entry<Integer, CartItem> entry : cart.entrySet()) {
			Integer key = entry.getKey();
			CartItem val = entry.getValue();
			re += val.getQuanlity();
		}
		return re;
	}

	public List<CartItem> getCartItemList() {
		List<CartItem> re = new ArrayList<CartItem>();
		for (Map.Entry<Integer, CartItem> entry : cart.entrySet()) {
			Integer key = entry.getKey();
			CartItem val = entry.getValue();
			re.add(val);
		}
		return re;
	}

	public void delete(int id) {
		this.cart.remove(id);
	}

	public void update(int id, int quanlity) {
		CartItem cartItem = cart.get(id);
		cartItem.setQuanlity(quanlity);
		this.cart.put(id, cartItem);
	}
}
