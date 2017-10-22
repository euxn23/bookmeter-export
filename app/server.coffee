import express from 'express'
import routes from './routes'

app = express()
app.use routes
app.use (req, res, next) =>
  res.status(404).send 'not found'

export default app
