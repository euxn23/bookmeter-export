import express from 'express'
import path from 'path'

import api from './api'


router = express.Router()
router.use express.static path.join __dirname, '../../public'
router.use '/api', api


export default router