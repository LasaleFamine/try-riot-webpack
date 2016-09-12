<dash-menu>
    <nav class="c-nav c-nav--inline">
        <a href="#" class="c-nav__item c-text--loud">{opts.title}</a>
        <a each={menu in menus} href="{ menu.link }" class="c-nav__item c-nav__item--right">
            <i class="{ menu.icon }"></i>
            { menu.label }
        </a>
    </nav>
    <script>

        this.menus = opts.menus.reverse()

        this.on('before-mount', function () {
            // before the tag is mounted
        })

        this.on('mount', function () {})

        this.on('update', function () {
            // allows recalculation of context data before the update
        })

        this.on('updated', function () {
            // right after the tag template is updated
        })

        this.on('before-unmount', function () {
            // before the tag is removed
        })

        this.on('unmount', function () {
            // when the tag is removed from the page
        })

        // curious about all events ?
        // this.on('*', function (eventName) {
        //     console.info(eventName)
        //     // right after the tag is mounted on the page
        //     console.log(opts)
        // })
    </script>
</dash-menu>
