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
              <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-60@large">Test 1
              </div>
              <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-40@large">Test 2
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
                          <div class="c-card t-demo">
                              <div class="c-card__content">
                                  <p class="c-paragraph c-text--loud">Gain more items and add them to the total</p>
                                  <p class="c-paragraph">Lorem ipsum dolor sit amet, feugiat corpora ex eam. Inciderint eloquentiam sea et.</p>
                              </div>
                          </div>
                          <div class="c-card t-demo">
                              <div class="c-card__content">
                                  <p class="c-paragraph c-text--loud">Max out the number of items</p>
                                  <p class="c-paragraph">Lorem ipsum dolor sit amet, feugiat corpora ex eam. Inciderint eloquentiam sea et.</p>
                              </div>
                          </div>
                      </div>
                      <div class="o-grid__cell o-grid__cell--width-100 o-grid__cell--width-66@large">
                          <h3 class="c-heading c-heading--small">Notifications</h3>
                          <div class="c-alerts a-alerts">
                              <div class="c-alerts__alert c-alerts__alert--secondary">
                                  <button class="c-button c-button--close">×</button>
                                  Not all data available for
                                  <strong class="u-text--loud">4th June 2016</strong>
                              </div>
                              <div class="c-alerts__alert c-alerts__alert--success">
                                  <button class="c-button c-button--close">×</button>
                                  New user added - (dexter@another.com)
                              </div>
                              <div class="c-alerts__alert c-alerts__alert--primary">
                                  <button class="c-button c-button--close">×</button>
                                  Goal reached on 28th May 2016!
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </main>
  </div>
  <script>
      // curious about all events ?
      this.on('update', function () {
          console.info("Dash HOME UPDATE")
          // right after the tag is mounted on the page
          console.log("Dash HOME page opts ===>>>", opts)
      })
  </script>
</dash-home-page>
