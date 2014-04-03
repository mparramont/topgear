Topgear.Views.Laps ||= {}

class Topgear.Views.Laps.IndexView extends Backbone.View
  template: JST["backbone/templates/laps/index"]

  initialize: () ->
    @options.laps.bind('reset', @addAll)

  addAll: () =>
    @options.laps.each(@addOne)

  addOne: (lap) =>
    view = new Topgear.Views.Laps.LapView({model : lap})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(laps: @options.laps.toJSON() ))
    @addAll()

    return this
