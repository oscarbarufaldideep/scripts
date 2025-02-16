import os
import webbrowser
from locust import HttpUser, TaskSet, task, between

# Pergunta o endereço da aplicação ao usuário
host_url = input("Digite o endereço da aplicação para teste de carga (ex: https://exemplo.com): ")

class UserBehavior(TaskSet):
    headers = {"Content-Type": "application/json"}

    @task(3)
    def get_homepage(self):
        self.client.get("/", headers=self.headers)

    @task(2)
    def get_status(self):
        self.client.get("/status", headers=self.headers)

    @task(1)
    def post_data(self):
        payload = {"username": "test_user", "password": "secure123"}
        self.client.post("/login", json=payload, headers=self.headers)

    @task(1)
    def simulate_user_flow(self):
        """Simula um fluxo de usuário real"""
        self.client.get("/products", headers=self.headers)
        self.client.get("/products/1", headers=self.headers)
        self.client.post("/cart", json={"product_id": 1, "quantity": 2}, headers=self.headers)
        self.client.post("/checkout", headers=self.headers)

class WebsiteUser(HttpUser):
    tasks = [UserBehavior]
    wait_time = between(1, 5)
    host = host_url  # Usa o endereço informado pelo usuário

if __name__ == "__main__":
    print(f"Iniciando teste de carga no endereço: {host_url}")
    os.system(f"locust -f {__file__} &")  # Inicia o Locust em segundo plano
    webbrowser.open("http://localhost:8089")  # Abre a interface web automaticamente
