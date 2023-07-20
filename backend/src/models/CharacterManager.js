const AbstractManager = require("./AbstractManager");

class CharacterManager extends AbstractManager {
  constructor() {
    super({ table: "character" });
  }

  findAllCharacters() {
    return this.database.query(`SELECT * FROM ${this.table}`);
  }

  findCharacter(id) {
    return this.database.query(`SELECT * FROM ${this.table} WHERE id = ?`, [
      id,
    ]);
  }
}

module.exports = CharacterManager;
