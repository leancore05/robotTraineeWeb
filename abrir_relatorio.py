import webbrowser
import pyautogui
import os
import time

def abrir_relatorio(arquivo):
    """Abre o arquivo HTML no navegador padrão."""
    caminho_completo = os.path.abspath(arquivo)
    webbrowser.open_new(f"file://{caminho_completo}")

if __name__ == "__main__":
    abrir_relatorio("log.html")  # Ou report.html
    time.sleep(2)  # Aguarda a aba abrir
    pyautogui.hotkey("ctrl", "w")