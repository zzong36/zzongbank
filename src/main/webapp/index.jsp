<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/06461e5bbe.js"
	crossorigin="anonymous"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ZzongBank/resources/css/style.css">
<title>Zzong Bank</title>
</head>
<body>

	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	
	    <!-- Showcase Slider -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item carousel-image-1 active">
            </div>

            <div class="carousel-item carousel-image-2">
            </div>

            <div class="carousel-item carousel-image-3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!--HOME ICON SECTION  -->
    <section id="home-icons" class="py-5 mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4 text-center">
                    <a href="#" class="link-dark text-decoration-none">
                        <i class="fa-solid fa-landmark fa-3x mb-3"></i>
                        <h3>계좌조회</h3>
                        <p>전계좌조회, 타금융기관 계좌조회</p>
                    </a>
                </div>
                <div class="col-md-4 mb-4 text-center">
                    <a href="#" class="link-dark text-decoration-none">
                        <i class="fa-solid fa-money-bill-transfer fa-3x mb-3"></i>
                        <h3>계좌이체</h3>
                        <p>이체결과 조회, 거래내역 조회, 잔액 모으기</p>
                    </a>
                </div>
                <div class="col-md-4 mb-4 text-center">
                    <a href="#" class="link-dark text-decoration-none">
                        <i class="fas fa-address-card fa-3x mb-3"></i>
                        <h3>비대면 계좌개설</h3>
                        <p>신분증을 준비해주세요</p>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- HOME HEADING SECTION -->
    <section id="home-heading" class="p-5">
        <div class="dark-overlay">
            <div class="row">
                <div class="col">
                    <div class="container pt-5">
                        <h1 class="mb-3">ZZONG은행 오픈뱅킹</h1>
                        <p class="d-none d-md-block">한큐에 여러 은행 계좌 조회하고 결제 가능한 송금 서비스</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Info Section -->
    <section id="info" class="py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6 align-self-center">
                    <h2 class="mb-3">진행중인 이벤트</h3>
                        <p class="lead mb-2">내집 마련의 기회 놓치지 말자!</p>
                        <p>주택청약종합저축과 1년제 내집마련 적금을 같은날 가입 시 기본금리의 두배 + 특별우대금리 제공</p>
                        <a href="about.html" class="btn btn-outline-success btn-lg">확인하기</a>
                </div>
                <div class="col-md-6">
                    <img src="/ZzongBank/resources/img/laptop.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>

    <!-- video play -->
    <section id="video-play">
        <div class="dark-overlay">
            <div class="row">
                <div class="col">
                    <div class="container p-5">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#videoModal">
                            <i class="fa-solid fa-circle-play fa-3x"></i>
                        </a>
                        <h3 class="mt-3">계좌이체 이용방법</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PHOTO GALLERY -->
    <section id="gallery" class="py-5">
        <div class="container">
            <h1 class="text-center">추천상품</h1>
            <p class="text-center">상품과 서비스</p>
            <div class="row mb-4">
                <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid">
                </a>
                <a href="https://unsplash.it/1200/768.jpg?image=252" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/600.jpg?image=252" class="img-fluid">
                </a>
                <a href="https://unsplash.it/1200/768.jpg?image=253" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/600.jpg?image=253" class="img-fluid">
                </a>
            </div>

            <div class="row mb-4">
                <a href="https://unsplash.it/1200/768.jpg?image=254" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/600.jpg?image=254" class="img-fluid">
                </a>
                <a href="https://unsplash.it/1200/768.jpg?image=255" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/500.jpg?image=255" class="img-fluid">
                </a>
                <a href="https://unsplash.it/1200/768.jpg?image=256" data-toggle="lightbox"
                    data-gallery="example-gallery" class="col-sm-4">
                    <img src="https://unsplash.it/600.jpg?image=256" class="img-fluid">
                </a>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section id="newletter" class="text-center p-5 bg-dark text-white">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>문의사항</h1>
                    <p>궁금한 점을 질문해주세요</p>
                    <form class="form-inline justify-content-center">
                        <input type="text" class="for-control mb-2 mr-2" placeholder="성명">
                        <input type="text" class="for-control mb-2 mr-2" placeholder="내용">
                        <button class="btn btn-primary mb-2">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- video modal -->
    <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <span>&times;</span>
                    </button>
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/L-VrHuCYxVo"
                            frameborder="0" height="350" width="100%" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
	
	
	<footer>
		<!-- 경로가 Mission_Web 이후부터 시작(xml, include, forward)의 경우 나머지는 localhost:9999/이후부터 시작하므로 절대경로는 /Mission_Web부터 시작  -->
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

		//configure slider
		$('.carousel').carousel({
			interval : 6000,
			pause : 'hover'
		});

		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
	</script>
</body>
</html>