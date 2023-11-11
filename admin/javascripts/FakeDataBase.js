class User {
    constructor(email, password, fullName, phone) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.address = "";
        this.id = 0;
        this.status = "Hoạt động";
    }
}
class Product {
    constructor(id, catalogID, name) {
        this.id = id;
        this.catalog = catalogID;
        this.name = name;
    }
}
class ProductDetail {
    constructor(id, productID, blogID, statusID, unitInStock, discount) {
        this.id = id;
        this.productID = productID;
        this.blogID = blogID;
        this.statusID = statusID;
        this.unitInStock = unitInStock;
        this.discount = discount;
    }
}
class Status {
    constructor(id, description) {
        this.id = id;
        this.description = description;
    }
}
class Categories {
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
    catelogies;
    products;
    productDetails;
    constructor() {
        this.loadDataBase();
    }
    // Load and save data to DataBase
    saveData() {
        localStorage.setItem("statuses", JSON.stringify(this.statuses));
        localStorage.setItem("users", JSON.stringify(this.users));

    }
    loadDataBase() {
        let statuses = JSON.parse(localStorage.getItem("statuses"));
        let users = JSON.parse(localStorage.getItem("users"));
        if (statuses != null) {
            this.statuses = statuses;
        }
        if (users != null) {
            this.users = users;
        }
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
        let lastestUser = this.users[this.users.length -1];
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
    findUser(email) {
        for (const user of this.users) {
            if (user.email === email)
                return user;
        }
        return null

    }
}
let fakeDataBase = initDataBase()

function initDataBase() {
    let fakeDataBase = new DataBaseManager();
    fakeDataBase.addUser(new User("admin@gmail.com", "admin", "admin", "0925821477"));
    fakeDataBase.addUser(new User("minh@gmail.com", "123", "Thanh Minh", "0925821477"));
    fakeDataBase.addUser(new User("huynhminh@gmail.com", "123", "Thanh Minh", "0925821477"));
    // console.log(fakeDataBase.users[0]);
    return fakeDataBase;
}