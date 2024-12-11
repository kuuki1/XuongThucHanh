<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="position-relative">
	<div class="position-absolute tm-site-header">
		<div class="container-fluid position-relative">
			<div class="row">
				<div class="col-7 col-md-4">
					<a href="<c:url value='/index'/>"
						class="tm-bg-black text-center tm-logo-container"> <i
						class="fas fa-video tm-site-logo mb-3"></i>
						<h1 class="tm-site-name">JACKER</h1>
					</a>
				</div>
				<div class="col-5 col-md-8 ml-auto mr-0">
					<div class="tm-site-nav">
						<nav class="navbar navbar-expand-lg mr-0 ml-auto" id="tm-main-nav">
							<button
								class="navbar-toggler tm-bg-black py-2 px-3 mr-0 ml-auto collapsed"
								type="button" data-toggle="collapse" data-target="#navbar-nav"
								aria-controls="navbar-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span> <i class="fas fa-bars tm-menu-closed-icon"></i> <i
									class="fas fa-times tm-menu-opened-icon"></i>
								</span>
							</button>
							<div class="collapse navbar-collapse tm-nav" id="navbar-nav">
								<ul class="navbar-nav text-uppercase">
									<c:choose>
										<c:when test="${not empty sessionScope.currentUser}">
											<li class="nav-item active"><a class="nav-link">Welcome,
													${sessionScope.currentUser.username}</a></li>
											<li class="nav-item active"><a
												class="nav-link tm-nav-link"
												href="/SOF3012_PY00047_ASM/index">Videos <span
													class="sr-only">(current)</span></a></li>
											<!-- Submenu for Account -->
											<li class="nav-item dropdown"><a
												class="nav-link tm-nav-link dropdown-toggle" href="#"
												id="accountMenu" role="button" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"> Account </a>
												<div class="dropdown-menu" aria-labelledby="accountMenu">
													<c:choose>
														<c:when test="${sessionScope.currentUser.isAdmin}">
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/account"> <i
																class="fas fa-address-card"></i> <span>Account</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/favories"> <i
																class="fas fa-heart"></i> <span>Favorite</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/history"> <i
																class="fas fa-history"></i> <span>History</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/management"> <i
																class="fas fa-user"></i> <span>Management</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/video/management/create">
																<i class="fas fa-video"></i> <span>Create video</span>
															</a>
														</c:when>
														<c:otherwise>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/account"> <i
																class="fas fa-address-card"></i> <span>Account</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/favories"> <i
																class="fas fa-heart"></i> <span>Favorite</span>
															</a>
															<a class="dropdown-item"
																href="/SOF3012_PY00047_ASM/history"> <i
																class="fas fa-history"></i> <span>History</span>
															</a>
														</c:otherwise>
													</c:choose>
												</div></li>
											<li class="nav-item"><a class="nav-link tm-nav-link"
												href="/SOF3012_PY00047_ASM/logout">Logout</a></li>
										</c:when>
										<c:otherwise>
											<li class="nav-item active"><a
												class="nav-link tm-nav-link"
												href="/SOF3012_PY00047_ASM/index">Videos <span
													class="sr-only">(current)</span></a></li>
											<li class="nav-item"><a class="nav-link tm-nav-link"
												href="/SOF3012_PY00047_ASM/login">Sign in</a></li>
											<li class="nav-item"><a class="nav-link tm-nav-link"
												href="/SOF3012_PY00047_ASM/register">Sign up</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tm-welcome-container text-center text-white">
		<div class="tm-welcome-container-inner">
			<p class="tm-welcome-text mb-1 text-white">Video Catalog is
				brought to you by JACKER.</p>
			<p class="tm-welcome-text mb-5 text-white">This is the place
				where you can relax after tiring working hours.</p>
			<!-- <a href="#content" class="btn btn-primary btn-lg animate-discover">
					    <i class="fas fa-chevron-down"></i> Discover
					</a> -->
		</div>
	</div>
	<div id="tm-video-container">
		<video autoplay muted loop id="tm-video">
			<source src="<c:url value='/templates/user/img/wheat-field.mp4'/>"
				type="video/mp4">
		</video>
	</div>

	<i id="tm-video-control-button" class="fas fa-pause"></i>
</div>

<style>
/* Style cho nút Discover */
.animate-discover {
	background-color: #007bff; /* Màu xanh hiện đại */
	color: #fff;
	border-radius: 50px;
	padding: 10px 30px;
	font-weight: bold;
	transition: all 0.3s ease-in-out;
}

.animate-discover:hover {
	background-color: #0056b3; /* Màu tối hơn khi hover */
	transform: translateY(-5px); /* Hiệu ứng nổi lên */
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.dropdown-menu {
	background-color: #343a40;
	border: none;
}

.dropdown-item {
	color: #fff;
	padding: 10px 20px;
	font-size: 14px;
	transition: background-color 0.3s ease;
}

.dropdown-item:hover {
	background-color: #495057;
	color: #fff;
}

.dropdown-item i {
	margin-right: 10px;
}
</style>