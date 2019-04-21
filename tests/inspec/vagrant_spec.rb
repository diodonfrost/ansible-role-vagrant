# Check if Vagrant is functionnal

control 'vagrant-01' do
  impact 1.0
  title 'Vagrant install'
  desc 'Vagrant should be functionnal'
  describe command('vagrant version') do
    its('exit_status') { should eq 0 }
  end
end
