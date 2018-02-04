<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>매물 상세보기</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/land/list">매물</a>
            </li>
            <li class="active">
                <strong>매물 상세보기</strong>
            </li>
        </ol>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-lg-12">

            <div class="ibox product-detail">
                <div class="ibox-content">

                    <div class="row">
                        <div class="col-md-5">

                            <div class="product-images">

                                <c:forEach var="fileVo" items="${fileVos}">
                                    <div>
                                        <img src="${fileVo.imageFileVo}">
                                    </div>
                                </c:forEach>

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
                                <h1 class="product-main-price">
                                    ${landVo.deposit}만 원
                                    <c:if test="${landVo.rentPrice > 0}">
                                        / ${landVo.rentPrice}만 원
                                    </c:if>
                                </h1>
                            </div>
                            <hr>

                            <dl class="dl-horizontal m-t-md small">
                                <dt>방/욕실 수</dt>
                                <dd>${landVo.roomCount}/${landVo.bathroomCount}개</dd>
                                <dt>공급/전용 면적</dt>
                                <dd>${landVo.supplyArea}/${landVo.exclusiveArea}평</dd>
                                <dt>지분</dt>
                                <dd>${landVo.stake}평</dd>
                                <dt>해당/총 층</dt>
                                <dd>${landVo.floor}/${landVo.floorSize}층</dd>
                                <dt>입주 가능일</dt>
                                <dd>${landVo.liveableDate}</dd>
                            </dl>

                            <dl class="dl-horizontal m-t-md small">
                                <dt>의뢰인</dt>
                                <dd>${landVo.salesman}</dd>
                                <dt>연락처</dt>
                                <dd>${landVo.salesmanContact}</dd>
                            </dl>

                            <h4>현재 임대 현황</h4>
                            <dl class="dl-horizontal small">
                                <dt>보증금(전세, 매매금)</dt>
                                <dd>${landVo.latestDeposit}만 원</dd>
                                <dt>월세</dt>
                                <dd>${landVo.latestRentPrice}만 원</dd>
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
                                            onclick="checkDeleteLand();"><i
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

<!-- Sweet alert2 -->
<script src="/js/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
    $(document).ready(function () {

        $('.product-images').slick({
            dots: true
        });

    });

    var sellOutLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = null;

            landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/sold-out/' + landSq);
            form.setAttribute('method', 'post');
            document.body.appendChild(form);

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);
            form.appendChild(landSqInput);

            form.submit();
        },
        sellLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = null;

            landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/sell/' + landSq);
            form.setAttribute('method', 'post');
            document.body.appendChild(form);

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);
            form.appendChild(landSqInput);

            form.submit();
        },
        checkDeleteLand = function () {
            swal({
                title: '매물 삭제',
                text: '현재 매물 데이터는 삭제되며 복구할 수 없습니다. 계속 진행하시겠습니까?',
                type: 'warning',
                reverseButtons: true,
                showCancelButton: true,
                cancelButtonText: '취소',
                confirmButtonText: '매물 삭제',
                confirmButtonColor: '#d33'
            }).then(function (result) {
                if (result.value) {
                    deleteLand();
                }
            });
        },
        deleteLand = function () {
            var form = document.createElement('form'),
                landSqInput = document.createElement('input'),
                landSq = null;

            landSq = ${landVo.landSq};

            form.setAttribute('action', '/land/delete/' + landSq);
            form.setAttribute('method', 'post');
            document.body.appendChild(form);

            landSqInput.setAttribute('type', 'hidden');
            landSqInput.setAttribute('name', 'landSq');
            landSqInput.setAttribute('value', landSq);
            form.appendChild(landSqInput);

            form.submit();
        };
</script>
