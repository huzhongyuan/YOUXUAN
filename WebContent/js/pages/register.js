//jscs:disable
window.onload = function () {
  //jscs:enable
  const register = document.getElementById('register');
  let username = document.getElementsByClassName('username')[0];
  let password1 = document.getElementsByClassName('password1')[0];
  let password2 = document.getElementsByClassName('password2')[0];
  let arr = [0, 0, 0];

  //表单验证
  username.onblur =  () => {
    const reg = /[^a-zA-Z0-9_]/g;
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

  password1.onblur = () => {
    if (password1.value == '') {
      arr[1] = 0;
      password1.style.borderColor = 'orange';
    }else if (this.length >= 8) {
      arr[1] = 0;
      password1.style.borderColor = 'orange';
    }else {
      arr[1] = 1;
      password1.style.borderColor = '#ccc';
    }
  };

  password2.onblur = () => {
    if (password2.value == '') {
      arr[2] = 0;
      password2.style.borderColor = 'orange';
    }else if (password1.value == password2.value) {
      arr[2] = 1;
      password2.style.borderColor = '#ccc';
    }else {
      arr[2] = 0;
      password2.style.borderColor = 'orange';
    }
  };

  //登陆跳转
  register.onclick = () => {
    if (arr[0] == 1 && arr[1] == 1 && arr[2] == 1) {
    }else{
    	return false;
    }
  };
};
