import express from 'express'

import bookmeter from './bookmeter'


router = express.Router()

router.use '/bookmeter', bookmeter
router.use (req, res, next) =>
  res.status(404).send({error: 'not found'})

export default router

