const interpolate = (template, args, updateList, body) => {
  return template(args, updateList, body)
}

const getStatement = (req, args, updateList) => {
  const cleanArgs = args && args.map(arg => req.conn.escape(arg)) // escape all arguments to prevent injection
  const { method, body } = req
  const { path } = req.route
  const statement = interpolate(config[path][method], cleanArgs, updateList, body)
  console.log('STATEMENT', statement)
  return statement
}

const selectCompany = args => {
  return `
    SELECT 
    name, nickname, aboutUs, category, EIN, website, founded, size, corpGroup,
    addressOne, addressTwo, city, state, zipCode, hqAddressOne, hqAddressTwo, 
    hqCity, hqState, hqZipCode, companyID, memberSince,
    facebookUrl, linkedinUrl, twitterUrl, instagramUrl
    FROM company
    WHERE companyID = ${args[0]}
  `
}

const updateCompany = (args, updateList) => {
  return `
    UPDATE company
    SET 
      updatedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      ${updateList}
    WHERE companyID = ${args[0]}
  `
}

const selectUser = args => {
  return `
    SELECT 
    aboutMe, currentCity, currentState, userID, username, firstName, lastName, citizenType,
    memberSince,addressOne, addressTwo, phone, city, state, zipCode,
    facebookUrl, linkedinUrl, twitterUrl, instagramUrl
    FROM user
    WHERE userID = ${args[0]}
  `
}

const updateUser = (args, updateList) => {
  return `
    UPDATE user
    SET 
      updatedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      ${updateList}
    WHERE userID = ${args[0]}
  `
}

const selectForm = args => {
  return `SELECT id, template FROM form_instance WHERE id = ${args[0]}`
}

const selectScreen = args => {
  return `SELECT * FROM screen_instance WHERE id = ${args[0]}`
}

const selectApp = args => {
  return `SELECT * FROM app_instance WHERE id = ${args[0]}`
}

const selectApps = args => {
  console.log('in selectApps', args)
  return `SELECT id, name FROM app_instance`
}

const selectAppScreens = args => {
  return `SELECT id, name FROM screen_instance WHERE app_id = ${args[0]}`
}

const selectScreens = args => {
  return `SELECT id, name FROM screen_instance WHERE app_id = ${args[0]}`
}

const selectForms = args => {
  return `SELECT id, name FROM form_instance WHERE app_id = ${args[0]}`
}

const deleteMember = args => {
  return `
    UPDATE company_user
    SET 
      deletedAt = ROUND(UNIX_TIMESTAMP(UTC_TIME(4)) * 1000),
      deleted = 1
    WHERE memberID = ${args[0]}
  `
}

const config = {
  ['/public/getForm']: { GET: selectForm },
  ['/public/getScreen']: { GET: selectScreen },
  ['/public/getApp']: { GET: selectApp },
  ['/public/getApps']: { GET: selectApps },
  ['/public/getAppScreens']: { GET: selectAppScreens },
  ['/public/getScreens']: { GET: selectScreens },
  ['/public/getForms']: { GET: selectForms },
}

module.exports = { getStatement }
