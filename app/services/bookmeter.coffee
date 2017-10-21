import to from 'await-to-js'
import fetch from 'node-fetch'

fetchRecursively = (userId) =>
  return new Promise (resolve, reject) =>
    reject new Error('user_id is required') unless userId

    books = []
    idx = 1
    while true
      [ err, res ] = await to fetch("https://bookmeter.com/users/#{userId}/books/read.json?page=#{idx}")
      reject err if err
      [ err, json ] = await to res.json()
      reject err if err

      break if json.resources.length == 0
      books.push json.resources
      idx++

    resolve books

bookmeter = {
  fetchRecursively
}

export default bookmeter
