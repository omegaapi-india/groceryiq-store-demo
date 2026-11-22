-- GroceryIQ initial D1 schema and simulated seed data.
-- Shared database: omegaapi-demos. This app's namespace: GroceryIQ.
 CREATE TABLE IF NOT EXISTS config (app TEXT NOT NULL, key TEXT NOT NULL, value TEXT NOT NULL, PRIMARY KEY (app, key));
CREATE TABLE IF NOT EXISTS records (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, position INTEGER NOT NULL, cells TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS activity (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, text TEXT NOT NULL, created_at TEXT NOT NULL DEFAULT (datetime('now')));
CREATE INDEX IF NOT EXISTS idx_records_app ON records(app, position);
CREATE INDEX IF NOT EXISTS idx_activity_app ON activity(app, id);

DELETE FROM activity WHERE app = 'GroceryIQ';
DELETE FROM records WHERE app = 'GroceryIQ';
DELETE FROM config WHERE app = 'GroceryIQ';

INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'heroStat', '"9 sample items · 4 aisles"');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'heroNote', '"Demo snapshot: fresh section looks well stocked."');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'bars', '[["Fresh","w90"],["Pantry","w75"],["Home","w60"]]');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'strip', '[["9 sample items","Made-up catalog"],["No checkout","No card or payment code"],["Database-backed","Actions stored in the demo database"],["Free to host","Cloudflare free tier"]]');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'safetyNote', '"Prices and products are samples. There is no checkout, payment, or customer record."');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'tableHead', '["Item","Aisle","Stock","Price band","Status"]');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'rows', '[["Sample apples","Fresh","High","₹ — demo","Available"],["Sample milk","Fresh","Medium","₹ — demo","Available"],["Sample rice","Pantry","High","₹ — demo","Available"],["Sample oil","Pantry","Low","₹ — demo","Reorder"],["Sample soap","Home","Medium","₹ — demo","Available"],["Sample notebooks","Home","High","₹ — demo","Available"]]');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'workflow', '[["Browse aisles","Pick a row from the sample catalog."],["Add to basket","Build a basket that never leaves your browser."],["Review in the demo","See a demo summary with no payment step."]]');
INSERT INTO config (app, key, value) VALUES ('GroceryIQ', 'actions', '[["Add to basket"," added a sample item to the demo basket."],["Mark out of stock"," marked a sample line out of stock in the demo."],["Refresh stock"," refreshed the demo stock view."],["Clear basket"," cleared the demo basket."]]');

INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 1, '["Sample apples","Fresh","High","₹ — demo","Available"]');
INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 2, '["Sample milk","Fresh","Medium","₹ — demo","Available"]');
INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 3, '["Sample rice","Pantry","High","₹ — demo","Available"]');
INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 4, '["Sample oil","Pantry","Low","₹ — demo","Reorder"]');
INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 5, '["Sample soap","Home","Medium","₹ — demo","Available"]');
INSERT INTO records (app, position, cells) VALUES ('GroceryIQ', 6, '["Sample notebooks","Home","High","₹ — demo","Available"]');
