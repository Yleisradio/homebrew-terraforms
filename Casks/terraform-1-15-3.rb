cask "terraform-1-15-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.3"
  sha256 arm:   "b97101c62c11eebd176e83cd42a313336200d54fdd18ce7770f65a5bfb0ab098",
         intel: "448e89a455e854941bd7e1396ba6ca46e92dd7e0ed1cc11d4da4cab637606d8a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
