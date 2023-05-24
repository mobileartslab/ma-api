const Joi = require('joi')
const { logActionSchema } = require('@validation')

const getValidator = req => {
  const { method } = req
  const { path } = req.route
  return config[path][method]
}

const config = {
  ['/public/testApi']: { GET: undefined },
  ['/public/getForm']: { GET: undefined },
  ['/public/getScreen']: { GET: undefined },
  ['/public/getApp']: { GET: undefined },
  ['/public/getApps']: { GET: undefined },
  ['/public/getAppScreens']: { GET: undefined },
  ['/public/getScreens']: { GET: undefined },
  ['/public/getForms']: { GET: undefined },
  ['/public/getFormFile']: { GET: undefined },
  ['/public/publish']: { PUT: undefined },
}

module.exports = { getValidator }
