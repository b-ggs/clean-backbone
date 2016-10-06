class App.Views.Tasks.Index extends App.View
  initialize: ->
    @collection.on 'sync', @render, @
    super

  remove: ->
    @collection.off 'sync', @render, @
    super

  render: ->
    @$el.empty()
    for model in @collection.models
      @$el.append(model.get('notes'))
