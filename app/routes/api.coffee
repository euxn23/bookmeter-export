import express from 'express'

api = express.Router()
api.get '/',  (req, res) =>
  res.send 'GET /api'

export default api

