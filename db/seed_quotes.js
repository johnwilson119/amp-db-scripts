const quotes = require('../data/quotes.json')
const MongoClient = require('mongodb').MongoClient
const url = 'mongodb://localhost:27017'

const seed = async () => {
  try {
    const client = await MongoClient.connect(url, { useNewUrlParser: true })
    const db = client.db('proofdex')
    const documents = Object.values(quotes).map((token) => ({
      symbol: token.symbol,
      contractAddress: token.address,
      decimals: 18,
      quote: true,
      createdAt: Date(),
      updatedAt: Date()
    }))

    const response = await db.collection('tokens').insertMany(documents)
    client.close()

    console.log(response)
  } catch (e) {
    console.log(e.message)
  }
}

seed()