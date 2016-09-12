<dash-about-page>
  <h2>It works!</h2>

  <script>
    // curious about all events ?
    this.on('update', function () {
        console.info("Dash ABOUT UPDATE")
        // right after the tag is mounted on the page
        console.log("Dash ABOUT page opts ===>>>", opts)
    })
  </script>
</dash-about-page>
