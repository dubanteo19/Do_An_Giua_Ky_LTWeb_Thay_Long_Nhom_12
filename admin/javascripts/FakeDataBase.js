class Type {
    constructor(id, description, categoryId) {
        this.id = id;
        this.description = description;
        this.categoryId = categoryId;
    }
}
class Price {
    constructor(id, productId, costPrice, unitPrice, typeId) {
        this.id = id;
        this.productId = productId;
        this.costPrice = costPrice;
        this.UnitPrice = unitPrice;
        this.typeId = typeId;
    }
}
class Image {
    constructor(id, productId, name, path) {
        this.id = id;
        this.productId = productId;
        this.name = name;
        this.path = path;
    }
}
class Order {
    constructor(id, statusId, userId, totalPrice, discount_id, paymentMethod, shipingFee, address) {
        this.id = id;
        this.statusId = statusId;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.discount_id = discount_id;
        this.paymentMethod = paymentMethod;
        this.shipingFee = shipingFee;
        this.address = address;
        this.dateCreated = this.getToday();
    }
    getToday() {
        let today = new Date();
        let date = today.getHours() + ":" + today.getMinutes() + " " + today.getDate() + "/" + (today.getMonth() + 1) + "/" + today.getFullYear();
        return date;
    }
}
class Role {
    constructor(id, description) {
        this.id = id;
        this.description = description;
    }
}
class User {
    constructor(email, password, fullName, phone) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.address = "";
        this.id = 0;
        this.statusId = "1";
    }
}
class Product {
    constructor(id, name, quantity, categoryId, blogId, statusId) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.blogId = blogId;
        this.statusId = statusId;
    }
}
class Status {
    constructor(id, description) {
        this.id = id;
        this.description = description;
    }
}
class Category {
    constructor(id, parentCategories, name, active) {
        this.id = id;
        this.parentCategories = parentCategories;
        this.name = name;
        this.active = active;
    }
}
class DataBaseManager {
    statuses = [];
    users = []
    categories = [];
    products = [];
    orders = [];
    images = [];
    types = [];
    prices = [];
    constructor() {
        this.loadDataBase();
    }
    // Load and save data to DataBase
    saveData() {
        localStorage.setItem("statuses", JSON.stringify(this.statuses));
        localStorage.setItem("users", JSON.stringify(this.users));
        localStorage.setItem("products", JSON.stringify(this.products));
        localStorage.setItem("categories", JSON.stringify(this.categories));
        localStorage.setItem("orders", JSON.stringify(this.orders));
        localStorage.setItem("images", JSON.stringify(this.images));
        localStorage.setItem("types", JSON.stringify(this.types));
        localStorage.setItem("prices", JSON.stringify(this.prices));

    }
    loadDataBase() {
        let statuses = JSON.parse(localStorage.getItem("statuses"));
        let users = JSON.parse(localStorage.getItem("users"));
        let products = JSON.parse(localStorage.getItem("products"));
        let categories = JSON.parse(localStorage.getItem("categories"));
        let orders = JSON.parse(localStorage.getItem("orders"));
        let images = JSON.parse(localStorage.getItem("images"));
        let types = JSON.parse(localStorage.getItem("types"));
        let prices = JSON.parse(localStorage.getItem("prices"));
        if (statuses != null) this.statuses = statuses;
        if (users != null) this.users = users;
        if (products != null) this.products = products;
        if (categories != null) this.categories = categories;
        if (images != null) this.images = images;
        if (types != null) this.types = types;
        if (prices != null) this.prices = prices;
    }
    //Price manager
    addPrice(price) {
        for (const p of this.prices) {
            if (p.id === price.id) return false;
        }
        this.prices.push(price);
        this.saveData();
        return true;
    }
    getTypesByProductId(id) {
        let re = [];
        for (const t of this.prices) {
            if (t.productId === id) {
                re.push(this.findType(t.typeId));
            }
        }
        return re;
    }


    //Type manager 
    addType(type) {
        for (const t of this.types) {
            if (t.id === type.id) return false;
        }
        this.types.push(type);
        this.saveData();
        return true;
    }
    findType(id){
        for(const t of this.types){
            if(t.id ==id){
                return t;
            }
        }
        return null;
    }


    // Image manager
    addImage(image) {
        for (const i of this.images) {
            if (i.id === image.id) return false;
        }
        this.images.push(image);
        this.saveData();
        return true;
    }
    getImagesByProductId(id) {
        let re = [];
        for (const i of this.images) {
            if (i.productId === id) {
                re.push(i);
            }
        }
        return re;
    }

    // Order manager
    addOrder(order) {
        for (const o of this.orders) {
            if (o.id === order.id) return false;
        }
        this.orders.push(order);
        this.saveData();
        return true;
    }
    findOrder(id) {
        for (const o of this.orders) {
            if (o.id === id) return o;
        }
        return null;

    }

    // categories manager
    addCategory(catelogy) {
        for (const c of this.categories) {
            if (c.id === catelogy.id) return false;
        }
        this.categories.push(catelogy);
        this.saveData();
        return true;
    }
    findCategory(id) {
        for (const c of this.categories) {
            if (c.id === id) return c;

        }
        return null;
    }

    // Products manager
    addProduct(product) {
        for (const p of this.products) {
            if (p.id === product.id) return false;
        }
        this.products.push(product);
        this.saveData();
        return true;
    }

    findProduct(id) {
        for (const p of this.products) {
            if (p.id === id) return p;
        }
        return false;
    }


    // Statuses manager
    findStatus(id) {
        for (const s of this.statuses) {
            if (s.id === id) {
                return s;
            }
        }
        return null;
    }
    addStatus(status) {
        for (const s of this.statuses) {
            if (s.id === status.id) return false;
        }
        this.statuses.push(status);
        this.saveData();
        return true;
    }

    /* Users manager*/
    autoSetUserId(user) {
        let lastestUser = this.users[this.users.length - 1];
        console.log(lastestUser);
        if (lastestUser != null) {
            user.id = lastestUser.id + 1;
        }
    }
    addUser(user) {
        for (const u of this.users) {
            if (u.email === user.email) {
                return false;
            }
        }
        this.autoSetUserId(user);
        this.users.push(user);
        this.saveData();
        return true;
    }
    findUser(id) {
        for (const user of this.users) {
            if (user.id === id)
                return user;
        }
        return null
    }
    findUserByUsername(username) {
        for (const user of this.users) {
            if (user.email === username)
                return user;
        }
        return null
    }
    deleteUser(id) {
        let user = this.findUser(id);
        if (user == null) {
            return false;
        }
        console.log(this.users);
        this.users = this.users.filter(function(item) {
            return item.id !== user.id;
        })
        console.log(this.users)
        this.saveData();
        return true;
    }
}
let fakeDataBase = initDataBase()

function initDataBase() {
    let fakeDataBase = new DataBaseManager();
    let status1 = new Status("1", "Hoạt động");
    let status2 = new Status("2", "Cấm");
    let status3 = new Status("3", "Chưa kích hoạt");
    let status4 = new Status("4", "Ẩn");
    let status5 = new Status("5", "Sắp hết hàng");
    let status6 = new Status("6", "Còn hàng");
    let status7 = new Status("7", "Đang giao hàng");
    let status8 = new Status("8", "Hoàn thành");
    let status9 = new Status("9", "Đã hủy");
    fakeDataBase.addStatus(status1);
    fakeDataBase.addStatus(status2);
    fakeDataBase.addStatus(status3);
    fakeDataBase.addStatus(status4);
    fakeDataBase.addStatus(status5);
    fakeDataBase.addStatus(status6);
    fakeDataBase.addStatus(status7);
    fakeDataBase.addStatus(status8);
    fakeDataBase.addStatus(status9);
    fakeDataBase.addUser(new User("admin@gmail.com", "admin", "admin", "0925821477"));
    fakeDataBase.addUser(new User("minh@gmail.com", "123", "Thanh Minh", "0925821477"));
    fakeDataBase.addUser(new User("huynhminh@gmail.com", "123", "Thanh Minh", "0925821477"));
    fakeDataBase.addUser(new User("chucngan@gmail.com", "123", "Chuc Ngan", "0925545457"));
    fakeDataBase.addCategory(new Category("C1", "", "Gạo các loại ", 1));
    fakeDataBase.addCategory(new Category("GD", "C1", "Gạo dẻo ", 1));
    fakeDataBase.addCategory(new Category("C2", "", "Hạt", 1));
    fakeDataBase.addProduct(new Product("GAO2", "GẠO LÀI MIÊN CAMPUCHIA 2", 100, "GD", "", "6"));
    fakeDataBase.addProduct(new Product("GAO1", "GẠO LÀI MIÊN CAMPUCHIA 1", 100, "GD", "", "6"));
    fakeDataBase.addProduct(new Product("GAO3", "GẠO TỨ QUÝ", 200, "GD", "", "6"));
    fakeDataBase.addOrder(new Order("o1", "8", "2", 300000, "", "COD", 20000, "Dai hoc Nong Lam TPHCM"));
    fakeDataBase.addOrder(new Order("o2", "7", "2", 250000, "", "COD", 20000, "Dai hoc Nong Lam TPHCM"));
    fakeDataBase.addOrder(new Order("o3", "9", "3", 450000, "", "COD", 20000, "Linh Trung, Thuc Duc, TP HCM"));
    fakeDataBase.addOrder(new Order("o4", "8", "3", 250000, "", "COD", 20000, "Phu Thai,  Tan Binh ,TP Ho Chi Minh"));
    fakeDataBase.addImage(new Image("i1", "GAO1", "gao1", "Images/product-images/gaoLaoMien1.png"));
    fakeDataBase.addImage(new Image("i2", "GAO1", "gao2", "Images/product-images/gaoLaoMien2.png"));
    fakeDataBase.addImage(new Image("i3", "GAO1", "gao3", "Images/product-images/gaoLaoMien3.png"));
    fakeDataBase.addType(new Type("t1", "Bao 100 ký", "C1"));
    fakeDataBase.addType(new Type("t2", "Bao 50 ký", "C1"));
    fakeDataBase.addType(new Type("t3", "Bao 10 ký", "C1"));
    fakeDataBase.addPrice(new Price("p1", "GAO1", 2000000, 2300000, "t1"));
    fakeDataBase.addPrice(new Price("p2", "GAO1", 1200000, 1500000, "t2"));
    return fakeDataBase;
}