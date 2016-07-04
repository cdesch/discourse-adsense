# name: Discourse Adsense
# about: Adds Adsense to Discourse
# version: 1.3.1
# author: DiscourseHosting.com
# url: https://www.github.com/discoursehosting/discourse-adsense
# Supported Discourse version: v1.3 and up

register_css <<CSS

.adsense {
  text-align: center;
  padding: 3px;
  margin-bottom: 10px;
}

.google-adsense .google-adsense-label {
  width: 728px;
  margin: 0 auto;
}

.google-adsense .google-adsense-label h2 {
  margin: 4px 0 !important;
  color: #858a8c;
  text-transform: uppercase;
  font-size: 12px;
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: normal;
}

.google-adsense .google-adsense-content {
  margin: 0 auto;
}

CSS


#enabled_site_setting :discourse_ads_enabled

load File.expand_path('../lib/ad_level.rb', __FILE__)
load File.expand_path('../app/models/ad_selection_setting.rb', __FILE__)

after_initialize do
  #require_dependency File.expand_path('app/models/ad_selection_setting.rb', __FILE__)
  #require_dependency File.expand_path('../app/models/ad_selection_setting.rb', __FILE__)


  CurrentUserSerializer.class_eval do
    attributes :badges

  end
end

#Discourse::Application.routes.append do
#  mount ::DiscourseAds::Engine, at: '/admin/plugins/discourse_ads'
#end
