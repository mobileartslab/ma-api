const pathToRegexp = require('path-to-regexp')

const config = { PUBLIC_URLs: [{ url: pathToRegexp('/api/public/*'), methods: ['GET', 'POST', 'PUT'] }] }

module.exports = config
