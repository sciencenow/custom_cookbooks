node[:deploy].each do |application, deploy|
  cron_env = {'PATH' => '/usr/local/bin:$PATH'}
  cron 'daily data backup cron' do
    environment cron_env
    hour 17
    minute 0
    command "RAILS_ENV=#{deploy[:rails_env]} cd #{deploy[:deploy_to]}/current && bundle exec rake data_backup:backup"
  end
end
