class profile::ssh_server {
    package {'openssh-server':
            ensure => present,
    }
    service {'sshd':
            ensure => 'running',
            enable => 'true', 
    }
    ssh_authorized_key {'root@master.puppet.vm':
            ensure => present,
            user => 'root',
            type => 'ssh-rsa',
            key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5w6VH2uz1vdMOQBmMNYRVc386i5CDmrIw5+sdWqeP55Xb9+7TjJpuk2TymCXNHyqvOkfpHkZBxxLygDKQFdFtFjEAP1BWiUn1DFiOu0XFQJnIDP8bVSwSQNqtOlhyF04Teu8jukkv8Chwd8TFuiazkyOQCMxjUt/Nvdv45Vw5pYjqT5WxH644vVxxycYRNPwAtfLLLqq0OZU3G7wKReRsGzKFUwRwNhfqcSKgGsOoC+ib0zsIjB9OGh9xT3X6e3nBEMcEEwttXxeKv9/aU29vGGhsAB+k8BYkdZffB428JRhGudc3gEO6xhs4tdWTCcj50ua9ZVJ1q7OpI7h795xB',
            }
}
           
