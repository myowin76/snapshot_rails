class Admin::Setting < ActiveRecord::Base

	serialize :value


  cattr_accessor :cache, :yaml_settings
  @@cache = {}.with_indifferent_access

  def clear_cache!
    @@cache = {}.with_indifferent_access
  end
  # Get setting value (from database)
  #-------------------------------------------------------------------
  def [](name)
    # Return value if cached
    return cache[name] if cache.has_key?(name)
    # Check database
    if database_and_table_exists?
      if setting = self.find_by_name(name.to_s)
        unless setting.value.nil?
          return cache[name] = setting.value
        end
      end
    end
    # Check YAML settings
    # if yaml_settings.has_key?(name)
    #   return cache[name] = yaml_settings[name]
    # end
  end


  # Set setting value
  #-------------------------------------------------------------------
  def []=(name, value)
    return nil unless database_and_table_exists?
    setting = self.find_by_name(name.to_s) || self.new(:name => name)
    setting.value = value
    setting.save
    cache[name] = value
  end
end
