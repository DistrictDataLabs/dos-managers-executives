play_game <- function() {
  doors <- c('door1','door2','door3')
  
  choice <- 'door1'
  
  monty_selects <- sample(doors,1)
  
  
  cat('Choice: ', choice )
  
  cat('Selected: ', monty_selects )
  
  # which doors didn't we choose?
  not_choice <- setdiff(doors,choice)
  
  # which door didn't we choose and is NOT the right door
  not_choice_not_selected <- setdiff(not_choice,monty_selects)
  
  opened <- sample(not_choice_not_selected, 1)
  cat('Opening door....',opened)
  
  switch <- setdiff(not_choice,opened)
  
  if (choice == monty_selects){
    return(1)
  }
  else {
    return(0)
  }
}

result <- play_game()
print(result)

results <- c()
for (i in 1:1000){
  results <- c(results,play_game())
}

sum(results)/1000
