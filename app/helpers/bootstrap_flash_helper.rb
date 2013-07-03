


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>twitter-bootstrap-rails/app/helpers/bootstrap_flash_helper.rb at master · seyhunak/twitter-bootstrap-rails · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/modules/logos_page/Octocat.png">
    <link rel="assets" href="https://a248.e.akamai.net/assets.github.com/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="5Z0RxYBt9VbmsaFmz5j6kZOtoiWqK/+Fy+3mHbnzjI0=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-fefedf42610dea2b58c3988045dcd6f71faa35d2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-7e71c956ffd336c2781a61960c139912283f1a88.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-1f72571b966545f4e27481a3b0ebbeeed4f2f139.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-72ffa0e80d3210625a2fd849f1e6f91bc1860d51.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="feb0cfd78828f5e284d9be9f411b06d3">

        <link data-pjax-transient rel='permalink' href='/seyhunak/twitter-bootstrap-rails/blob/9a0a31096ecee572638132d5ed94bc5500f74330/app/helpers/bootstrap_flash_helper.rb'>
  <meta property="og:title" content="twitter-bootstrap-rails"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/seyhunak/twitter-bootstrap-rails"/>
  <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="twitter-bootstrap-rails - Twitter Bootstrap for Rails 3.1 Asset Pipeline (Updated to Bootstrap 2)"/>

  <meta name="description" content="twitter-bootstrap-rails - Twitter Bootstrap for Rails 3.1 Asset Pipeline (Updated to Bootstrap 2)" />

  <meta content="170820" name="octolytics-dimension-user_id" /><meta content="seyhunak" name="octolytics-dimension-user_login" /><meta content="2242086" name="octolytics-dimension-repository_id" /><meta content="seyhunak/twitter-bootstrap-rails" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2242086" name="octolytics-dimension-repository_network_root_id" /><meta content="seyhunak/twitter-bootstrap-rails" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/seyhunak/twitter-bootstrap-rails/commits/master.atom" rel="alternate" title="Recent Commits to twitter-bootstrap-rails:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  vis-public env-production ">

    <div class="wrapper">
      
      
      

      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
      <a class="button primary" href="/signup">Sign up</a>
      <a class="button" href="/login?return_to=%2Fseyhunak%2Ftwitter-bootstrap-rails%2Fblob%2Fmaster%2Fapp%2Fhelpers%2Fbootstrap_flash_helper.rb">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">


      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="seyhunak/twitter-bootstrap-rails"
      data-branch="master"
      data-sha="0f63f2c8ab2549086221ae40900dd21d67053dda"
  >

    <input type="hidden" name="nwo" value="seyhunak/twitter-bootstrap-rails" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


    <li>
      <a href="/login?return_to=%2Fseyhunak%2Ftwitter-bootstrap-rails"
        class="minibutton with-count js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="octicon octicon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/seyhunak/twitter-bootstrap-rails/stargazers">
        3,068
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Fseyhunak%2Ftwitter-bootstrap-rails"
        class="minibutton with-count js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/seyhunak/twitter-bootstrap-rails/network" class="social-count">
        650
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/seyhunak" class="url fn" itemprop="url" rel="author"><span itemprop="title">seyhunak</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/seyhunak/twitter-bootstrap-rails" class="js-current-repository js-repo-home-link">twitter-bootstrap-rails</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container
            ">

          <div class="repository-sidebar">

              

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/seyhunak/twitter-bootstrap-rails" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /seyhunak/twitter-bootstrap-rails">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/seyhunak/twitter-bootstrap-rails/issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /seyhunak/twitter-bootstrap-rails/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>84</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/seyhunak/twitter-bootstrap-rails/pulls" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /seyhunak/twitter-bootstrap-rails/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>3</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/seyhunak/twitter-bootstrap-rails/wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /seyhunak/twitter-bootstrap-rails/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>


    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/seyhunak/twitter-bootstrap-rails/pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /seyhunak/twitter-bootstrap-rails/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/seyhunak/twitter-bootstrap-rails/graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /seyhunak/twitter-bootstrap-rails/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/seyhunak/twitter-bootstrap-rails/network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /seyhunak/twitter-bootstrap-rails/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    </ul>

  </div>
</div>


              <div class="only-with-full-nav">

                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/seyhunak/twitter-bootstrap-rails.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/seyhunak/twitter-bootstrap-rails.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/seyhunak/twitter-bootstrap-rails" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/seyhunak/twitter-bootstrap-rails" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>




                  <a href="/seyhunak/twitter-bootstrap-rails/archive/master.zip"
                     class="minibutton sidebar-button"
                     title="Download this repository as a zip file"
                     rel="nofollow">
                    <span class="octicon octicon-cloud-download"></span>
                    Download ZIP
                  </a>

              </div>
          </div>

          <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
            


<!-- blob contrib key: blob_contributors:v21:1ea9d9524c973a3da4854a36ae8fd5e5 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:1ea9d9524c973a3da4854a36ae8fd5e5 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/seyhunak/twitter-bootstrap-rails/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/gh-pages/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gh-pages" rel="nofollow" title="gh-pages">gh-pages</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/master/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/static/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="static" rel="nofollow" title="static">static</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/v2.2.7/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v2.2.7" rel="nofollow" title="v2.2.7">v2.2.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/v2.1.0/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v2.1.0" rel="nofollow" title="v2.1.0">v2.1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/v2.0.9/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v2.0.9" rel="nofollow" title="v2.0.9">v2.0.9</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/seyhunak/twitter-bootstrap-rails/blob/v2.0.7/app/helpers/bootstrap_flash_helper.rb" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v2.0.7" rel="nofollow" title="v2.0.7">v2.0.7</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/seyhunak/twitter-bootstrap-rails" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">twitter-bootstrap-rails</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/seyhunak/twitter-bootstrap-rails/tree/master/app" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">app</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/seyhunak/twitter-bootstrap-rails/tree/master/app/helpers" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">helpers</span></a></span><span class="separator"> / </span><strong class="final-path">bootstrap_flash_helper.rb</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="app/helpers/bootstrap_flash_helper.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/1124d975d6525f2ef54f702a4ed570ca?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/toadkicker" rel="author">toadkicker</a></span>
    <time class="js-relative-date" datetime="2013-04-25T08:04:03-07:00" title="2013-04-25 08:04:03">April 25, 2013</time>
    <div class="commit-title">
        <a href="/seyhunak/twitter-bootstrap-rails/commit/56c8d9cb0c4197b8df1cde33d25b4675421a0d9a" class="message">correct variable usage</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>10</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="achempion" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=achempion"><img height="20" src="https://secure.gravatar.com/avatar/2aa876aa0d2187ccd991e64b8008a0bc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="toadkicker" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=toadkicker"><img height="20" src="https://secure.gravatar.com/avatar/1124d975d6525f2ef54f702a4ed570ca?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="pjaspers" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=pjaspers"><img height="20" src="https://secure.gravatar.com/avatar/634418f4f69b29a5d0eb6756c1659de1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="lucasmoreira" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=lucasmoreira"><img height="20" src="https://secure.gravatar.com/avatar/9cf75c4b4c85df70057854f7d276c1c5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="trusche" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=trusche"><img height="20" src="https://secure.gravatar.com/avatar/d2759ed9f4b74edb6b5ddb70c6a11164?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="rsamoilov" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=rsamoilov"><img height="20" src="https://secure.gravatar.com/avatar/bb8bf5bcd0adba8990aa60a3c5abd4c4?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="joelvh" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=joelvh"><img height="20" src="https://secure.gravatar.com/avatar/d60fc518da341c611c4aa7f87684f12f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="aykutfarsak" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=aykutfarsak"><img height="20" src="https://secure.gravatar.com/avatar/e77798abe64cc988f00388bce72778a9?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="renius" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=renius"><img height="20" src="https://secure.gravatar.com/avatar/732b8fdb2beaea91d49f2e305877879a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="pubis" href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb?author=pubis"><img height="20" src="https://secure.gravatar.com/avatar/602a35c72beac92aaf2c57e9e719bb66?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/2aa876aa0d2187ccd991e64b8008a0bc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/achempion">achempion</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/1124d975d6525f2ef54f702a4ed570ca?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/toadkicker">toadkicker</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/634418f4f69b29a5d0eb6756c1659de1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/pjaspers">pjaspers</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/9cf75c4b4c85df70057854f7d276c1c5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/lucasmoreira">lucasmoreira</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/d2759ed9f4b74edb6b5ddb70c6a11164?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/trusche">trusche</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/bb8bf5bcd0adba8990aa60a3c5abd4c4?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/rsamoilov">rsamoilov</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/d60fc518da341c611c4aa7f87684f12f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/joelvh">joelvh</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/e77798abe64cc988f00388bce72778a9?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/aykutfarsak">aykutfarsak</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/732b8fdb2beaea91d49f2e305877879a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/renius">renius</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/602a35c72beac92aaf2c57e9e719bb66?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/pubis">pubis</a>
        </li>
      </ul>
    </div>
  </div>


<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>24 lines (20 sloc)</span>
        <span>0.78 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton js-entice" href=""
                 data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
          <a href="/seyhunak/twitter-bootstrap-rails/raw/master/app/helpers/bootstrap_flash_helper.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/seyhunak/twitter-bootstrap-rails/blame/master/app/helpers/bootstrap_flash_helper.rb" class="button minibutton ">Blame</a>
          <a href="/seyhunak/twitter-bootstrap-rails/commits/master/app/helpers/bootstrap_flash_helper.rb" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
      </div><!-- /.actions -->

    </div>
                <div class="blob-wrapper data type-ruby js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="k">module</span> <span class="nn">BootstrapFlashHelper</span></div><div class='line' id='LC2'>&nbsp;&nbsp;<span class="no">ALERT_TYPES</span> <span class="o">=</span> <span class="o">[</span><span class="ss">:error</span><span class="p">,</span> <span class="ss">:info</span><span class="p">,</span> <span class="ss">:success</span><span class="p">,</span> <span class="ss">:warning</span><span class="o">]</span></div><div class='line' id='LC3'><br/></div><div class='line' id='LC4'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">bootstrap_flash</span></div><div class='line' id='LC5'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">flash_messages</span> <span class="o">=</span> <span class="o">[]</span></div><div class='line' id='LC6'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">flash</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">type</span><span class="p">,</span> <span class="n">message</span><span class="o">|</span></div><div class='line' id='LC7'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Skip empty messages, e.g. for devise messages set to nothing in a locale file.</span></div><div class='line' id='LC8'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">next</span> <span class="k">if</span> <span class="n">message</span><span class="o">.</span><span class="n">blank?</span></div><div class='line' id='LC9'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC10'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">type</span> <span class="o">=</span> <span class="ss">:success</span> <span class="k">if</span> <span class="n">type</span> <span class="o">==</span> <span class="ss">:notice</span></div><div class='line' id='LC11'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">type</span> <span class="o">=</span> <span class="ss">:error</span>   <span class="k">if</span> <span class="n">type</span> <span class="o">==</span> <span class="ss">:alert</span></div><div class='line' id='LC12'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">next</span> <span class="k">unless</span> <span class="no">ALERT_TYPES</span><span class="o">.</span><span class="n">include?</span><span class="p">(</span><span class="n">type</span><span class="p">)</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Array</span><span class="p">(</span><span class="n">message</span><span class="p">)</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">msg</span><span class="o">|</span></div><div class='line' id='LC15'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">text</span> <span class="o">=</span> <span class="n">content_tag</span><span class="p">(</span><span class="ss">:div</span><span class="p">,</span></div><div class='line' id='LC16'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">content_tag</span><span class="p">(</span><span class="ss">:button</span><span class="p">,</span> <span class="n">raw</span><span class="p">(</span><span class="s2">&quot;&amp;times;&quot;</span><span class="p">),</span> <span class="ss">:class</span> <span class="o">=&gt;</span> <span class="s2">&quot;close&quot;</span><span class="p">,</span> <span class="s2">&quot;data-dismiss&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;alert&quot;</span><span class="p">)</span> <span class="o">+</span></div><div class='line' id='LC17'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg</span><span class="o">.</span><span class="n">html_safe</span><span class="p">,</span> <span class="ss">:class</span> <span class="o">=&gt;</span> <span class="s2">&quot;alert fade in alert-</span><span class="si">#{</span><span class="n">type</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">)</span></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">flash_messages</span> <span class="o">&lt;&lt;</span> <span class="n">text</span> <span class="k">if</span> <span class="n">msg</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">flash_messages</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">)</span><span class="o">.</span><span class="n">html_safe</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC23'><span class="k">end</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;">
    <button type="submit" class="button">Go</button>
  </form>
</div>
          </div>
        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div>
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">Developer</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.04870s from fe18.rs.github.com">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/seyhunak/twitter-bootstrap-rails/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
    <span id='server_response_time' data-time='0.04908' data-host='fe18'></span>
    
  </body>
</html>

