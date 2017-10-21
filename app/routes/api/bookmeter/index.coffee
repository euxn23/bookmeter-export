import to from 'await-to-js'
import express from 'express'

import bookmeter from '../../../services/bookmeter'


router = express.Router()
router.get '/', (req, res, next) =>
  [ err, result ] = await to bookmeter.fetchRecursively req.query.user_id
  next err if err
  res.json result
router.use (err, req, res, next) =>
  res.status(500).send({error: err.message})

export default router
