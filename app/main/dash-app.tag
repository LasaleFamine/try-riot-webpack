<dash-app>

  <dash-menu name="menu" title={ title } menus={ menus }></dash-menu>

  <!--dash-page name="page" type={ typePage }></dash-page-->

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

  </script>
</dash-app>
