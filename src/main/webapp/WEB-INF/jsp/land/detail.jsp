<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-lg-12">

            <div class="ibox product-detail">
                <div class="ibox-content">

                    <div class="row">
                        <div class="col-md-5">


                            <div class="product-images">

                                <div>
                                    <div class="image-imitation">
                                        [IMAGE 1]
                                    </div>
                                </div>
                                <div>
                                    <div class="image-imitation">
                                        [IMAGE 2]
                                    </div>
                                </div>
                                <div>
                                    <div class="image-imitation">
                                        [IMAGE 3]
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="col-md-7">

                            <h2 class="font-bold m-b-xs">
                                [${landVo.saleType.description}] ${landVo.buildingName} ${landVo.buildingNumber}호
                            </h2>
                            <small>${landVo.address}</small>
                            <hr>
                            <div>
                                <c:set var="saleState" value="${landVo.saleState}"/>
                                <c:choose>
                                    <c:when test="${saleState eq 'SALE'}">
                                        <button class="btn btn-primary pull-right" onclick="sellOutLand();">판매 완료
                                        </button>
                                    </c:when>

                                    <c:when test="${saleState eq 'SOLD_OUT'}">
                                        <button class="btn btn-warning pull-right" onclick="sellLand();">재판매</button>
                                    </c:when>
                                </c:choose>
                                <h1 class="product-main-price">${landVo.price}만원 <span class="text-muted">${landVo.area}평</span>
                                </h1>
                            </div>
                            <hr>

                            <dl class="small m-t-md">
                                <dt>해당층/총층</dt>
                                <dd>${landVo.floor}/${landVo.floorSize}층</dd>
                                <dt>방수/욕실수</dt>
                                <dd>${landVo.roomCount}/${landVo.bathroomCount}개</dd>
                                <dt>입주가능일</dt>
                                <dd>${landVo.liveableDate}</dd>
                            </dl>

                            <dl class="small m-t-md">
                                <dt>매매자</dt>
                                <dd>${landVo.salesman}</dd>
                                <dt>연락처</dt>
                                <dd>${landVo.salesmanContact}</dd>
                            </dl>

                            <h4>상세 정보</h4>
                            <div class="small text-muted">
                                ${landVo.memo}
                            </div>
                            <hr>

                            <div class="text-right">
                                <div class="btn-group">
                                    <button class="btn btn-white btn-sm"
                                            onclick="location.href='/land/edit/${landVo.landSq}';"><i
                                            class="fa fa-pencil"></i> 수정
                                    </button>
                                    <button class="btn btn-white btn-sm"
                                            onclick="deleteLand();"><i
                                            class="fa fa-trash"></i> 삭제
                                    </button>
                                    <button class="btn btn-white btn-sm" onclick="location.href='/land/list';"><i
                                            class="fa fa-list"></i> 목록
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="ibox-footer">
                    <span class="pull-right">
                        마지막 수정일 - <i class="fa fa-clock-o"></i> ${landVo.modificationDateTime}
                    </span>
                    매물 설명
                </div>
            </div>

        </div>
    </div>

</div>


<!-- Mainly scripts -->
<script src="/js/jquery-2.1.1.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/js/inspinia.js"></script>
<script src="/js/plugins/pace/pace.min.js"></script>

<!-- slick carousel-->
<script src="/js/plugins/slick/slick.min.js"></script>

<script>
    $(document).ready(function () {


        $('.product-images').slick({
            dots: true
        });

    });

    var sellOutLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/sold-out/' + landSq);
            form.setAttribute('method', 'post');

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);

            document.body.appendChild(form);
            form.appendChild(landSqInput);
            form.submit();
        },
        sellLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/sell/' + landSq);
            form.setAttribute('method', 'post');

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);

            document.body.appendChild(form);
            form.appendChild(landSqInput);
            form.submit();
        },
        deleteLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/delete/' + landSq);
            form.setAttribute('method', 'post');

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);

            document.body.appendChild(form);
            form.appendChild(landSqInput);
            form.submit();
        };
</script>