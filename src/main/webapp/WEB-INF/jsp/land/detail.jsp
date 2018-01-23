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
                                [매매] 시범빌라 202호
                            </h2>
                            <small>경기도 성남시 수정구</small>
                            <hr>
                            <div>
                                <button class="btn btn-primary pull-right">판매 완료</button>
                                <h1 class="product-main-price">30,000만원 <span class="text-muted">33㎡</span></h1>
                            </div>
                            <hr>

                            <dl class="small m-t-md">
                                <dt>해당층/총층</dt>
                                <dd>2/2층</dd>
                                <dt>방수/욕실수</dt>
                                <dd>3/1개</dd>
                                <dt>입주가능일</dt>
                                <dd>17년 03월 이후</dd>
                            </dl>

                            <dl class="small m-t-md">
                                <dt>매매자</dt>
                                <dd>김민규</dd>
                                <dt>연락처</dt>
                                <dd>010-1234-5678</dd>
                            </dl>

                            <h4>상세 정보</h4>
                            <div class="small text-muted">
                                남향
                                <br>
                                로얄 수리된 좋은집
                            </div>
                            <hr>

                            <div class="text-right">
                                <div class="btn-group">
                                    <button class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> 수정</button>
                                    <button class="btn btn-white btn-sm"><i class="fa fa-trash"></i> 삭제</button>
                                    <button class="btn btn-white btn-sm"><i class="fa fa-list"></i> 목록</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="ibox-footer">
                    <span class="pull-right">
                        등록일 - <i class="fa fa-clock-o"></i> 18년 01월 23일
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

</script>