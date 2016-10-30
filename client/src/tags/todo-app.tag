<todo-app>
  <h3>Todo List</h3>
  <task-form addtask={this.handleNewTask}
    handlekeyup={handleInputForm}
    objects={this.state.tasks}
    istext={this.state.isText}>
  </task-form>
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

    handleNewTask(task) {
      store.dispatch(actions.addTask(task))
    }

    handleInputForm(value) {
      store.dispatch(actions.textExists(value))
    }
  </script>
</todo-app>
