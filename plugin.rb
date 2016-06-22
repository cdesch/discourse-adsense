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

