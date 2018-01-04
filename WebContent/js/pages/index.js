//jscs:disable
window.onload = function () {
//jscs:enable
  localStorage.setItem('shop', null);
  let arr = [];
  const add = document.getElementsByClassName('buy');
  for (let i in add) {
    add[i].onclick = function () {
      let name = document.getElementsByClassName('name')[i].innerHTML;
      let price = document.getElementsByClassName('pricesingle')[i].innerHTML;
      let info = {
        name,
        price,
      };
      arr.push(info);
      alert('加入购物车成功！');
    };
  };
  
  shopping = document.getElementById('shopping');
  shopping.onclick = function () {
    localStorage.setItem('shop', JSON.stringify(arr));
    const a = 'shop.jsp?username='+document.getElementById('user').innerHTML;
    window.location.href = a;
  };
};
