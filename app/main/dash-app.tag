<dash-app>

  <dash-menu name="menu" title={ title } menus={ menus }></dash-menu>
  <dash-page name="page" type={ typePage }></dash-page>

  <script>
    this.menus = [{
      label: "Home",
      link: "#/home",
      icon: "fa fa-home"
    }, {
      label: "Settings",
      link: "#/settings",
      icon: "fa fa-settings"
    }, {
      label: "About",
      link: "#/about",
      icon: "fa fa-gear"
    }]

    this.title = 'dash-riot'

    riot.route((collection, id, action) => {
      console.log("Route NOW =>", collection)
      switch (collection) {
        case 'about':
          this.typePage = 'about'
          this.update()
          break;
        case 'settings':
          this.typePage = 'settings'
          this.update()
          break;
        default:
          this.typePage = 'home'
          this.update()
      }
    })


  </script>
</dash-app>
