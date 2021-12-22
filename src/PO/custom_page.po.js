// custom_page.po.js
const { Base } = require('./base.po')

class ListOfUsers extends Base {
    get listOfUsers() {
        return $('#users-table')
    }
}

module.exports = { ListOfUsers: new ListOfUsers() };
