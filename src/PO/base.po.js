// base.po.js
class Base {
    get main() {
        return $('header');
    }

    get search() {
        return this.main.$('input');
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

module.exports = { Base };
