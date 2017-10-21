import express from 'express'
import routes from './routes'

app = express()
app.use routes

export default app
