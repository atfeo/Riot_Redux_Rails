<todo-app>
  <loading-indicator　loading={this.state.isLoading}></loading-indicator>
  <task-list tasks={this.state.tasks}></task-list>

  <script>
    const actions = require('../actions.js')
    const store = this.opts.store

    this.on('mount', ()=> {
      store.dispatch(actions.loadTasks())
    })

    store.subscribe(() => {
      this.state = store.getState()
      this.update()
    })
  </script>
</todo-app>
