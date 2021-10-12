cloneDeep = require 'lodash/cloneDeep'
map = require 'lodash/map'

(->
  triominoes = [
    [
      [ 1, 1 ]
      [ 1, 0 ]
    ]
    [
      [ 1, 1 ]
      [ 0, 1 ]
    ]
    [
      [ 1, 0 ]
      [ 1, 1 ]
    ]
    [
      [ 0, 1 ]
      [ 1, 1 ]
    ]
    [
      [ 0, 1 ]
      [ 1, 1 ]
    ]
    [
      [ 1, 1, 1 ]
    ]
    [
      [ 1 ]
      [ 1 ]
      [ 1 ]
    ]
  ]

  n = 9
  m = 12
  board = map([0..(n - 1)], -> (map([0..(m - 1)], -> 0)))
  positions = [[0,0]]
  total = 0

  getPositions = () ->
    return

  fits = (board, position, piece) ->
    [ x, y ] = position
    # if board[x][y]
    true

  fillable = (board, positions, total) ->
    for position in positions
      [ x, y ] = position
      for piece in [[1]]
        console.log piece
        # try in that position maximally packed into the upper left
        if true #it fits
          # holes = check for holes
          if true # holes
            return total
          else
            # get list of remaining upper left coordinates
            positions = getPositions(board, piece, position)
            # if # no more positions
              # return total + 1
            # else
              # return fillable(board, next, total)
        # else
          # return total

  fillable(board, positions, total)

  return
)()

