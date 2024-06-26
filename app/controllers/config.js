const fs = require('fs');
const bcrypt = require("bcrypt")
const { exec } = require('child_process');
const { isObject } = require('@util/constants')
const { runStatement } = require('@persistence/sql/runStatement')
const { getStatement } = require('@persistence/sql/config')

// HELPERS
const { logAction } = require('./helper')

async function hashPassword(plaintextPassword) {
  const hash = await bcrypt.hash(plaintextPassword, salt)
  // Store hash in the database
}

// compare password
async function comparePassword(plaintextPassword, hash) {
  const result = await bcrypt.compare(plaintextPassword, hash)
  return result
}

const getProcessor = req => {
  const { method } = req
  const { path } = req.route
  return config[path][method]
}

const sendParsedResponse = (res, result) => {
  const template = JSON.parse(result[0].template)
  if (result) {
    // res.json({ error: null, result })
    res.json({ error: null, result: { ...result, template } })
  }
}

const sendResponse = (res, result) => {
  if (result) {
    console.log('SENDING RESPONSE:', result)
    res.json({ error: null, result })
  }
}

const config = {
  ['/public/testApi']: {
    GET: (req, res) => {
      res.json({ message: 'testing' })
    },
  },
  ['/public/getForm']: {
    GET: async (req, res) => {
      // const id = /public\/getForm\/(.*?)\//.exec(req.url)[1]
      // const { id } = req.params
      const id = '1'
      sendParsedResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/getScreen']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getApp']: {
    GET: async (req, res) => {
      const { id } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id]), isObject))
    },
  },
  ['/public/getApps']: {
    GET: async (req, res) => {
      console.log('IN getApps()')
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getAppScreens']: {
    GET: async (req, res) => {
      const { appId } = req.query
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [appId])))
    },
  },
  ['/public/getInventory']: {
    GET: async (req, res) => {
      console.log('IN getInventory()')
      sendResponse(res, await runStatement(res, req.conn, getStatement(req)))
    },
  },
  ['/public/getScreens']: {
    GET: async (req, res) => {
      const id = '1'
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/getForms']: {
    GET: async (req, res) => {
      const id = '1'
      sendResponse(res, await runStatement(res, req.conn, getStatement(req, [id])))
    },
  },
  ['/public/login']: {
    POST: async (req, res) => {
      console.log('READING POST - req: ', req.body)
      const {username, password} = req.body;

      const result = await runStatement(res, req.conn, getStatement(req, [username]))

      let user;

      if (result.length > 0) {
        user = result[0]
        const encryptedPassword = await bcrypt.hash(password, user.salt)
        const x = await bcrypt.hash('password', '$2b$10$tgkavV1jNH1Qhv6k.ebHoO')
        console.log('generated: ' + x)
        console.log(`comparing ${encryptedPassword} to ${user.password}`)
        if (encryptedPassword == user.password) {
          user.authStatus = STATUS_AUTHENTICATED
        }
        else {
          user.authStatus = STATUS_INVALID_PASSWORD
        }
      }
      else {
        user = { authStatus: STATUS_NOT_FOUND}
      }

      sendResponse(res, user)
    },
  },
  ['/public/publish']: {
    PUT: async (req, res) => {
      const body = req.body.data;
      console.log('READING PUT')
      await fs.writeFile("./tmp/dump.sql", body, function(error, body)
      {
        if (error) {
          console.log('ERROR writing file', error)
          throw error
        }
      })
      exec(`mysql turing_studio_instance < ./tmp/dump.sql`, (err, stdout, stderr) => {
        console.log('stdout', stdout)
        if (err) { console.error(`exec error: ${err}`); return; }
      });
    },
  },
}

module.exports = { getProcessor }
