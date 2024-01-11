platform "ubuntu-24.04-aarch64" do |plat|
  plat.inherit_from_default
  packages = %w(git)
  plat.provision_with "export DEBIAN_FRONTEND=noninteractive; apt-get update -qq; apt-get install -qy --no-install-recommends #{packages.join(' ')}"
end
