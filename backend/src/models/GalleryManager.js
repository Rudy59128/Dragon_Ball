const AbstractManager = require("./AbstractManager");

class GalleryManager extends AbstractManager {
  constructor() {
    super({ table: "gallery" });
  }

  findAllGallery() {
    return this.database.query(`SELECT * FROM ${this.table} `);
  }
}

module.exports = GalleryManager;
