const { Base } = require('./base.po')

class CustomPage2 {
    get header() {
        return new Base();
    }

    get sidebar() {
        return $('#sidebarMenu')
    }

    async clickMenuItem(item) {
        const menuItem = await this.sidebar.$(`a*=${item}`);
        await menuItem.waitForClickable({ timeout: 10000 });
        await menuItem.click();
    }
}

module.exports = { CustomPage2: new CustomPage2() };
