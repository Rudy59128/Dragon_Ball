const AbstractManager = require("./AbstractManager");

class StoryManager extends AbstractManager {
  constructor() {
    super({ table: "story" });
  }

  findStories() {
    return this.database.query(`SELECT * FROM ${this.table}`);
  }

  findStory(id) {
    return this.database.query(`SELECT * FROM ${this.table}`, id);
  }
}

module.exports = StoryManager;
