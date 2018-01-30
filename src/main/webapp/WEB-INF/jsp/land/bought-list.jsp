<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>매매</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/land/list">매물</a>
            </li>
            <li class="active">
                <strong>매매</strong>
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
                            <th data-toggle="true">매물구분</th>
                            <th>가격</th>
                            <th>방수/욕실수</th>
                            <th data-hide="phone,tablet">주소</th>
                            <th>건물명</th>
                            <th data-hide="phone">호수</th>
                            <th>해당층/총층</th>
                            <th data-hide="phone,tablet">연락처</th>
                            <th data-hide="all">상세설명</th>
                            <th data-hide="phone,tablet">수정일</th>
                            <th class="text-right">기능</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="boughtLandVo" items="${boughtLandVos}">
                            <tr>
                                <td>
                                        ${boughtLandVo.saleType.description}
                                </td>
                                <td>
                                        ${boughtLandVo.price}만원
                                </td>
                                <td>
                                        ${boughtLandVo.roomCount}/${boughtLandVo.bathroomCount}개
                                </td>
                                <td>
                                        ${boughtLandVo.address}
                                </td>
                                <td>
                                        ${boughtLandVo.buildingName}
                                </td>
                                <td>
                                        ${boughtLandVo.buildingNumber}호
                                </td>
                                <td>
                                        ${boughtLandVo.floor}/${boughtLandVo.floorSize}층
                                </td>
                                <td>
                                        ${boughtLandVo.salesmanContact}
                                </td>
                                <td>
                                        ${boughtLandVo.memo}
                                </td>
                                <td>
                                        ${boughtLandVo.modificationDateTime}
                                </td>
                                <td class="text-right">
                                    <div class="btn-group">
                                        <button class="btn-white btn btn-xs" onclick="location.href='/land/detail/${boughtLandVo.landSq}';">상세보기</button>
                                        <button class="btn-white btn btn-xs" onclick="location.href='/land/edit/${boughtLandVo.landSq}';">수정</button>
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