<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>매물 등록</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/land/list">매물</a>
            </li>
            <li class="active">
                <strong>매물 등록</strong>
            </li>
        </ol>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight ecommerce">

    <div class="row">
        <div class="col-lg-12">
            <form id="form" action="/land/create" method="post">
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
                                            <select name="saleType" class="form-control">
                                                <option value="BUY">매매</option>
                                                <option value="LEASE">전세</option>
                                                <option value="RENT">월세</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">주소:</label>
                                        <div class="col-sm-10"><input type="text" name="address" class="form-control"
                                                                      placeholder="도,시,구,동"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">건물명:</label>
                                        <div class="col-sm-10"><input type="text" name="buildingName"
                                                                      class="form-control"
                                                                      placeholder="건물명"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">호수:</label>
                                        <div class="col-sm-10"><input type="text" name="buildingNumber"
                                                                      class="form-control"
                                                                      placeholder="호"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">면적:</label>
                                        <div class="col-sm-10"><input type="text" name="area" class="form-control"
                                                                      placeholder="평"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">보증금(전세금):</label>
                                        <div class="col-sm-10"><input type="text" name="deposit" class="form-control"
                                                                      placeholder="만 원"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">월세:</label>
                                        <div class="col-sm-10"><input type="text" name="rentPrice" class="form-control"
                                                                      placeholder="만 원"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">해당 층 수:</label>
                                        <div class="col-sm-10"><input type="text" name="floor" class="form-control"
                                                                      placeholder="층"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">건물 층 수:</label>
                                        <div class="col-sm-10"><input type="text" name="floorSize" class="form-control"
                                                                      placeholder="층"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">방수:</label>
                                        <div class="col-sm-10"><input type="text" name="roomCount" class="form-control"
                                                                      placeholder="개"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">욕실수:</label>
                                        <div class="col-sm-10"><input type="text" name="bathroomCount"
                                                                      class="form-control"
                                                                      placeholder="개"></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">입주가능일:</label>
                                        <div class="input-group date col-sm-10">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input
                                                type="text" name="liveableDate" class="form-control"
                                                value="${serverDate}">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">상세 정보:</label>
                                        <div class="col-sm-10">
                                            <textarea name="memo" class="summernote"></textarea>
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
                                                                      placeholder="이름">
                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-2 control-label">연락처:</label>
                                        <div class="col-sm-10"><input type="text" name="salesmanContact"
                                                                      class="form-control"
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
                <div class="pull-right">
                    <button class="btn btn-default" type="button" onclick="location.href = '/land/list';"><i
                            class="fa fa-ban"></i>&nbsp;취소
                    </button>
                    <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i>&nbsp;등록</button>
                </div>
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

<script src="/js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- SUMMERNOTE -->
<script src="/js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Jquery Validate -->
<script src="/js/plugins/validate/jquery.validate.min.js"></script>

<!-- Sweet alert2 -->
<script src="/js/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
    $(document).ready(function () {

        $('.summernote').summernote({
            height: 150
        });

        $('.input-group.date').datepicker({
            format: 'yyyy-mm-dd',
            todayBtn: 'linked',
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

        $('#form').validate({
            ignore: '', // tabs로인해 숨겨진 필드도 체크하기 위해
            rules: { // form 규칙
                saleType: {
                    required: true,
                    maxlength: 100
                },
                address: {
                    required: true,
                    maxlength: 500
                },
                buildingName: {
                    required: true,
                    maxlength: 100
                },
                buildingNumber: {
                    required: true,
                    maxlength: 100
                },
                area: {
                    required: true,
                    number: true,
                    range: [0, 100000],
                    step: 0.1
                },
                deposit: {
                    required: true,
                    digits: true,
                    range: [0, 100000]
                },
                rentPrice: {
                    digits: true,
                    range: [0, 100000]
                },
                roomCount: {
                    required: true,
                    digits: true,
                    range: [0, 100000]
                },
                bathroomCount: {
                    required: true,
                    digits: true,
                    range: [0, 100000]
                },
                liveableDate: {
                    required: true,
                    dateISO: true
                },
                memo: {
                    maxlength: 4000
                },
                salesman: {
                    maxlength: 100
                },
                salesmanContact: {
                    maxlength: 100
                }
            },
            messages: { // 규칙 체크 실패시 출력 메시지
                saleType: {
                    required: '매물구분을 선택해야 합니다.',
                    maxlength: '잘못된 데이터입니다.'
                },
                address: {
                    required: '주소를 입력해야 합니다.',
                    maxlength: '500자 까지 입력 가능합니다.'
                },
                buildingName: {
                    required: '건물명을 입력해야 합니다.',
                    maxlength: '100자 까지 입력 가능합니다.'
                },
                buildingNumber: {
                    required: '호수를 입력해야 합니다.',
                    maxlength: '100자 까지 입력 가능합니다.'
                },
                area: {
                    required: '면적을 입력해야 합니다.',
                    number: '숫자만 입력 가능합니다.',
                    range: '0 ~ 100,000 범위만 입력 가능합니다.',
                    step: '소수점 한자리까지 입력 가능합니다.'
                },
                deposit: {
                    required: '보증금(전세금)을 입력해야 합니다.',
                    digits: '정수만 입력 가능합니다.',
                    range: '0 ~ 100,000 범위만 입력 가능합니다.'
                },
                rentPrice: {
                    digits: '정수만 입력 가능합니다.',
                    range: '0 ~ 100,000 범위만 입력 가능합니다.'
                },
                roomCount: {
                    required: '방 개수를 입력해야 합니다.',
                    digits: '정수만 입력 가능합니다.',
                    range: '0 ~ 100,000 범위만 입력 가능합니다.'
                },
                bathroomCount: {
                    required: '욕실 개수를 입력해야 합니다.',
                    digits: '정수만 입력 가능합니다.',
                    range: '0 ~ 100,000 범위만 입력 가능합니다.'
                },
                liveableDate: {
                    required: '입주가능일을 입력해야 합니다.',
                    dateISO: '날짜가 올바르지 않습니다.'
                },
                memo: {
                    maxlength: '4,000자 까지 입력 가능합니다.'
                },
                salesman: {
                    maxlength: '100자 까지 입력 가능합니다.'
                },
                salesmanContact: {
                    maxlength: '100자 까지 입력 가능합니다.'
                }
            }, invalidHandler: function (form, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                    swal({
                        title: '입력값이 올바르지 않습니다!',
                        text: validator.errorList[0].message,
                        type: 'warning',
                        confirmButtonText: '확인'
                    }).then(function () {
                        validator.errorList[0].element.focus();
                    });
                }
            }
        });
    });
</script>