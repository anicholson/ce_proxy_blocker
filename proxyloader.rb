#!/usr/bin/env ruby

require 'bundler/setup'

require 'capybara'
require 'capybara/webkit'
require 'capybara/dsl'

<<-COMMENT
*.www.fancyproxy.eu
*.proxyfrance.fr
*.www.notblock.racing
*.bestproxy4u.ml
*.www.shinyproxy.com
*.openwebsite.work
*.elamal.pro
*.bravoproxy.gq
*.isurfer.eu
*.www.proxy-browser-online.net
*.buqd.xyz
*.www.chocolateproxy.eu
*.ironproxy.top
*.pikoslol.ml
*.proxyarab.com
*.www.shinyproxy.eu
*.www.proxygratis.net
*.bypassschool.ga
*.www.ghostproxy.eu
*.345proxy.ml
*.surf4free.ml
*.www.webprotect.pw
*.www.yxorproxy.com
*.fakeip.cf
*.bestproxy.top
*.www.notblock.racing
*.www.districtnewyork.com
*.tomatoproxy.eu
*.securebypassproxy.gq
*.arrestoo.cf
*.www.maddw.com
*.euproxy.org
*.www.netfeed.pw
*.softvpn.ml
*.buqd.xyz
*.bestproxy.bid
*.webproxyserver.info
*.bestproxyserver.info
*.phproxy.work
*.abuomarlive.net
*.88proxy.xyz
*.pr0web.work
*.bestproxy4u.ml
*.multiwebproxy.com
*.odsh.win
*.hideyoufree.cf
*.www.ghostproxy.eu
*.xtcsoul.net
*.otlp.xyz
*.easybrowsing.top
*.firesurfer.ga
*.bvpn.win
*.time2hide.one
*.cloudbypasser.ml
*.fermatfibonacci.info
*.pxfm.xyz
*.europroxy.pw
*.proxyfree.website
*.yavz.xyz
*.phonepiwman.top
*.trucool.ml
*.surf4free.ml
*.access4all.top
*.www.myproxy.bid
*.www.chocolateproxy.eu
*.fasloging.ml
*.superfastsurf.top
*.showvision.info
*.www.gbqr.xyz
*.www.surfingonmyown.com
*.appleleaf.cf
*.topwebproxy.com
*.www.cromcast.net
*.678proxy.ml
*.www.popupfreeproxy.eu
*.ironproxy.top
*.www.hollandproxy.eu
*.www.proxy-browser-online.net
*.brokenleg.cf
*.flash-proxy.com
*.securesurf.ml
*.pzou.win
*.www.freewebproxyserver.pw
*.webproxy.to
*.webrowserfree.top
*.worka.work
*.0proxy.space
*.voslokj.ml
*.booklof.cf
*.8proxy.space
*.charlieproxy.ml
*.www.superproxy.eu
*.bravoproxy.gq
*.www.myfastproxy.eu
*.www.unblock-youtube.eu
*.proxyforeu.org
*.netherlandsproxyserver.club
*.www.web-site.review
*.superproxy.win
*.sokrat.ml
*.protectfreedom.top
*.www.proxygratis.net
*.1luvproxy.cf
*.topproxy.ml
*.bestfreessl.top
*.www.hidesurfproxy.ml
*.dontblameme.ga
*.openwebsite.work
*.www.proxymist.com
*.www.bananaproxy.eu
*.konchap.com
*.accessproxy.org
*.fastproxyweb.com
*.easyhide.top
*.5proxy.space
*.pikoslol.ml
*.afww.xyz
*.imtheone.top
*.surfandgo.win
*.proxyisp.com
*.launchitnow.top
*.freesite.work
*.nomorewait.top
*.hidemefast.top
*.kproxy.info
*.secretproxy.org
*.4freeproxyserver.com
*.proxyfree.party
*.franceproxy.pw
*.456proxy.ml
*.www.ooproxy.pw
*.www.hispaproxy.eu
*.androidnicheman.info
*.fakeip.cf
*.unlockus.ga
*.buka.link
*.cijq.xyz
*.www.yxorproxy.com
*.www.webprotect.pw
*.lighitspeedproxy.top
*.dacd.win
*.invisiblesurf.review
*.newip.win
*.www.proxyzan.info
*.www.gizlen.net
*.proxyfree.asia
*.unblockwebsites.net
*.openall.ml
*.789proxy.cf
*.freeserverproyx.ml
*.www.proxygratis.es
*.www.fancyproxy.eu
*.pouf.win
*.supervpn.top
*.www.predecessor.info
*.www.shinyproxy.eu
*.freevpn4u.ml
*.wordwildprox.ml
*.fedexy.ga
*.kifkifgo.ml
*.youtubeunblocker.us
*.mainproxy.pw
*.newidentity.win
*.bsake.com
*.useitfree.top
*.avpn.win
*.www.befreeproxy.com
*.proxyeuro.pw
*.takomakovpn.top/
*.www.stealthproxy.eu
*.345proxy.ml
*.www.proproxy.me
*.proxyfrance.fr
*.faridy.ga
*.surfingfree.ml
*.07browsethe.website
*.daily-web-proxy.blogspot.com.au
*.hkwebproxy.com
*.proxynator.com
proxynator.com
*.sweetproxies.com
*.proxidox.com
*.proximox.com
*.proxiza.com
*.airtelproxy.com
*.proxy-secure.com
*.imediaproxy.com
*.askproxy.com
*.geek-proxy.com
*.java-proxy.com
*.ksproxy.com
*.torproxy.be
*.thtproxy.com
*.swatproxy.com
*.proxy-http.com
*.sokoproxy.com
*.weboroxy.com
*.2014proxy.com
*.topoproxy.com
*.byproxy.be
*.proxybrid.com
*.sporoxy.com
*.inbloxy.com
*.ksproxy.com
*.911proxy.net
*.traderpro.be
*.fastproxy.be
*.the-firewall.com
*.allonokia.net
*.youtube-proxy.info
*.yallaface.net
*.inproxy.info
*.ipunblocker.net
*.azproxy.net
*.zendproxy.net
*.katavax.com
*.dayproxy.net
kritovana.urhostz.org
p3rso.ns11-wistee.fr
*.proxysitelist.net
*.mejorproxy.com
*.schoolbypasser.gq
*.starprivacy.com
*.surfsafely.com
www.filterbypass.me
www.proxfree.com/proxy
free-proxyserver.com
unblock-proxy.com
www.proxysite.com

COMMENT

BASE_URL = 'http://covenanteyes.com/my_account'
SERVERS  = %w[
Hidemyass.com
Proxify.com
freeopenproxy.com
proxy2014.net
unblockyoutubefree.net
www.kproxy.com
www.blewpass.com
zendproxy.com
4everproxy.com
www.unblockmyweb.com
youtubeunblockproxy.com
vtunnel.com
proxy.org
newipnow.com
ninjacloak.com
anonymouse.org
www.anonymizer.com
defilter.us
freeproxyserver.uk
freeyouproxytube.com
webproxy.net
workingproxy.net
freeyoutube.net
www.vobas.com
www.dontfilter.us
fastusaproxy.com
youtubefreeproxy.net
proxyo.info
rapidproxy.us
unblockyoutubeatschool.com
hidingyour.info
unblocker.us
quickproxy.co.uk
thebestproxy.info
ecxs.asia
justproxy.co.uk
proxy-2014.com
vpnbrowse.com
proxyone.net
webproxyfree.net
cantblockthis.org
hidetheinternet.com
greatestfreeproxy.com
www.proxay.co.uk
viewyoutube.net
pro-unblock.com
hidemytraxproxy.ca
workingproxy.net
stardollproxy.com
strangermeetup.com
]

servers = SERVERS

Capybara.javascript_driver = :webkit
Capybara.default_driver    = :webkit

Capybara.configure do |config|
  config.run_server = false
  config.app_host   = 'https://covenanteyes.com/'
end

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
end

include Capybara::DSL

visit '/myaccount/login/'

page.within('#sign_in_form') do
  fill_in "id_sign_in_username", with: ENV['CE_USERNAME']
  fill_in "id_sign_in_password", with: ENV['CE_PASSWORD']

  click_on "Sign in"
end

visit "/myaccount/filter/users/#{ENV['CE_FILTER_USERNAME']}/allow-block-lists"


page.within('.block_list') do
  servers.each do |server|
    begin
      fill_in 'filter_settings_add_blocked', with: server
      click_on "Add to List"
      puts server
      sleep 0.25
    rescue Capybara::Webkit::NodeNotAttachedError => e
      sleep 1
      retry
    end
  end
end

page.save_and_open_screenshot("./result.png")
