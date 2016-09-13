<dash-settings-page>

  <h1 class="c-header">Some toggle settings</h1>
  <div class="toggles">
    <!-- TODO: Make repeat here -->
    <div class="toggle-wrapper">
      <rg-toggle class="toggle" name="firstToggle" toggle={ firstToggle }></rg-toggle>
    </div>
    <div class="toggle-wrapper">
      <rg-toggle class="toggle" name="secondToggle" toggle={ secondToggle }></rg-toggle>
    </div>
  </div>

  <rg-toasts toasts={ toasts }></rg-toasts>

  <script>

    this.firstToggle = {
      type: 'primary',
    }
    this.secondToggle = {
      type: 'error',
    }

    this.toasts = {
      position: 'topright',
      toasts: []
    }

    this.tags.firstToggle.on('toggle', (checked) => {
      if(checked) {
        this.toasts.toasts.push({
          type: 'primary',
          text: 'I dunno!'
          //sticky: true // Turn off timeout
        })
        this.update()
      }
    })
    this.tags.secondToggle.on('toggle', (checked) => {
      if(checked) {
        this.toasts.toasts.push({
          type: 'error',
          text: 'Error! Wroooong!',
          sticky: true // Turn off timeout
        })
        this.update()
      }
    })

  </script>

  <style>
    .toggle-wrapper {
      display: inline-block;;
    }
  </style>

</dash-settings-page>
