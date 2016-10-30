<sample-output>
  <h1>{this.opts.store.getState().title}</h1>
  <form onsubmit={changeTitle}>
    <input type="text" name="newTitle">
    <input type="submit" value="Change Title">
  </form>

  <script>
    changeTitle() {
      if (!this.newTitle.value) {
        return;
      }
      this.opts.store.dispatch({ type: 'CHANGE_TITLE', data: this.newTitle.value })
      this.newTitle.value = ''
    }
  </script>
</sample-output>
