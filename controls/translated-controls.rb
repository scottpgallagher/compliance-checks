# encoding: UTF-8
control "local-file-check" do
  title "Compliance check for local file."
  desc  "
    Check local file for contents.
  "
  impact 0.5
    describe file("/home/ec2-user/chef.txt") do
      its("content") { should match("Chef is good.") }
    end
end