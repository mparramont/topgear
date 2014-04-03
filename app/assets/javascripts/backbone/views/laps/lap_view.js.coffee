Topgear.Views.Laps ||= {}

class Topgear.Views.Laps.LapView extends Backbone.View
  template: JST["backbone/templates/laps/lap"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
