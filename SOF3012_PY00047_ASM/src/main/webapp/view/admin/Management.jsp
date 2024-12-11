<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Page</title>
<%@ include file="/common/head.jsp" %>
<style>
#menu {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-bottom: 20px;
}

.menu-button {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s;
}

.menu-button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
    <%@ include file="/common/header.jsp" %>
    <div class="container">
        <div id="menu">
            <button class="menu-button" onclick="navigateToVideoManagement()">Video Management</button>
            <button class="menu-button" onclick="navigateToUserManagement()">User Management</button>
            <button class="menu-button" onclick="navigeteToCategoryManagement()">Category Management</button>
            <button class="menu-button" onclick="navigeteToShareManagement()">Share Statistics</button>
            <button class="menu-button" onclick="navigeteToFavoriteStatistics()">Favorites Statistics</button>
            <button class="menu-button" onclick="navigeteToFavoriteUsers()">Favorites Users Statistics</button>
        </div>
        
        <br></br>
    </div>

<script>
        function navigateToUserManagement() {
            window.location.href = '/SOF3012_PY00047_ASM/user/management';
        }
        function navigateToVideoManagement() {
            window.location.href = '/SOF3012_PY00047_ASM/video/management';
        }
        function navigeteToCategoryManagement() {
        	window.location.href = '/SOF3012_PY00047_ASM/category/management';	
        }
        function navigeteToShareManagement() {
        	window.location.href = '/SOF3012_PY00047_ASM/share/management';	
        }
        function navigeteToFavoriteStatistics() {
        	window.location.href = '/SOF3012_PY00047_ASM/favorite/statistics';	
        }
        function navigeteToFavoriteUsers() {
        	window.location.href = '/SOF3012_PY00047_ASM/favorite/user/statistics?videoId=1';	
        }
    </script>
    <%@ include file="/common/footer.jsp"%>
</body>
</html>
