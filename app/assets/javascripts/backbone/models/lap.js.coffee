class Topgear.Models.Lap extends Backbone.Model
  paramRoot: 'lap'

  defaults:
    brand: null
    model: null
    time: null

class Topgear.Collections.LapsCollection extends Backbone.Collection
  model: Topgear.Models.Lap
  url: '/laps'
