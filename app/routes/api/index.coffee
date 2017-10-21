import express from 'express'

import bookmeter from './bookmeter'


router = express.Router()

router.use '/bookmeter', bookmeter

export default router

