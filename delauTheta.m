function D =  delauTheta(t,theta0,L,diff,const,linemakercolor,color)
  D = triplot(delaunay(cos(expm(-1*L*t)*theta0+diff*const),sin(expm(-1*L*t)*theta0+diff*const)),cos(expm(-1*L*t)*theta0+diff*const),sin(expm(-1*L*t)*theta0+diff*const),linemakercolor,'MarkerSize',5,'MarkerFaceColor',color);
end