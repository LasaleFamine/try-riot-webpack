<dash-home-page>
  <div class="o-grid o-panel o-panel--nav-top">
      <dash-sidebar></dash-sidebar>
      <main class="o-grid__cell o-grid__cell--width-85@large o-panel-container">
          <div class="o-grid o-grid--wrap o-panel">
              <div class="o-grid__cell o-grid__cell--width-100">
                  <h1 class="c-heading c-heading--medium">
                      Total number of items per group
                  </h1>
              </div>
              <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-60@large">
                <rg-chart chart={ chartLine }></rg-chart>
              </div>
              <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-40@large">
                  <rg-chart chart={ chart }></rg-chart>
                  <h2 class="c-heading c-heading--medium c-highlight">
                      <i class="fa fa-trophy"></i>
                      4,239
                      <span class="c-heading__sub">Achievement points</span>
                  </h2>
              </div>
              <div class="o-grid__cell o-grid__cell--width-100 t-secondary">
                  <div class="o-grid o-grid--wrap">
                      <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-33@large">
                          <h3 class="c-heading c-heading--small">Next Goals</h3>
                          <rg-tags tags={ tagsToChoose }></rg-tags>
                      </div>
                      <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-66@large">
                          <h3 class="c-heading c-heading--small">Notifications</h3>
                            <rg-alerts alerts={ alerts }></rg-alerts>
                      </div>
                  </div>
              </div>
          </div>
      </main>
  </div>
  <rg-toasts toasts={ toasts }></rg-toasts>
  <script>
      // curious about all events ?
      this.on('update', function () {
          console.info("Dash HOME UPDATE")
          // right after the tag is mounted on the page
          console.log("Dash HOME page opts ===>>>", opts)
      })

      this.chart = {
        type: 'doughnut', // line|bar|radar|polar|pie|doughnut
        options: {}, // Look at Chart.js documentation on how to populate data and options
        data: [{
          value: 300,
          color: "#F7464A",
          highlight: "#FF5A5E",
          label: "Red"
        }, {
          value: 50,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Green"
        }, {
          value: 100,
          color: "#FDB45C",
          highlight: "#FFC870",
          label: "Yellow"
        }]
      }

      this.chartLine = {
  			type: 'line',
  			data: {
  				labels: ["January", "February", "March", "April", "May", "June", "July"],
  				datasets: [{
  					label: "My First dataset",
  					fillColor: "rgba(220,220,220,0.2)",
  					strokeColor: "rgba(220,220,220,1)",
  					pointColor: "rgba(220,220,220,1)",
  					pointStrokeColor: "#fff",
  					pointHighlightFill: "#fff",
  					pointHighlightStroke: "rgba(220,220,220,1)",
  					data: [65, 59, 80, 81, 56, 55, 40]
  				}, {
  					label: "My Second dataset",
  					fillColor: "rgba(151,187,205,0.2)",
  					strokeColor: "rgba(151,187,205,1)",
  					pointColor: "rgba(151,187,205,1)",
  					pointStrokeColor: "#fff",
  					pointHighlightFill: "#fff",
  					pointHighlightStroke: "rgba(151,187,205,1)",
  					data: [28, 48, 40, 19, 86, 27, 90]
  				}]
  			}
		  }

      this.alerts = [{
        type: 'primary',
        text: 'Look! Something you should know about.'
      }, {
        type: 'secondary',
        text: 'Warning! You can\'t remove this alert.',
        dismissable: false
      }, {
        type: 'success',
        text: 'Success! Well done. This alert will disappear in 10 seconds',
        timeout: 10000
      }, {
        type: 'error',
        text: 'Error! Something bad happened. ',
        dismissable: true
      }]

      this.tagsToChoose = {
        placeholder: 'Choose a country',
        filter: 'text', // <-- this enables filtering on the 'text' property
        options: [{
          text: 'England'
        }, {
          text: 'Scotland'
        }, {
          text: 'Ireland'
        }, {
          text: 'Wales'
        }],
        tags: [{
          text: 'United States'
        }]
      }

      this.toasts = {
        position: 'bottomleft',
        toasts: [{
          type: 'primary',
          text: 'Made you look!',
          sticky: true // Turn off timeout
        }, {
          type: 'secondary',
          text: 'Careful now...'
        }, {
          type: 'success',
          text: 'You did it!'
        }, {
          type: 'error',
          text: 'Oops!',
          timeout: 4000 // Default to 6000 if not set
        }]
      }
  </script>
</dash-home-page>
