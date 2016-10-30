<title-form>
  <form onsubmit={changeTitle}>
    <input type="text" name="newTitle">
    <input type="submit" value="Change Title">
  </form>

  <script>
    const actions = require('../actions.js')
    changeTitle() {
      if (!this.newTitle.value) {
        return;
      }
      this.opts.store.dispatch(actions.changeTitle(this.newTitle.value))
      this.newTitle.value = ''
    }
  </script>
</title-form>
