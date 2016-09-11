require('./dash-app.tag')
require('riotgear')


riot.mount('dash-app', {
  title: 'Random number generator!'
})

riot.route(function(collection, id, action) {
  console.log("collection", collection)
  console.log("id", id)
  console.log("action", action)
})
riot.route.start(true)
