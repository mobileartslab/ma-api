const db = require('@util/db')
const { logger } = require('@util/logger')
const { DB_CONNECTION_ERROR } = require('@errors/errorMessages')

const getMySqlConnection = async (req, res, next) => {
  try {
    req.conn = await db.get(db.SQL_CONNECTION)
    next()
  } catch (error) {
    logger.error(`${DB_CONNECTION_ERROR} - ${error.stack}`)
    res.status(error.status || 500).json({ error: { code: error.code || DB_CONNECTION_ERROR }, result: null })
  }
}

module.exports = {
  getMySqlConnection,
}
