# This is an example CouchDB model file.
class User < CouchRest::Model::Base

  use_database CouchRest.database!((SiteConfig.url_base_db || '') + SiteConfig.db_name)


end
