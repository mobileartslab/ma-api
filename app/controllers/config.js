const fs = require('fs');
const { exec } = require('child_process');
const { isObject } = require('@util/constants')
const testForm = require('@data/fields.json')
const { runStatement } = require('@persistence/sql/runStatement')
const { getStatement } = require('@persistence/sql/config')

// HELPERS
const { logAction } = require('./helper')

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
    res.json({ error: null, result })
  }
}

const config = {
  ['/public/testApi']: {
    GET: (req, res) => {
      res.json({ message: 'testing' })
    },
  },
  ['/public/getFormFile']: {
    GET: (req, res) => {
      res.json({ form: testForm })
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
