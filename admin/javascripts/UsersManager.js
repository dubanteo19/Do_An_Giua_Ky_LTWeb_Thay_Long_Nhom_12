class User {
    constructor(id, fullName, phone, avatar, email, address, status) {
        this.id = id;
        this.fullName = fullName;
        this.phone = phone;
        this.avatar = avatar;
        this.email = email;
        this.address = address;
        this.status = status;
    }
    getId() {
        return this.id;
    }
}
class UsersManager {
    users = []
    constructor() {
        this.loadUsers();
    }
    loadUsers() {
        this.users = JSON.parse(localStorage.getItem("users"));
    }
    saveData() {
        localStorage.setItem("users", JSON.stringify(this.users));
    }
    addUser(user) {
        for (const u of this.users) {
            if (u.id === user.id) {
                return;
            }
        }
        this.users.push(user);
        this.saveData();
    }
    showAllUser() {
        for (const user of this.users) {
            console.log(user);
        }
    }
    findUser(id){
        for(const user of users){
            if(user.id===id)
                return user;
        }
    }

}

// console.log(user1);
// usersManager.showAllUser();