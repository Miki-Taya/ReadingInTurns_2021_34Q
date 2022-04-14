function L = graph_lap(D)
  L = diag(sum(D,2)) - D;
end