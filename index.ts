import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import { json } from 'express';
import router from './routes.js'
import "express-async-errors";
import errorhandler from './middlewares/errorHandler.js'



dotenv.config()

const app = express()
app.use(json());
app.use(cors());
app.use(router);
app.use(errorhandler)


app.listen(parseInt(process.env.PORT), () => {
    console.log(`Server on port ${process.env.PORT}`)
  });