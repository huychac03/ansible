# ansible
Ansible for setup some server using Ansible playbooks like: Gitlab Runner, RabbitMQ, TimeScable and so on.

Lệnh chạy playbook:
Ví dụ: 
- ansible-playbook --extra-vars "RUNNER_AUTHENTICATION_TOKEN=AAAAAAAAAAAAAAAAAAAAAAAAA NUMBER_OF_CONCURRENT=6" -i inventory.ini --private-key=/keys/emddi-devops.pem main.yml

Ta có thể truyền biến Tokens, số lượng CONCURRENT và Gitlab URL vào 

Variables:
   - RUNNER_AUTHENTICATION_TOKEN_1 : cho runner docker
   - RUNNER_AUTHENTICATION_TOKEN_2 : cho runner shell
   - NUMBER_OF_CONCURRENT
   - GITLAB_URL

Note: 
   - Số lượng CONCURRENT mặc định sẽ là 1 
   - Mỗi 1 loại runner ta phải để cấp cho nó 1 RUNNER_AUTHENTICATION_TOKEN riêng để nó có thể có riêng tag. 
   - Thường mình sẽ chỉ cần dùng runner Shell vì nó sẽ nhanh và tiện hơn runner Docker. Khi cài như vậy, ta chỉ đơn giản cần xóa đi 2 block Regist Docker runner và block sửa volume là được.  
