<!-- basic scripts -->

<!--[if !IE]> -->
<script src="<?php echo e(asset('assets/js/jquery-2.1.4.min.js'), false); ?>"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="<?php echo e(asset('assets/js/jquery-1.11.3.min.js'), false); ?>"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo e(asset('assets/js/jquery.mobile.custom.min.js'), false); ?>'>"+"<"+"/script>");
</script>
<script src="<?php echo e(asset('assets/js/bootstrap.min.js'), false); ?>"></script>

<!-- page specific plugin scripts -->
<script src="<?php echo e(asset('assets/js/toastr.min.js'), false); ?>"></script>

<script src="<?php echo e(asset('assets/js/select2.min.js'), false); ?>"></script>
<script src="<?php echo e(asset('assets/js/chosen.jquery.min.js'), false); ?>"></script>
<script>
    if(!ace.vars['touch']) {
        $('.chosen-select').chosen({allow_single_deselect:true});
        //resize the chosen on window resize
        $(window)
            .off('resize.chosen')
            .on('resize.chosen', function() {
                $('.chosen-select').each(function() {
                    var $this = $(this);
                    $this.next().css({'width': $this.parent().width()});
                })
            }).trigger('resize.chosen');
        //resize chosen on sidebar collapse/expand
        $(document).on('settings.ace.chosen', function(e, event_name, event_val) {
            if(event_name != 'sidebar_collapsed') return;
            $('.chosen-select').each(function() {
                var $this = $(this);
                $this.next().css({'width': $this.parent().width()});
            })
        });
    }

</script>

<!-- ace scripts -->
<script src="<?php echo e(asset('assets/js/ace-elements.min.js'), false); ?>"></script>
<script src="<?php echo e(asset('assets/js/ace.min.js'), false); ?>"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        var $sidebar = $('.sidebar').eq(0);
        if( !$sidebar.hasClass('h-sidebar') ) return;

        $(document).on('settings.ace.top_menu' , function(ev, event_name, fixed) {
            if( event_name !== 'sidebar_fixed' ) return;

            var sidebar = $sidebar.get(0);
            var $window = $(window);

            //return if sidebar is not fixed or in mobile view mode
            var sidebar_vars = $sidebar.ace_sidebar('vars');
            if( !fixed || ( sidebar_vars['mobile_view'] || sidebar_vars['collapsible'] ) ) {
                $sidebar.removeClass('lower-highlight');
                //restore original, default marginTop
                sidebar.style.marginTop = '';

                $window.off('scroll.ace.top_menu')
                return;
            }


            var done = false;
            $window.on('scroll.ace.top_menu', function(e) {

                var scroll = $window.scrollTop();
                scroll = parseInt(scroll / 4);//move the menu up 1px for every 4px of document scrolling
                if (scroll > 17) scroll = 17;


                if (scroll > 16) {
                    if(!done) {
                        $sidebar.addClass('lower-highlight');
                        done = true;
                    }
                }
                else {
                    if(done) {
                        $sidebar.removeClass('lower-highlight');
                        done = false;
                    }
                }

                sidebar.style['marginTop'] = (17-scroll)+'px';
            }).triggerHandler('scroll.ace.top_menu');

        }).triggerHandler('settings.ace.top_menu', ['sidebar_fixed' , $sidebar.hasClass('sidebar-fixed')]);

        $(window).on('resize.ace.top_menu', function() {
            $(document).triggerHandler('settings.ace.top_menu', ['sidebar_fixed' , $sidebar.hasClass('sidebar-fixed')]);
        });


    });
</script>



 <script>
   /*  $(document).ready(function () {
         jQuery('#overlay').fadeOut("fast");
     });*/
 </script>



<script>
    $(document).ready(function () {
        var skinClass = localStorage.getItem('ace_skin');
        document.body.classList.add(skinClass);
        jQuery('#overlay').fadeOut("fast","linear");
        //document.body.classList.add('rtl');
    });
</script>

<?php echo $__env->make('includes.scripts.tracking', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/layouts/includes/footer-script.blade.php ENDPATH**/ ?>