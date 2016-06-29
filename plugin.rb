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

after_initialize do
  CurrentUserSerializer.class_eval do
    attributes :badges

    # Comment out unless manual record retrieval
    # def badges
    #   "badges"
    # end
  end
end

