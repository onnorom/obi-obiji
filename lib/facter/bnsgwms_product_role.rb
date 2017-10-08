Facter.add(:bnsgwms_product_role) do
  setcode do
    if File.exist? "/etc/.host.product.role"
      Facter::Util::Resolution.exec("cat /etc/.host.product.role 2> /dev/null").chomp
    else
      "none"
    end
  end
end
