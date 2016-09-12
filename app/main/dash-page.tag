<dash-page>
  <dash-about-page name="about" if={opts.type === 'about'}></dash-about-page>
  <dash-home-page name="home" if={opts.type === 'home'}></dash-home-page>

  <script>
    this.on('update', function (eventName) {
        console.info("Dash page UPDATE")
        console.log("Dash page opts.type ======> ", opts.type)
    })
  </script>
</dash-page>
