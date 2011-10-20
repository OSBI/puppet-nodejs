class nodejs {

        apt::sources_list { "npm":
                content => "deb http://ppa.launchpad.net/gias-kay-lee/npm/ubuntu natty main"
        }

        apt::sources_list { "node":
                content => "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu natty main"
        }
                
        package { "npm" :
        	ensure => present,        
        	require => apt::Sources_list["npm"],
        }

		package { "nodejs" :
        	ensure => present,
        	require => Apt::Sources_list["node"],        
        }
}