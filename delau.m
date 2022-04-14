function D =  delau(t,x0,y0,L,linemakercolor,color)
  D = triplot(delaunay(expm(-1*L*t)*x0,expm(-1*L*t)*y0),expm(-1*L*t)*x0,expm(-1*L*t)*y0,linemakercolor,'MarkerSize',5,'MarkerFaceColor',color);
end