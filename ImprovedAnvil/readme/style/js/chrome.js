/*-----------------------------------------------------------------------------------*/
/*	SHARED PAGE CHROME (header/nav/footer)
/*	Single source for the markup every page shares. Rendered with Handlebars and
/*	injected on DOM-ready; runs before ddsmoothmenu/selectnav initialize because
/*	this file is loaded in <head> ahead of scripts.js.
/*-----------------------------------------------------------------------------------*/

var IA_CHROME = {
  title: "Improved Anvil 7.0 Enhanced Edition",
  version: "7.0",
  nav: [
    {
      label: "Improved Anvil",
      href: "index.html",
      sub: [
        { label: "Enhanced Edition", href: "ee.html" },
        { label: "Installation", href: "installation.html" },
        { label: "For New Players", href: "new_player.html" },
        { label: "Version History", href: "versions.html" },
      ],
    },
    {
      label: "Content",
      sub: [
        { label: "Items", href: "items.html" },
        { label: "Adventures", href: "adventures.html" },
        { label: "Fixes & Tweaks", href: "fixes.html" },
        { label: "Kits", href: "kits.html" },
      ],
    },
    {
      label: "Tables",
      sub: [
        { label: "Level Progression", href: "levels.html" },
        { label: "THAC0 Progression", href: "thac0.html" },
      ],
    },
    {
      label: "Forum",
      href: "http://forums.blackwyrmlair.net/index.php?showforum=99",
      external: true,
    },
  ],
};

(function () {
  var headerTemplate = [
    '<h1 id="site-title">',
    '  <a href="index.html" rel="home">{{title}}</a>',
    "</h1>",
    '<nav id="access" class="access" role="navigation">',
    '  <div id="menu" class="menu">',
    '    <ul id="tiny">',
    "      {{#each nav}}",
    '      <li><a href="{{#if href}}{{href}}{{else}}#{{/if}}"{{#if external}} target="_blank"{{/if}}>{{label}}</a>',
    "        {{#if sub}}",
    "        <ul>",
    "          {{#each sub}}",
    '          <li><a href="{{href}}">{{label}}</a></li>',
    "          {{/each}}",
    "        </ul>",
    "        {{/if}}",
    "      </li>",
    "      {{/each}}",
    "    </ul>",
    "  </div>",
    '  <div class="triangle-l"></div>',
    '  <div class="triangle-r"></div>',
    "</nav>",
  ].join("\n");

  var footerTemplate = [
    '<div id="site-generator">',
    "  Improved Anvil {{version}}, by Sikret &amp; critto",
    "</div>",
  ].join("\n");

  jQuery(function ($) {
    $("#branding").html(Handlebars.compile(headerTemplate)(IA_CHROME));
    $("#colophon").html(Handlebars.compile(footerTemplate)(IA_CHROME));
  });
})();
