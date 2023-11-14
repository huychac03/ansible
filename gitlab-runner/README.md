# ansible
Ansible playbooks for setup some servers

Lệnh chạy playbook:
- ansible-playbook --extra-vars "RUNNER_AUTHENTICATION_TOKEN=AAAAAAAAAAAAAAAAAAAAAAAAA" -i inventory.ini deploy-gitlab-runner.yml

Ta có thể truyền biến token của các Projects, số lượng CONCURRENT và Gitlab URL vào 

Variables:
    - RUNNER_AUTHENTICATION_TOKEN
    - NUMBER_OF_CONCURRENT
    - GITLAB_URL

Note: 
    - Số lượng CONCURRENT mặc định sẽ là 1
    - Khi tăng số lượng Runner ta cũng sẽ phải tạo thêm biến "RUNNER_AUTHENTICATION_TOKEN" tương ứng với Runner đó
