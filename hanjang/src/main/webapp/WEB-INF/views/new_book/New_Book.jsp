<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로 나온 책</title>
</head>
<link rel="stylesheet" href="../resources/Base/reset.css" />
<!-- <link rel="stylesheet" href="../resources/Base/book_list.css" /> -->

<style>
#container {
	margin: 0 auto;
	width: 1080px;
}

/* 타이틀 */
#title ul li {
	list-style: none;
}

.title_wrap {
	text-align: center;
}

.title_wrap p {
	padding: 25px 0px;
	font-size: 25pt;
	font-weight: bold;
	display: block;
	margin: 0 auto;
}

#wrap {
	margin: 0 auto;
	width: 100%;
	text-align: center;
	margin-top: 20px;
}

/* 카테고리 메뉴 */
#category {
	height: 40px;
	padding: 0;
	text-align: left;
}

#category button {
	color: #fff;
	background-color: #fc585e;
	outline: none;
	border: 0;
	width: 30%;
	height: 130%;
	padding: 10px;
	font-weight: bold;
	font-size: 16pt;
}

/* 장르 메뉴 */
#genre {
	text-align: left;
	margin-top: 30px;
	margin-bottom: 60px;
}

#genre ul li {
	list-style: none;
	font-size: 14pt;
	margin-right: 60px;
	padding: 0px;
	display: inline;
	height: 40px;
	font-weight: bold;
	cursor: pointer;
}

#genre ul li a {
	text-decoration: none;
	color: #555;
}

/*장르 하단 바*/
#bottomLine {
	display: flex;
}

#bottomLine #genre1 {
   display: none;
   margin-top: 10px;
   width: 100px;
   height: 2px;
   background: black;
}

#bottomLine #genre2 {
   display: none;
   margin-top: 10px;
   margin-left: 65px;
   width: 110px;
   height: 2px;
   background: black;
}

#bottomLine #genre3 {
   display: none;
   margin-top: 10px;
   margin-left: 68px;
   width: 55px;
   height: 2px;
   background: black;
}

#bottomLine #genre4 {
   display: none;
   margin-top: 10px;
   margin-left: 68px;
   width: 55px;
   height: 2px;
   background: black;
}

#bottomLine #genre5 {
   display: none;
   margin-top: 10px;
   margin-left: 65px;
   width: 85px;
   height: 2px;
   background: black;
}

#bottomLine #genre6 {
   display: none;
   margin-top: 10px;
   width: 120px;
   height: 2px;
   background: black;
}

#bottomLine #genre7 {
   display: none;
   margin-top: 10px;
   margin-left: 65px;
   width: 80px;
   height: 2px;
   background: black;
}

#bottomLine #genre8 {
   display: none;
   margin-top: 10px;
   margin-left: 65px;
   width: 70px;
   height: 2px;
   background: black;
}

#bottomLine #genre9 {
   display: none;
   margin-top: 10px;
   margin-left: 68px;
   width: 73px;
   height: 2px;
   background: black;
}

#bottomLine #genre10 {
   display: none;
   margin-top: 10px;
   margin-left: 65px;
   width: 40px;
   height: 2px;
   background: black;
}

/* 내용 */
#content {
	width: 1080px;
	margin-top: 60px;
	vertical-align: center;
	text-align: left;
}

#content ul li {
	list-style: none;
}

#content ul {
	padding-inline-start: 10px;
}

/* 이미지 부분 */
#content .info_area .image {
	position: absolute;
	/* margin-right: 100px; */
}

#content ul li img {
	/* float: left; */
	width: 150px;
	height: 200px;
	
}

/* 설명 부분 */
#content .info_area .detail {
	margin-left: 250px;
	margin-right: 130px;
}

#content .info_area .detail .title a {
	display: block;
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 6px;
	text-decoration: none;
	color: #555;
}

#content .info_area .detail .pub_info {
	margin-bottom: 6px;
}

#content .info_area .detail .author {
	display: inline-block;
	padding-right: 3px;
}

#content .info_area .detail .publication {
	display: inline-block;
	padding-left: 6px;
	padding-right: 6px;
}

#content .info_area .detail .publication_date {
	display: inline-block;
	padding-left: 6px;
}

#content .info_area .detail .price {
	margin-bottom: 7px;
	color: #fe0000;
	font-size: 18px;
	font-weight: bold;
}

#content .info_area .detail .info {
	line-height: 1.4;
}

/* 구매 버튼 부분 */
#content .info_area .buy_button {
	position: absolute;
	margin-top: -150px;
	/* right: 150px; */
	margin-left: 950px;
	
}

#content ul li .buy_button button {
	float: right;
	width: 120px;
	height: 50px;
	color: #fff;
	font-weight: bold;
}

#content ul li .buy_button button:first-child {
	margin-bottom: 30px;
	background-color: #585858;
}

#content ul li .buy_button button:last-child {
	margin-bottom: 30px;
	background-color: #00BFFF;
}

#content ul li .info_area {
	margin-bottom: 200px;
}

#content ul li .info_area:last-child {
	margin-bottom: 150px;
}

/* 페이징 부분 */
#wrap .paging a {
	display: inline-block;
	vertical-align: middle;
    width: 10px;
    height: 24px;
    padding: 8px;
    line-height: 30px;
    text-decoration: none;
	color: #444;
}

#wrap .paging ul {
	display: inline;
	padding-inline-start: 8px;
}

#wrap .paging ul li {
	display: inline;
	padding: 0 3px;
	height: 30px;
	text-align: center;
    font-weight: bold;
    line-height: 30px;
    
}
</style>

<body>
	<div id="container">
		<div id="title">
			<ul>
				<li class="title_wrap"><p>새로 나온 책</p></li>
			</ul>
		</div>

		<div id="wrap">
			<div id="category">
				<button style="cursor: pointer;" onclick="location='#''">신간
					종류</button>
			</div>

			<div id="genre">
				<ul>
					<li><a href="goToGenre.do">유아/어린이</a></li>
					<li><a href="#">소설/시/희곡</a></li>
					<li><a href="#">에세이</a></li>
					<li><a href="#">인문학</a></li>
					<li><a href="#">과학/역사</a></li>
					<div id="bottomLine">
            			<span id="genre1"></span>
            			<span id="genre2"></span>
            			<span id="genre3"></span>
            			<span id="genre4"></span>
            			<span id="genre5"></span>
         			</div>
         			<br><br>
					<li><a href="#">수험서/참고서</a></li>
					<li><a href="#">영미소설</a></li>
					<li><a href="#">경제경영</a></li>
					<li><a href="#">자기계발</a></li>
					<li><a href="#">기타</a></li>
					<div id="bottomLine">
            			<span id="genre6"></span>
            			<span id="genre7"></span>
            			<span id="genre8"></span>
            			<span id="genre9"></span>
            			<span id="genre10"></span>
         			</div>
				</ul>
			</div>

			<hr>

			<div id="content">
				<ul>
					<li>
						<div class="info_area">
							<div class="image">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/img/new/baby/baby1.jpg" 
								alt="우리는 안녕"/></a>
							</div>

							<div class="detail">
								<div class="title">
									<a href="#"><strong>우리는 안녕</strong></a>
								</div>
								<div class="pub_info">
									<span class="author">박준</span>
									<span>|</span> 
									<span class="publication">난다</span>
									<span>|</span>
									<span class="publication_date">2021년 03월 20일</span>
								</div>
								<div class="price">
									<span class="sell_price">14,850원</span>
								</div>
								<div class="info">
									<span>"안녕은 그리는 거야." 박준 시인의 첫 시 그림책<br> 안녕은 그리는 거야.<br>
										그리고 그리고 또 그리는 것을 그리움이라고 하는 거야.<br> 시인 박준의 첫 시 그림책 '우리는
										안녕'
									</span>
								</div>
							</div>

							<div class="buy_button">
								<button style="cursor: pointer;" onclick="location='#'">장바구니</button>
								<br>
								<button style="cursor: pointer;" onclick="location='#'">바로 구매</button>
							</div>
						</div>
					</li>

					<li>
						<div class="info_area">
							<div class="image">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/img/new/baby/baby2.jpg"
									alt="수상한 기차역" /></a>
							</div>

							<div class="detail">
								<div class="title">
									<a href="#"><strong>수상한 기차역</strong></a>
								</div>
								<div class="pub_info">
									<span class="author">박현숙</span>
									<span>|</span>
									<span class="publication">북멘토</span>
									<span>|</span>
									<span class="publication_date">2021년 03월 30일</span>
								</div>
								<div class="price">
									<span class="sell_price">10,350원</span>
								</div>
								<div class="info">
									<span>북멘토 가치동화 42권. 여진이네 역사 동아리는 박물관으로 견학을 떠나게 된다.<br>
										그런데 견학을 마치고 돌아오는 버스 안에서 폭우와 만나게 되고, <br>
										쏟아지는 비로 인해 산사태가 나서 산중에 갇히는 일이 벌어지고 마는데...
									</span>
								</div>
							</div>

							<div class="buy_button">
								<button style="cursor: pointer;" onclick="location='#'">장바구니</button>
								<br>
								<button style="cursor: pointer;" onclick="location='#'">바로 구매</button>
							</div>
						</div>
					</li>

					<li>
						<div class="info_area">
							<div class="image">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/img/new/baby/baby3.jpg"
									alt="눈보라" /></a>
							</div>

							<div class="detail">
								<div class="title">
									<a href="#"><strong>눈보라</strong></a>
								</div>
								<div class="pub_info">
									<span class="author">강경수</span>
									<span>|</span>
									<span class="publication">창비</span>
									<span>|</span>
									<span class="publication_date">2021년 01월 29일</span>
								</div>
								<div class="price">
									<span class="sell_price">12,600원</span>
								</div>
								<div class="info">
									<span>얼어붙은 마음을 녹이는 강력한 목소리<br> 
									볼로냐 라가치 상 수상 작가 강경수 신작
									</span>
								</div>
							</div>

							<div class="buy_button">
								<button style="cursor: pointer;" onclick="location='#'">장바구니</button>
								<br>
								<button style="cursor: pointer;" onclick="location='#'">바로 구매</button>
							</div>
						</div>
					</li>

					<li>
						<div class="info_area">
							<div class="image">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/img/new/baby/baby4.jpg"
									alt="모두 웃는 장례식" /></a>
							</div>

							<div class="detail">
								<div class="title">
									<a href="#"><strong>모두 웃는 장례식</strong></a>
								</div>
								<div class="pub_info">
									<span class="author">홍민정</span>
									<span>|</span>
									<span class="publication">별숲</span>
									<span>|</span>
									<span class="publication_date">2021년 03월 19일</span>
								</div>
								<div class="price">
									<span class="sell_price">10,800원</span>
								</div>
								<div class="info">
									<span>별숲 동화 마을 33권. 동화책 《고양이 해결사 깜냥》으로 어린이에게<br>
									 많은 사랑을 받고있는 홍민정 동화작가의 첫 고학년 장편동화다.<br>
									 암에 걸려 곧 죽음을 맞게 될 할머니가 ‘생전장례식’을<br>
									 치르면서 일어나는 일을 다루고 있다.
									</span>
								</div>
							</div>

							<div class="buy_button">
								<button style="cursor: pointer;" onclick="location='#'">장바구니</button>
								<br>
								<button style="cursor: pointer;" onclick="location='#'">바로 구매</button>
							</div>
						</div>
					</li>

					<li>
						<div class="info_area">
							<div class="image">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/img/new/baby/baby5.jpg"
									alt="행복책" /></a>
							</div>

							<div class="detail">
								<div class="title">
									<a href="#"><strong>행복책</strong></a>
								</div>
								<div class="pub_info">
									<span class="author">GO스마일연구소</span>
									<span>|</span>
									<span class="publication">큰웃음</span>
									<span>|</span>
									<span class="publication_date">2021년 02월 15일</span>
								</div>
								<div class="price">
									<span class="sell_price">16,200원</span>
								</div>
								<div class="info">
									<span>세상에서 가장 쉬운 15가지 행복 찾기 나를 위한 행복을 찾고 싶다면<br> 
									나를 위한 행복을 갖고 싶다면 행복책을 읽어보세요.
									</span>
								</div>
							</div>

							<div class="buy_button">
								<button style="cursor: pointer;" onclick="location='#'">장바구니</button>
								<br>
								<button style="cursor: pointer;" onclick="location='#'">바로 구매</button>
							</div>
						</div>
					</li>


				</ul>
			</div>

			<div class="paging">
				<a class="btn_pre" href="#">&lt;</a>
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
				<a class="btn_next" href="#">&gt;</a>
			</div>
		</div>
	</div>
</body>
</html>