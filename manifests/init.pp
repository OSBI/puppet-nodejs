class nodejs {

        apt::sources_list { "npm":
                content => "deb http://ppa.launchpad.net/gias-kay-lee/npm/ubuntu natty main"
        }

		apt::key { "FD4B2702":
			ensure => present,
		}
		
        apt::sources_list { "node":
                content => "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu natty main"
        }
        
        apt::key { "C7917B12":
        	ensure => present
        }
                
        package { "npm" :
        	ensure => present,        
        	require => [Apt::Sources_list["npm"], Apt::Key["FD4B2702"]],
        }

		package { "nodejs" :
        	ensure => present,
        	require => [Apt::Sources_list["node"], Apt::Key["C7917B12"]],   
        }
}