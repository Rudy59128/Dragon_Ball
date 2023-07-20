const AbstractManager = require("./AbstractManager");

class TimelineManager extends AbstractManager {
  constructor() {
    super({ table: "timeline" });
  }

  findAllTimeline() {
    return this.database.query(`SELECT * FROM ${this.table}`);
  }

  findTimeline(id) {
    return this.database.query(`SELECT * FROM ${this.table}`, id);
  }

  insert(item) {
    return this.database.query(`insert into ${this.table} (title) values (?)`, [
      item.title,
    ]);
  }

  update(item) {
    return this.database.query(
      `update ${this.table} set title = ? where id = ?`,
      [item.title, item.id]
    );
  }
}

module.exports = TimelineManager;
