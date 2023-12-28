<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
		
      </ol>
      <div class="carousel-inner">
	  <%
				int bhti=0;		
				int xxbbt=0;				
    for(HashMap map:new CommDAO().select("select shouyetupian from xinwentongzhi where leibie='±ä»ÃÍ¼'  order by id desc ")){
	bhti++;
	xxbbt++;
     %>
	  
        <div class="carousel-item <%if(bhti==1){out.print("active");}%> ">
          <img class="d-block w-100" src="<%=map.get("shouyetupian")%>" >
        </div>
	<%
	  }
	  %>
       
		
		
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </section>