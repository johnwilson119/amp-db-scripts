const tokens = require('../data/tokens.json')
const MongoClient = require('mongodb').MongoClient
const url = 'mongodb://localhost:27017'

const drop = async () => {
  try {
    const client = await MongoClient.connect(url, { useNewUrlParser: true })
    const db = client.db('proofdex')
    const response = await db.dropCollection('addresses')

    db.close()
    console.log(response)
  } catch (e) {
    console.log(e.message)
  }
}

drop()