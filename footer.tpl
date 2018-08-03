
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<section class="newsletter-block" style="background:#D7E6E7;">
	<div class="container" style="padding-top:35px;position:relative;">
		<div class="row">
			<div class="col-md-5 col-sm-12">
				<div class="text" style="padding: 0 0 20px;line-height:23px;font-size:22px;">
					<h2 class="newsletter-title" style="margin:0 0 14px;font-size:36px;font-weight:700;">{$LANG.newslettertitle}</h2>
					<p class="newsletter-content" style="margin:0;">{$LANG.newslettercontent}</p>
				</div>
			</div>
			<div class="col-md-7 col-sm-12">
				<form action="https://stoutewebsolutions.us7.list-manage.com/subscribe/post?u=ae170a14027febe3157f94d7d&amp;id=cac8b3b121" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate newsletter-form" target="_blank" novalidate>
					<input type="hidden" value="{$date_month}" name="DADDED[month]" id="mce-DADDED-month"> 
					<input type="hidden" value="{$date_day}" name="DADDED[day]" id="mce-DADDED-day"> 
					<input type="hidden" value="{$date_year}" name="DADDED[year]" id="mce-DADDED-year">
					<div class="row" style="padding-bottom:20px;">
						<div class="col-sm-8" style="padding: 0 5px;">
							<input type="email" value="" name="EMAIL" class="required email form-control" placeholder="Enter your email address" id="mce-EMAIL" style="height:46px;font-size:24px;">
							<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_ae170a14027febe3157f94d7d_cac8b3b121" tabindex="-1" value=""></div>
						</div>
						<div class="col-sm-4" style="padding: 0 5px;">
							<input type="submit" value="SIGN UP" name="subscribe" id="mc-embedded-subscribe" class="btn btn-default btn-block btn-lg text-uppercase">
						</div>
					</div>
				</form>
				<ul class="socialnetworks list-inline" style="text-align:left;">
					<li><a href="https://www.facebook.com/stoutewebsolutions/" target="_blank" class="icon-facebook footer-social-button" style="background:#324f8f;color:#ffffff;border-radius:4px;padding:5px;font-size:24px;"><i class="fas fa-fw fa-facebook"></i></a></li>
					<li><a href="https://www.twitter.com/stoutewebsoln/" target="_blank" class="icon-twitter footer-social-button" style="background:#2a97d3;color:#ffffff;border-radius:4px;padding:5px;font-size:24px;"><i class="fas fa-fw fa-twitter"></i></a></li>
					<li><a href="https://www.linkedin.com/company/stoute-web-solutions/" target="_blank" class="icon-linkedin footer-social-button" style="background:#066a92;color:#ffffff;border-radius:4px;padding:5px;font-size:24px;"><i class="fas fa-fw fa-linkedin"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="footer" style="background:#333333;color:#ffffff;">
    <div class="container">
        <a href="#" class="back-to-top"><i class="fas fa-chevron-up"></i></a>
        <p>Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.</p>
    </div>
</section>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}

</body>
</html>