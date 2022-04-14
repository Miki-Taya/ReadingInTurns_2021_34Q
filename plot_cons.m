function plot_cons(L,x0,node_number,sol_size,sol_t)
  x = calc(L,x0,node_number,sol_size,sol_t);
  for i = 1:node_number
      nodeNum = ['Node:',num2str(i)];
      plot(sol_t,x(i,:),'DisplayName',nodeNum)
      hold on
  end
  hold off
  legend show
end
 