require('./dash-app.tag')
require('./../units/dash-menu.tag')
require('./dash-page.tag')
require('./../pages/dash-about-page.tag')
require('./../pages/dash-home-page.tag')
require('./../pages/dash-settings-page.tag')
require('./../units/dash-sidebar.tag')
require('riotgear')


riot.mount('dash-app', {
  title: 'Random number generator!'
})

// riot.route(function(collection, id, action) {
//   console.log("collection", collection)
//   console.log("id", id)
//   console.log("action", action)
// })
riot.route.start(true)
