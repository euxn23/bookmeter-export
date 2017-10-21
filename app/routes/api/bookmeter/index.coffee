import express from 'express'

import bookmeter from '../../../services/bookmeter'


router = express.Router()
router.get '/', bookmeter.get

export default router
