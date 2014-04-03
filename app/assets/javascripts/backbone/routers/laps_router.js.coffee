class Topgear.Routers.LapsRouter extends Backbone.Router
  initialize: (options) ->
    @laps = new Topgear.Collections.LapsCollection()
    @laps.reset options.laps

  routes:
    "new"      : "newLap"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newLap: ->
    @view = new Topgear.Views.Laps.NewView(collection: @laps)
    $("#laps").html(@view.render().el)

  index: ->
    @view = new Topgear.Views.Laps.IndexView(laps: @laps)
    $("#laps").html(@view.render().el)

  show: (id) ->
    lap = @laps.get(id)

    @view = new Topgear.Views.Laps.ShowView(model: lap)
    $("#laps").html(@view.render().el)

  edit: (id) ->
    lap = @laps.get(id)

    @view = new Topgear.Views.Laps.EditView(model: lap)
    $("#laps").html(@view.render().el)
