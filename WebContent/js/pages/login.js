//jscs:disable
window.onload = function () {
//jscs:enable
  const login = document.getElementById('login');
  const register = document.getElementById('register');

  //表单验证
  let username = document.getElementsByClassName('Username')[0];
  let password = document.getElementsByClassName('Password')[0];
  let arr = [0, 0];
  username.onblur =  () => {
    const reg = /[^a-zA-Z0-9_]/g;;
    if (username.value == '') {
      arr[0] = 0;
      username.style.borderColor = 'orange';
    }else if (reg.test(this.value)) {
      arr[0] = 0;
      username.style.borderColor = 'orange';
    }else {
      arr[0] = 1;
      username.style.borderColor = '#ccc';
    }
  };

  password.onblur = () => {
    if (password.value == '') {
      arr[1] = 0;
      password.style.borderColor = 'orange';
    }else if (this.length >= 8) {
      arr[1] = 0;
      password.style.borderColor = 'orange';
    }else {
      arr[1] = 1;
      password.style.borderColor = '#ccc';
    }
  };

  //登陆跳转
//  login.onclick = () => {
//    if (arr[0] == 1 && arr[1] == 1) {
//      window.location.href = 'index.jsp';
//    };
//  };

  //注册
  register.onclick = () => {
    window.location.href = 'register.jsp';
  };
};
