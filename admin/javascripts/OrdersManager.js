class Order{
	constructor(userId,totalPrice,dateCreated){
		this.userId=userId;
		this.totalPrice=totalPrice;
		this.dateCreated=dateCreated;
	}
}
class OrdersManager{
	 orders=[];
	 constructor(){
	 	this.loadOrders();
	 }
	 loadOrders(){
	 	let SavedOrders =JSON.parse(localStorage.getItem("orders")); 
	 	if(SavedOrders!=null){
	 		this.orders = SavedOrders;
	 	}
	 	else{
	 		this.orders = [];
	 	}
	 }
	 addOrder(Order) {
	 	this.orders.push(Order);
	 	this.saveData();
	 }
	 saveData(){
	 	localStorage.setItem("orders",JSON.stringify(this.orders));
	 }
	 showAllOrders(){
	 	for(const o of this.orders){
	 		console.log(o);
	 	}
	 }
}
let ordersManager = new OrdersManager();
let o1 = new Order("KH1",100000,"11/10/2023");
ordersManager.addOrder(o1);