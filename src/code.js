$(document).ready(function(){
    $("#bell1").click(function(){
        $(".login-logo").hide(1000);
    });
    $('.public-checkbox').click(function() {
        var $this = $(this);
        var changedToPublic = ! $this.hasClass('private');
        $this.val(changedToPublic ? 'Private' : 'Public');
        $(this).toggleClass('private');
      });
});


