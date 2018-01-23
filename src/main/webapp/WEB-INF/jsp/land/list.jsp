<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="wrapper wrapper-content animated fadeInRight ecommerce">

    <div class="ibox-content m-b-sm border-bottom">
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="product_name">Product Name</label>
                    <input type="text" id="product_name" name="product_name" value="" placeholder="Product Name"
                           class="form-control">
                </div>
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label class="control-label" for="price">Price</label>
                    <input type="text" id="price" name="price" value="" placeholder="Price" class="form-control">
                </div>
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <label class="control-label" for="quantity">Quantity</label>
                    <input type="text" id="quantity" name="quantity" value="" placeholder="Quantity"
                           class="form-control">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="status">Status</label>
                    <select name="status" id="status" class="form-control">
                        <option value="1" selected>Enabled</option>
                        <option value="0">Disabled</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

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