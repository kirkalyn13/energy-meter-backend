const express = require('express')
const mysql = require('mysql')
const cors = require('cors')

const app = express()

app.use(cors())
app.use(express.json())

const db = mysql.createConnection({
    user: 'testuser',
    password: 'test123',
    host: 'localhost',  //Change to https version on deployment.
    database: 'energyMeterdb',
    timezone: 'Z'
})

/*app.use(function (req, res, next) {
    //Enabling CORS 
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET,HEAD,POST,PUT");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, contentType,Content-Type, Accept");
    next();
});*/

app.get('/metrics', (req, res) =>{
    db.query('SELECT * FROM logs ORDER BY timestamp DESC LIMIT 12',(err,result) => {
        if(err){
            console.log(err)
        }else{
            res.send(result)
            console.log(result)
        }
    })
})

app.listen(3001, () => {
    console.log("Energy Meter Server is running...")
})