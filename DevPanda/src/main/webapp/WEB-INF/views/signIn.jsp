<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="resources/css/signin.css" rel="stylesheet"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">

// LOGIN TABS
$(function() {
  tab = $('.tabs h3 a');
  tab.on('click', function(event) {
    event.preventDefault();
    tab.removeClass('active');
    $(this).addClass('active');
    tab_content = $(this).attr('href');
    $('div[id$="tab-content"]').removeClass('active');
    $(tab_content).addClass('active');
  });
});

// SLIDESHOW
$(function() {
  $('#slideshow > div:gt(0)').hide();
  setInterval(function() {
    $('#slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
  }, 3850);
});

// CUSTOM JQUERY FUNCTION FOR SWAPPING CLASSES
(function($) {
  'use strict';
  $.fn.swapClass = function(remove, add) {
    this.removeClass(remove).addClass(add);
    return this;
  };
}(jQuery));

// SHOW/HIDE PANEL ROUTINE (needs better methods)
// I'll optimize when time permits.
$(function() {
  $('.agree, .forgot, #toggle-terms, .log-in, .sign-up').on('click', function(event) {
    event.preventDefault();
    var user = $('.user'),terms = $('.terms'),form = $('.form-wrap'),recovery = $('.recovery'),close = $('#toggle-terms'),arrow = $('.tabs-content .fa');
    if ($(this).hasClass('agree') || $(this).hasClass('log-in') || ($(this).is('#toggle-terms')) && terms.hasClass('open')) {
      if (terms.hasClass('open')) {
        form.swapClass('open', 'closed');
        terms.swapClass('open', 'closed');
        close.swapClass('open', 'closed');
      } else {
        if ($(this).hasClass('log-in')) {
          return;
        }
        form.swapClass('closed', 'open');
        terms.swapClass('closed', 'open').scrollTop(0);
        close.swapClass('closed', 'open');
        user.addClass('overflow-hidden');
      }
    }
    else if ($(this).hasClass('forgot') || $(this).hasClass('sign-up') || $(this).is('#toggle-terms')) {
      if (recovery.hasClass('open')) {
        form.swapClass('open', 'closed');
        recovery.swapClass('open', 'closed');
        close.swapClass('open', 'closed');
      } else {
        if ($(this).hasClass('sign-up')) {
          return;
        }
        form.swapClass('closed', 'open');
        recovery.swapClass('closed', 'open');
        close.swapClass('closed', 'open');
        user.addClass('overflow-hidden');
      }
    }
  });
});

// DISPLAY MSSG
$(function() {
  $('.recovery .button').on('click', function(event) {
    event.preventDefault();
    $('.recovery .mssg').addClass('animate');
    setTimeout(function() {
      $('.form-wrap').swapClass('open', 'closed');
      $('.recovery').swapClass('open', 'closed');
      $('#toggle-terms').swapClass('open', 'closed');
      $('.tabs-content .fa').swapClass('active', 'inactive');
      $('.recovery .mssg').removeClass('animate');
    }, 2500);
  });
});

// DISABLE SUBMIT FOR DEMO
$(function() {
  $('.button').on('click', function(event) {
    $(this).stop();
    event.preventDefault();
    return false;
  });
});

</script>
</head>
<body>

    <!-- LOGIN MODULE -->
        <div class="login">
            <div class="wrap">

                <!-- LOGIN FORM -->
                <div class="user">
                    <!-- ACTIONS
                    <div class="actions">
                        <a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
                    </div>
                    -->
                    <!-- LOGO -->
                    <div class="logo">
                     <a href="#"><img src="resources/img/logoS.png" alt=""></a>   
                    </div>
                    <!-- TOGGLE -->
                    <div id="toggle-wrap">
                        <div id="toggle-terms">
                            <div id="cross">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
                   

                    <!-- RECOVERY -->
                    <div class="recovery">
                        <h2>Password Recovery</h2>
                        <p>Enter either the <strong>email address</strong> or <strong>username</strong> on the account and <strong>click Submit</strong></p>
                        <p>We'll email instructions on how to reset your password.</p>
                        <form class="recovery-form" action="" method="post">
                            <input type="text" class="input" id="user_recover" placeholder="Enter Email or Username Here">
                            <input type="submit" class="button" value="Submit">
                        </form>
                        <p class="mssg">An email has been sent to you with further instructions.</p>
                    </div>


                    <!-- FORM -->
                    <div class="form-wrap">
                        <!-- TABS -->
                      <div class="tabs">
                            <h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>일반<span></a></h3>
                        <h3 class="signup-tab"><a class="sign-up" href="#signup-tab-content"><span>기업</span></a></h3>
                      </div>
                        <!-- TABS CONTENT -->
                      <div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                        <div id="login-tab-content" class="active">
                          <form class="login-form" action="/login" method="post">
                            <input type="text" class="input"  name="id" id="user_login" autocomplete="off" placeholder="아이디를 입력해 주세요" required>
                            <input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
                            <input type="checkbox" class="checkbox" checked id="remember_me">
                 
                            <input type="submit" class="button" value="Login">
                          </form>
                          <div class="help-action">
                            <p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgot" href="#">Forgot your password?</a></p>
                          </div>
                        </div>
                            <!-- TABS CONTENT SIGNUP -->
                        <div id="signup-tab-content">
                          <form class="signup-form" action="" method="post">
                     		<input type="text" class="input" id="user_login" autocomplete="off" placeholder="Email or Username">
                            <input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
                            <input type="checkbox" class="checkbox" checked id="remember_me">
                          
                            <input type="submit" class="button" value="Sign Up">
                          </form>
             
                        </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>
</body>
</html>