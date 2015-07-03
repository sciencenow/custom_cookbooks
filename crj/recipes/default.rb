node[:deploy].each do |application, deploy|
  directory "#{deploy[:deploy_to]}/shared/config" do
      owner 'deploy'
      group 'www-data'
      mode 0774
      recursive true
      action :create
    end

  file File.join(deploy[:deploy_to], 'shared', 'config', 'service_env_variables.yml') do
    content YAML.dump(node[:service_env_variables][application].to_hash)
  end

  cron_env = {'PATH' => '/usr/local/bin:$PATH'}
  cron 'daily data backup cron' do
    environment cron_env
    hour 17
    minute 0
    command "RAILS_ENV=#{deploy[:rails_env]} cd #{deploy[:deploy_to]}/current && bundle exec rake data_backup:backup"
  end
end
