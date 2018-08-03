<div class="row">
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-gold">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-user"></i>
          <a href="clientarea.php">{$LANG.manageyouraccount}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelmanage}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="clientarea.php" class="btn btn-default bg-color-gold btn-sm">
            <i class="fa fa-arrow-right"></i>
            {$LANG.clientareahomeloginbtn}
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-blue">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-cube"></i>
          <a href="/cart.php">{$LANG.navservicesorder}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelorder}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="/cart.php" class="btn btn-default bg-color-blue btn-sm">
            <i class="fa fa-arrow-right"></i>
            {$LANG.clientareahomeorderbtn}
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-green">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-search"></i>
          <a href="/index.php?rp=/knowledgebase">{$LANG.homepanelkbtitle}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelkbbody}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="/index.php?rp=/knowledgebase" class="btn btn-default bg-color-green btn-sm">
            <i class="fa fa-arrow-right"></i>
            {$LANG.homepanelkbbutton}
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-blue">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-comment"></i>
          <a href="submitticket.php">{$LANG.homepanelsupporttitle}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelsupportbody}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="submitticket.php" class="btn btn-default bg-color-blue btn-sm">
            <i class="fa fa-plus"></i>
            {$LANG.homepanelsupportbutton}
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-blue">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-server"></i>
          <a href="/serverstatus.php">{$LANG.homepanelservicetitle}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelservicebody}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="/serverstatus.php" class="btn btn-default bg-color-blue btn-sm">
            <i class="fa fa-arrow-right"></i>
            {$LANG.homepanelservicebutton}
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 client-home-panels">
    <div class="panel panel-default panel-accent-blue">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="fa fa-credit-card"></i>
          <a href="/clientarea.php?action=invoices">{$LANG.homepanelinvoicestitle}</a>
        </h3>
      </div>
      <div class="panel-body">
        <p>{$LANG.homepanelinvoicesbody}</p>
      </div>
      <div class="panel-footer">
        <div>
          <a href="/clientarea.php?action=invoices" class="btn btn-default bg-color-blue btn-sm">
            <i class="fa fa-arrow-right"></i>
            {$LANG.homepanelinvoicesbutton}
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

{if $twitterusername}

    <h2>{$LANG.twitterlatesttweets}</h2>

    <div id="twitterFeedOutput">
        <p class="text-center"><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
    </div>

    <script type="text/javascript" src="templates/{$template}/js/twitter.js"></script>

{elseif $announcements}

    <h2>{$LANG.news}</h2>

    {foreach $announcements as $announcement}
        {if $announcement@index < 2}
            <div class="announcement-single">
                <h3>
                    <span class="label label-default">
                        {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}
                    </span>
                    <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
                </h3>

                <blockquote>
                    <p>
                        {if $announcement.text|strip_tags|strlen < 350}
                            {$announcement.text}
                        {else}
                            {$announcement.summary}
                            <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="label label-warning">{$LANG.readmore} &raquo;</a>
                        {/if}
                    </p>
                </blockquote>

                {if $announcementsFbRecommend}
                    <script>
                        (function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) {
                                return;
                            }
                            js = d.createElement(s); js.id = id;
                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                    </script>
                    <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                    <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                {/if}
            </div>
        {/if}
    {/foreach}
{/if}
