Topgear.Views.Laps ||= {}

class Topgear.Views.Laps.NewView extends Backbone.View
  template: JST["backbone/templates/laps/new"]

  events:
    "submit #new-lap": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (lap) =>
        @model = lap
        window.location.hash = "/#{@model.id}"

      error: (lap, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
