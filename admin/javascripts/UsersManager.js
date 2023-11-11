
class UsersManager {
    users = [];
    constructor() {
        this.loadUsers();
    }
    loadUsers() {
        if(JSON.parse(localStorage.getItem("users"))!=null){
            this.users = JSON.parse(localStorage.getItem("users"));
        }
    }
    saveData() {
        localStorage.setItem("users", JSON.stringify(this.users));
    }
    addUser(user) {
        for (const u of this.users) {
            if (u.email === user.email) {
                return false;
            }
        }
        this.users.push(user);
        this.saveData();
        return true;
    }
    showAllUser() {
        for (const user of this.users) {
            console.log(user);
        }
    }


}
let usersManager = new UsersManager();
