//jscs:disable
window.onload = function () {
//jscs:enable
  const index = document.getElementById('logo');
  index.onclick = function () {
    window.location.href = 'index.jsp';
  };

  //根据购物车数据动态生成购物车列表
  let commodity = document.getElementById('commodity');
  let  arr = JSON.parse(localStorage.getItem('shop'));
  for (let i in arr) {
    let rs = document.createElement('li');
    rs.className = 'list-group-item';
    rs.innerHTML =
      '<div class="name">' + arr[i].name + '</div>' +
      '<div class="price pr">' + arr[i].price + '</div>' +
      '<div class="chbox">' +
        '<input class="choose ch" type="checkbox">选择' +
      '</div>' +
      '<input class="btn btn-primary del" type="button" value="删除">';
    commodity.appendChild(rs);
  };

  //计算总价
  let all;
  let check = document.getElementsByClassName('ch');
  let pr = document.getElementsByClassName('pr');
  for (let i in check) {
    check[i].onclick =  () => {
      document.getElementById('all').innerHTML = '总计：0';
      all = 0;
      for (let j in check) {
        if (check[j].checked) {
          let str  = parseFloat(pr[j].innerHTML);
          all = all + str;
        }
      };

      document.getElementById('all').innerHTML = '总计：' + all;
    };
  }

  //从购物车移除物品
  let del = document.getElementsByClassName('del');
  let list = document.getElementsByClassName('list-group-item');
  for (let i = 0; i < del.length; i++) {
    del[i].onclick = () => {
    arr.splice(i,1);
    localStorage.setItem('shop', JSON.stringify(arr));
    let user = document.getElementById('user').innerHTML;
    if (user != null && user != ''){
        window.location.href = 'shop.jsp?username=' + user;
    }else{
        window.location.href = 'shop.jsp';
    }
    };
  }

  //支付
  const pay = document.getElementById('jiesuan');
  pay.onclick = () => {
    alert('是否确定支付？');
  };
};
