module.exports.uuid = require('uuid/v4')

module.exports.someConstant = 'SOME CONSTANT'

module.exports =  STATUS_NOT_FOUND = 0
module.exports =  STATUS_AUTHENTICATED = 1
module.exports =  STATUS_INVALID_PASSWORD = -1
module.exports =  STATUS_INACTIVE = -2
module.exports =  STATUS_PASSWORD_ALREADY_CREATED = -3
module.exports =  STATUS_RECOVERY_CODE_EXPIRED = -4
module.exports =  STATUS_RECOVERY_CODE_ALREADY_USED = -5
module.exports =  STATUS_ACTIVATION_CODE_EXPIRED = -6
module.exports =  STATUS_ACTIVATION_CODE_ALREADY_USED = -7

module.exports.userAccessType = {
  ADMIN: 'admin',
  GENERAL: 'general',
}

module.exports.isObject = true
