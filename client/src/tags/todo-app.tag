<todo-app>
  <h3>Todo List</h3>
  <task-form addtask={this.handleNewTask}
    handlekeyup={handleInputForm}
    objects={this.state.tasks}
    istext={this.state.isText}>
  </task-form>
  <error-message message={this.state.errorMessage}
    iserror={this.state.isError}></error-message>
  <loading-indicator　loading={this.state.isLoading}></loading-indicator>
  <task-list tasks={this.state.tasks}
    handlecheck={handleTaskCompletionChange}>
  </task-list>

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

    handleTaskCompletionChange(id, isComplete) {
      store.dispatch(actions.toggleComplete(id, isComplete))
    }
  </script>
</todo-app>
