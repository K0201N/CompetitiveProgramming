def tagged_row_fill(board):
  for row in board:
    if '#' in row:
      for i in range(len(row)):
        if row[i] == '.':
          row[i] = 'x'

def count_dots(board):
  return sum(row.count('.') for row in board)

board = [list(input().strip()) for _ in range(8)]

tagged_row_fill(board)
transposed_board = list(map(list, zip(*board)))
tagged_row_fill(transposed_board)
board = list(map(list, zip(*transposed_board)))

print(count_dots(board))
