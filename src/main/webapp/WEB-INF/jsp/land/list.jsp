<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>매물</h2>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">홈</a>
            </li>
            <li class="active">
                <strong>매물</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="/land/create" class="btn btn-primary btn-sm">매물 추가</a>
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
                            <th>방수/욕실수</th>
                            <th data-hide="phone,tablet">주소</th>
                            <th>건물명</th>
                            <th>호수</th>
                            <th>해당층/총층</th>
                            <th data-hide="all">상세설명</th>
                            <th data-hide="phone">연락처</th>
                            <th class="text-right">기능</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="landVo" items="${landVos}">
                            <tr>
                                <td>
                                        ${landVo.saleType.description}
                                </td>
                                <td>
                                        ${landVo.roomCount}/${landVo.bathroomCount}개
                                </td>
                                <td>
                                        ${landVo.address}
                                </td>
                                <td>
                                        ${landVo.buildingName}
                                </td>
                                <td>
                                        ${landVo.buildingNumber}호
                                </td>
                                <td>
                                        ${landVo.floor}/${landVo.floorSize}층
                                </td>
                                <td>
                                        ${landVo.memo}
                                </td>
                                <td>
                                        ${landVo.salesmanContact}
                                </td>
                                <td class="text-right">
                                    <div class="btn-group">
                                        <button class="btn-white btn btn-xs">상세보기</button>
                                        <button class="btn-white btn btn-xs">수정</button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td>
                                전세
                            </td>
                            <td>
                                3/1개
                            </td>
                            <td>
                                경기도 성남시 수정구
                            </td>
                            <td>
                                시범빌라
                            </td>
                            <td>
                                202호
                            </td>
                            <td>
                                2/2층
                            </td>
                            <td>
                                남향 로얄 수리된 좋은집
                            </td>
                            <td>
                                010-1234-5678
                            </td>
                            <td class="text-right">
                                <div class="btn-group">
                                    <button class="btn-white btn btn-xs">상세보기</button>
                                    <button class="btn-white btn btn-xs">수정</button>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="8">
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