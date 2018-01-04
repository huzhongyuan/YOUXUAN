<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*" %>
<script type="text/javascript" src = "./js/module/header.js" data-css = "manage" data-title = "manage"></script>
<body>
          <div class="content" style="width:1000px;position:absolute;left:50%;top:50%;margin-top:-300px;margin-left:-500px;">

              <div class="table-responsive">
<form action="managecheck.jsp" type="get">
                <table class="table table-hover">
                <tbody>
                  <h1>后台管理系统</h1>
                <tr>
                  <td>商品名称</td>
                  <td></td>
                  <td></td>
                  <td><input type="text" id="theme" name="goodsName" class="form-control" placeholder="请输入商品名称"></td>
                </tr>
                <tr>
                  <td>商品价格</td>
                  <td></td>
                  <td></td>
                  <td><input type="text" id="time" name="price" class="form-control" placeholder="请输入商品价格"></td>

                </tr>
                <tr>
                  <td>商品类别</td>
                  <td></td>
                  <td></td>
                  <td><input type="text" id="time" name="goodsType" class="form-control" placeholder="请输入商品类别"></td>

                </tr>
                <tr>
                  <td>商品库存</td>
                  <td></td>
                  <td></td>
                  <td><textarea id="describ" name="store" class="form-control" placeholder="请输入商品库存"></textarea></td>
                </tr>
				<tr>
                  <td>商品描述</td>
                  <td></td>
                  <td></td>
                  <td><textarea id="describ" name="goodsInfo" class="form-control" placeholder="请输入商品描述"></textarea></td>

                </tr>
                <tr>
                  <td>商品图片</td>
                  <td></td>
                  <td></td>
                  <td><input type="file" id="img" name="photo" class="form-control" placeholder="请上传商品图片"></td>

                </tr>

                <tr>
                  <td><input type="submit" id="submit" class="btn btn-primary" value="提交"></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                </tbody>
              </table>
              
 </form>
                </div>


          </div>


</body>
<script type="text/javascript" src = "./js/module/footer.js"></script>