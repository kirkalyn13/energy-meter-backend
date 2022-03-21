"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const mysql_1 = __importDefault(require("mysql"));
const cors_1 = __importDefault(require("cors"));
const app = (0, express_1.default)();
const PORT = 3001;
app.use((0, cors_1.default)());
app.use(express_1.default.json());
const db = mysql_1.default.createConnection({
    user: 'testuser',
    password: 'test123',
    host: 'localhost',
    database: 'energyMeterdb',
    timezone: 'Z'
});
app.get('/metrics', (req, res) => {
    console.log("call");
    const query = 'SELECT * FROM logs ORDER BY timestamp DESC LIMIT 12';
    db.query(query, (err, result) => {
        if (err) {
            console.log(err);
        }
        else {
            res.send(result);
            console.log(result);
        }
    });
});
app.listen(PORT, () => {
    console.log("Energy Meter Server is running...");
});
