Facter.add(:bnsgwms_product_environment) do
  setcode do
    if File.exist? "/etc/.host.product.env"
      Facter::Util::Resolution.exec("cat /etc/.host.product.env 2> /dev/null").chomp
    else
      "development"
    end
  end
end
