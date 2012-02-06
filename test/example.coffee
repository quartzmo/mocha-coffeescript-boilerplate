example = require('../')

describe 'example', ->
  describe '#truth()', ->
    it 'should return the Boolean value true', ->
      example.truth().should.be.true