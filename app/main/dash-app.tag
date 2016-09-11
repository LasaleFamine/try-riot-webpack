<dash-app>

  <dash-menu title="{ titleDash }" links={ menus }></dash-menu>

  <script>
    require('./../units/dash-menu.tag')
    let dashMenu;

    this.menus = [{
      label: "User",
      link: "#/user",
      icon: "fa fa-user"
    }]

    this.titleDash = 'New title'

    this.on('mount', function () {
      dashMenu = riot.mount("dash-menu")[0]
    })
  </script>
</dash-app>
