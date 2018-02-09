<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>전세</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/land/list">매물</a>
            </li>
            <li class="active">
                <strong>전세</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="/land/create" class="btn btn-primary btn-sm">매물 등록</a>
        </div>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight ecommerce">

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox">
                <div class="ibox-content">

                    <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                        <thead>
                        <tr>
                            <th>전세금</th>
                            <th>방/욕실 수</th>
                            <th>공급/전용(지분) 면적</th>
                            <th data-hide="phone,tablet">주소</th>
                            <th>건물명</th>
                            <th data-hide="phone,tablet">호 수</th>
                            <th data-hide="phone,tablet">해당/총 층</th>
                            <th data-hide="all">현재 임대 보증금(전세, 매매금)/월세</th>
                            <th data-hide="all">연락처</th>
                            <th data-hide="phone,tablet">상세설명</th>
                            <th data-hide="phone">입주 가능일</th>
                            <th class="text-right">기능</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="leasedLandVo" items="${leasedLandVos}">
                            <tr>
                                <td>
                                        ${leasedLandVo.deposit}만 원
                                </td>
                                <td>
                                        ${leasedLandVo.roomCount}/${leasedLandVo.bathroomCount}개
                                </td>
                                <td>
                                        ${leasedLandVo.supplyArea}/${leasedLandVo.exclusiveArea}(${leasedLandVo.stake})평
                                </td>
                                <td>
                                        ${leasedLandVo.address}
                                </td>
                                <td>
                                        ${leasedLandVo.buildingName}
                                </td>
                                <td>
                                        ${leasedLandVo.buildingNumber}호
                                </td>
                                <td>
                                        ${leasedLandVo.floor}/${leasedLandVo.floorSize}층
                                </td>
                                <td>
                                        ${leasedLandVo.latestDeposit}/${leasedLandVo.latestRentPrice}만 원
                                </td>
                                <td>
                                        ${leasedLandVo.salesmanContact}
                                </td>
                                <td>
                                        ${leasedLandVo.memo}
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${leasedLandVo.liveableDate.compareTo(serverDate) > 0}">
                                            ${leasedLandVo.liveableDate}
                                        </c:when>
                                        <c:otherwise>
                                            즉시 입주
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="text-right">
                                    <div class="btn-group">
                                        <button class="btn-white btn btn-xs"
                                                onclick="location.href='/land/detail/${leasedLandVo.landSq}';">상세보기
                                        </button>
                                        <button class="btn-white btn btn-xs"
                                                onclick="location.href='/land/edit/${leasedLandVo.landSq}';">수정
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="11">
                                <ul class="pagination pull-right"></ul>
                            </td>
                        </tr>
                        </tfoot>
                    </table>

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

<!-- FooTable -->
<script src="/js/plugins/footable/footable.all.min.js"></script>

<!-- Page-Level Scripts -->
<script>
    $(document).ready(function () {

        $('.footable').footable();

    });

</script>