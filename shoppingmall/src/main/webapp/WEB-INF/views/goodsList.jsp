<%@page import="com.jaegyu.shoppingmall.goods.goodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   

    <%@ include file="top.jsp" %>
  
      <div class="row">
        	<div class="col-md-12">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a href="index.me" class="nav-link"><i class="fa fa-home fa-home"></i>&nbsp;Home</a>
            </li>
 
            <li class="nav-item">
              <a href="List.me?pg=1&gk=1" class="nav-link">Hat</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="List.me?pg=1&gk=2">Accessory</a>
            </li>

            <li class="nav-item">
              <a href="List.me?pg=1&gk=3" class="active nav-link">Q&amp;A</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="row">
      <div class="col-sm-12 col-lg-12 col-md-12" align="center">
      <c:choose>
      <c:when test="${empty requestScope.list }">
      <br><br>
      <h3 align="center">준비한 물품이 없습니다.</h3>
      </c:when>
      <c:otherwise>
      <c:forEach var="list" items="${requestScope.list }">
        <div class="col-sm-6 col-lg-6 col-md-6">
          <div class="thumbnail">
            <img class="img-fluid d-block" src="img/0003.jpg"><!-- ${list.imgsrc} -->
            <div class="caption">
              <h3 class="pull-right">${list.price}</h3>
              <h3>
                <a href="Content.me?num=${list.num }&pg=${pg }">${list.goodsname }</a>
              </h3>
              <p>${list.content }</p>
            </div>
          </div>
        </div>
        </c:forEach>
        <div class="col-sm-12 col-lg-12 col-md-12" >
        <div class="col-sm-3 col-lg-3 col-md-3">
        <ul class=" pagination pagination-lg">
        <c:if test="${requestScope.startPage>3 }">
          <li class="page-item">
            <a class="page-link" href="List.me?pg=${requestScope.startPage -1 }&gk=${gk}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span> </a>
          </li>
        </c:if>
        <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1"	>
          <c:if test="${i==pg }">
          <li class="page-item">
            <a class="page-link" href="List.me?pg=${requestScope.startPage}&gk=${gk}">${i }</a>
          </li>
          </c:if>
          <c:if test="${i!=pg }">
          <li class="page-item">
            <a class="page-link" href="List.me?pg=${i}&gk=${gk}">${i }</a>
          </li>
          </c:if>
          </c:forEach>
          <c:if test="${requestScope.endPage<totalPage }">
          <li class="page-item">
            <a class="page-link" href="List.me?pg=${requestScope.endPage +1 }&gk=${gk}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span> </a>
          </li>
          </c:if>
        </ul>
      </div>
      </div>
      </c:otherwise>
      </c:choose>
      </div>
    </div>
</div>
</div>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
</body>

</html>