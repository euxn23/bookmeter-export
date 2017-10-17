import express from 'express'
import router from './routes'
import path from 'path'

app = express()
app.use express.static path.join __dirname, 'public'
app.use '/api', router.api

export default app
