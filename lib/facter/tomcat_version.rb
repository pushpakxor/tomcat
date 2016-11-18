# tomcat_version.rb

Facter.add("tomcat8version") do
        setcode do
                Facter::Util::Resolution.exec('/usr/bin/dpkg-query -W -f=\'${Version}\' tomcat8 2>/dev/null')
        end
end

Facter.add("tomcat7version") do
	setcode do
		Facter::Util::Resolution.exec('/usr/bin/dpkg-query -W -f=\'${Version}\' tomcat7 2>/dev/null')
	end
end

Facter.add("tomcat6version") do
        setcode do
                Facter::Util::Resolution.exec('/usr/bin/dpkg-query -W -f=\'${Version}\' tomcat6 2>/dev/null')
        end
end
