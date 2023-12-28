<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section id="clients" class="wow fadeInUp partner">
      <div class="container">
        <div class="section-header">
          <h2>◇◆ 合作伙伴 ◆◇</h2>
        </div>
        <div class="row border">
		
		 <%
    for(HashMap mapyqlj:new CommDAO().select("select * from youqinglianjie order by id desc",1,8)){
     %>
          <div class="col-xs-1 col-sm-1 col-md-1">
            <img src="<%=mapyqlj.get("logo") %>" alt="">
          </div>
		 <%
								  }
								  %>
          
        </div>
      </div>
    </section>
	
    <section id="call-to-action" class="wow fadeInUp">
      <div class="container">
        <div class="row">
          <div class="col-lg-9 text-center text-lg-left">
            <h3 class="cta-title">系统简介</h3>
            <p class="cta-text"> <% HashMap m1xx = new CommDAO().getmaps("leibie","系统简介","dx");out.print(Info.ensubStr(m1xx.get("content"),185)); %>
                     </p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="#contact">联系我们</a>
          </div>
        </div>

      </div>
    </section>
	  <script src="qtimages/lib/jquery/jquery.min.js"></script>
  <script src="qtimages/lib/jquery/jquery-migrate.min.js"></script>
  <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="qtimages/lib/easing/easing.min.js"></script>
  <script src="qtimages/lib/superfish/hoverIntent.js"></script>
  <script src="qtimages/lib/superfish/superfish.min.js"></script>
  <script src="qtimages/lib/wow/wow.min.js"></script>
  <script src="qtimages/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="qtimages/lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="qtimages/lib/sticky/sticky.js"></script>
  <script src="qtimages/js/main.js"></script>
  <script src="./qtimages/js/jquery.SuperSlide.2.1.1.js"></script>
  <script>
    $(".fullSlide").slide({
      titCell: ".hd ul",
      mainCell: ".bd ul",
      effect: "fold",
      autoPlay: true,
      autoPage: true,
      trigger: "click"
    });
  </script>
