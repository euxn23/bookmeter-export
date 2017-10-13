import express from 'express'

router = express.Router()
router.get '/',  (req, res) =>
  res.send 'GET /'

export { router as index }

