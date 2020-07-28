json.users @users.map{|user| ({
    base64: user.base64,
    note: user.note,
    username: user.username,
    ip_address: user.ip_address,
    machine_name: user.machine_name
})}