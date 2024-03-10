<%-- 
    Document   : account
    Created on : Feb 3, 2024, 9:21:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/account.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="grid-acc">
            <div class="grid-left__acc">
                <div class="acc-depense">
                    <div class="acc-depense__header">
                        <div class="acc-img">
                            <img src="./img/avt.png" alt="alt"/>
                        </div>
                        <div class="acc-name">${us.fullName}</div>
                    </div>
                    <div class="hotline">
                        <div>HOTLINE hỗ trợ: 0123456789</div>
                        <div>Email: hotro@galaxystudio.vn</div>
                    </div>
                </div>
            </div>
            <div class="grid-right__acc">
                <div class="header-list">
                    <ul class="list-service">
                        <li class="item-service"><a href="history">Transaction history</a></li>
                        <li class="item-service"><a  href="account" class="active">Personal information</a></li>
                        <li class="item-service"><a href="cart">Cart</a></li>
                    </ul>
                </div>
                <form action="account" method="post">
                    <c:set var="us" value="${sessionScope.user}"></c:set>
                        <div class="acc-contain">
                            <div class="info-left">
                                <div class="name ex">
                                    <label for="name">Full name</label>
                                    <div class="name-input input">
                                        <i class="fa-solid fa-user"></i>
                                        <input type="text" name="name" value="${us.fullName}">
                                </div>
                            </div>
                            <div class="email ex">
                                <label for="name">Email</label>
                                <div class="email-input input">
                                    <i class="fa-solid fa-envelope"></i>
                                    <input type="text" name="email" value="${us.email}">
                                </div>
                            </div>
                            <div class="gender ex">
                                <div class="male">
                                    <label for="id">Male</label>
                                    <input type="radio" name="gender" value="male" ${us.gender=='male' ? 'checked' : ''}>
                                </div>
                                <div class="female">
                                    <label for="id">Female</label>
                                    <input type="radio" name="gender" value="female" ${us.gender=='female' ? 'checked' : ''}>
                                </div>
                            </div>
                        </div>
                        <div class="info-right">
                            <div class="dob px">
                                <label for="dob">Birthday</label>
                                <div class="dob-input input">
                                    <i class="fa-solid fa-calendar"></i>
                                    <input type="date" name="dob" value="${us.dob}">
                                </div>
                            </div>
                            <div class="phone px">
                                <label for="phone">Phone number</label>
                                <div class="phone-input input">
                                    <i class="fa-solid fa-mobile"></i>
                                    <input type="phone" name="phone" value="${us.phone}" readonly>
                                </div>
                            </div>
                            <div class="pass px">
                                <label for="pass">Password</label>
                                <div class="pass-input input">
                                    <i class="fa-solid fa-lock"></i>
                                    <input type="password" name="password" value="${us.password}">
                                    <i class="fa-solid fa-eye-slash"></i>
                                </div>
                            </div>
                            <button type="submit" class="btn-info">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <script>
let pass = document.querySelector('.pass-input i:nth-child(3)');
let passinput = document.querySelector('.pass-input input');
console.log(passinput);
let check = false;
pass.addEventListener('click', () => {
console.log(check);
    if (check===false) {
        pass.className = "fa-solid fa-eye";
        passinput.type='password';
        check = true;
        
    } else {
        pass.className = "fa-solid fa-eye-slash";
        passinput.type='text';
        check = false;
        
    }
});

        </script>
    </body>

</html>
