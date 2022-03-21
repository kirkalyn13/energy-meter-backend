import express, {Application, Request, Response} from 'express'
import mysql, { Connection} from 'mysql'
import cors from 'cors'

const app: Application = express()
const PORT: number = 3001

app.use(cors())
app.use(express.json())

const db: Connection = mysql.createConnection({
    user: 'testuser',
    password: 'test123',
    host: 'localhost',  //Change to https version on deployment.
    database: 'energyMeterdb',
    timezone: 'Z'
})


app.get('/metrics', (req: Request, res: Response) =>{
    console.log("call")
    const query: string = 'SELECT * FROM logs ORDER BY timestamp DESC LIMIT 12'
    db.query(query,(err,result) => {
        if(err){
            console.log(err)
        }else{
            res.send(result)
            console.log(result)
        }
    })
})

app.listen(PORT, () => {
    console.log("Energy Meter Server is running...")
})