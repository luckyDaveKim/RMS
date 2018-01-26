<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="wrapper wrapper-content animated fadeInRight ecommerce">

    <div class="row">
        <div class="col-lg-12">
            <form action="/land/create" method="post">
                <div class="tabs-container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1">매물 정보</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2">매매자 정보</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-3">사진</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="panel-body">

                                <fieldset class="form-horizontal">
                                    <div class="form-group"><label class="col-sm-2 control-label">매물 구분:</label>
                                        <div class="col-sm-10">
                                            <select id="saleTypeSelect" name="saleType" class="form-control">
                                                <option value="BUY">매매</option>
                                                <option value="LEASE">전세</option>
                                                <option value="RENT">월세</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">주소:</label>
                                        <div class="col-sm-10"><input type="text" name="address" class="form-control"
                                                                      value="${landVo.address}" placeholder="도,시,구,동">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">건물명:</label>
                                        <div class="col-sm-10"><input type="text" name="buildingName"
                                                                      class="form-control"
                                                                      value="${landVo.buildingName}" placeholder="건물명">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">호수:</label>
                                        <div class="col-sm-10"><input type="text" name="buildingNumber"
                                                                      class="form-control"
                                                                      value="${landVo.buildingNumber}" placeholder="호">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">면적:</label>
                                        <div class="col-sm-10"><input type="text" name="area" class="form-control"
                                                                      value="${landVo.area}" placeholder="㎡"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">가격:</label>
                                        <div class="col-sm-10"><input type="text" name="price" class="form-control"
                                                                      value="${landVo.price}" placeholder="만원"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">해당층:</label>
                                        <div class="col-sm-10"><input type="text" name="floor" class="form-control"
                                                                      value="${landVo.floor}" placeholder="층"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">총층:</label>
                                        <div class="col-sm-10"><input type="text" name="floorSize" class="form-control"
                                                                      value="${landVo.floorSize}" placeholder="층"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">방수:</label>
                                        <div class="col-sm-10"><input type="text" name="roomCount" class="form-control"
                                                                      value="${landVo.roomCount}" placeholder="개"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">욕실수:</label>
                                        <div class="col-sm-10"><input type="text" name="bathroomCount"
                                                                      class="form-control"
                                                                      value="${landVo.bathroomCount}"
                                                                      placeholder="개"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">입주가능일:</label>
                                        <div class="input-group date col-sm-10">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input
                                                type="text" name="liveableDate" class="form-control"
                                                value="${landVo.liveableDate}">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">상세 정보:</label>
                                        <div class="col-sm-10">
                                            <textarea name="memo" class="summernote">${landVo.memo}</textarea>
                                        </div>
                                    </div>
                                </fieldset>

                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="panel-body">

                                <fieldset class="form-horizontal">
                                    <div class="form-group"><label class="col-sm-2 control-label">매매자:</label>
                                        <div class="col-sm-10"><input type="text" name="salesman" class="form-control"
                                                                      value="${landVo.salesman}" placeholder="이름">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">연락처:</label>
                                        <div class="col-sm-10"><input type="text" name="salesmanContact"
                                                                      class="form-control"
                                                                      value="${landVo.salesmanContact}"
                                                                      placeholder="연락처">
                                        </div>
                                    </div>
                                </fieldset>

                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane">
                            <div class="panel-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered table-stripped">
                                        <thead>
                                        <tr>
                                            <th>
                                                Image preview
                                            </th>
                                            <th>
                                                Image url
                                            </th>
                                            <th>
                                                Sort order
                                            </th>
                                            <th>
                                                Actions
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/2s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image1.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="1">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/1s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image2.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="2">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/3s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image3.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="3">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/4s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image4.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="4">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/5s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image5.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="5">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/6s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image6.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="6">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="/img/gallery/7s.jpg">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" disabled
                                                       value="http://mydomain.com/images/image7.png">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" value="7">
                                            </td>
                                            <td>
                                                <button class="btn btn-white"><i class="fa fa-trash"></i></button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <button>보내자</button>
            </form>
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

<!-- SUMMERNOTE -->
<script src="/js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script>
    $(document).ready(function () {

        $('.summernote').summernote({
            height: 150
        });

        $('.input-group.date').datepicker({
            format: 'yyyy/mm/dd',
            todayBtn: 'linked',
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

        // 매물 구분 설정
        $('#saleTypeSelect').val('${landVo.saleType}');

    });
</script>