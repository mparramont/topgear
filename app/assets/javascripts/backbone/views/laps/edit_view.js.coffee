Topgear.Views.Laps ||= {}

class Topgear.Views.Laps.EditView extends Backbone.View
  template : JST["backbone/templates/laps/edit"]

  events :
    "submit #edit-lap" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (lap) =>
        @model = lap
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
