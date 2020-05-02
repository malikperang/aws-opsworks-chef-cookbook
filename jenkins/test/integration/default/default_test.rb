# InSpec test for recipe jenkins::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe service("jenkins") do
  it { should be_installed}
end

describe service("nginx") do
  it { should be_installed}
end