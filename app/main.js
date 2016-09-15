// require('./dash-app.tag')
// require('./../units/dash-menu.tag')
// require('./dash-page.tag')
// require('./../pages/dash-about-page.tag')
// require('./../pages/dash-home-page.tag')
// require('./../pages/dash-settings-page.tag')
// require('./../units/dash-sidebar.tag')
// require('riotgear')
//
//
// riot.mount('dash-app', {
//   title: 'Random number generator!'
// })
//
// // riot.route(function(collection, id, action) {
// //   console.log("collection", collection)
// //   console.log("id", id)
// //   console.log("action", action)
// // })
// riot.route.start(true)


// riot.route((collection, id, action) => {
//   console.log("Route NOW =>", collection)
//   switch (collection) {
//     case 'about':
//       this.typePage = 'about'
//       this.update()
//       break;
//     case 'settings':
//       this.typePage = 'settings'
//       this.update()
//       break;
//     default:
//       this.typePage = 'home'
//       this.update()
//   }
// })



import riot from 'riot';
//import tag from './units/dash-menu.tag';

require.ensure(['./main/dash-app.tag'], (require) => {
  require('./main/dash-app.tag');
});

//function to load routes from primary chunk
function loadPrimaryChunk() {
  return new Promise((resolve, reject) => {
    //this line ensures cart and co tags are bundled into one file
    require.ensure(['./units/dash-menu.tag', './pages/dash-home-page.tag'], (require) => {
      // TODO: Menu not load
      require('./units/dash-menu.tag');
      require('./pages/dash-home-page.tag');
      resolve();
    });
  });
}

//function to load routes from secondary chunk
function loadSecondChunk(module) {
  return new Promise((resolve, reject) => {
    //this line ensures cart and co tags are bundled into one file
    require.ensure(['./pages/dash-about-page.tag', './pages/dash-settings-page.tag'], (require) => {
      switch (module) {
        case 'about':
          //till we do this the tag will not be executed
          require('./pages/dash-about-page.tag');
          break;
        case 'settings':
          require('./pages/dash-settings-page.tag');
          break;
      }
      resolve();
    });
  });
}

//router configuration
var $app = document.querySelector('.app-root');

riot.route('/', () => {
  loadPrimaryChunk().then(() => {
    $app.innerHTML = $app.innerHTML.concat("<dash-home-page></dash-home-page>");
    riot.mount('dash-home-page');
  });
})

riot.route('/about', (keyword) => {
  loadSecondChunk('about').then(() => {
    $app.innerHTML = "<dash-about-page></dash-about-page>";
    riot.mount('dash-about-page');
  });
})

riot.route('/settings/*/*', (category, name) => {
  loadSecondChunk('settings').then(() => {
    $app.innerHTML = "<dash-settings-page cat='" + category + "' name='" + name + "'></dash-settings-page>";
    riot.mount('dash-settings-page');
  });
})
riot.route.start(true);
riot.mount('dash-app');
