function surf --wraps='sudo openvpn /etc/openvpn/jp.ovpn' --description 'alias surf=sudo openvpn /etc/openvpn/jp.ovpn'
  sudo openvpn /etc/openvpn/jp.ovpn $argv; 
end
