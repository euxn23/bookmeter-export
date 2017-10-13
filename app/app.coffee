import express from 'express'
import { index } from './routes'

app = express()
app.use '/', index

export default app
