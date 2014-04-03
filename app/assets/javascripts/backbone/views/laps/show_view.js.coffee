Topgear.Views.Laps ||= {}

class Topgear.Views.Laps.ShowView extends Backbone.View
  template: JST["backbone/templates/laps/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
