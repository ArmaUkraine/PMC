import pathlib
from bs4 import BeautifulSoup
import pprint

PROJECT_PATH = pathlib.Path(".").absolute()
CLIENT_PATH = pathlib.Path("D:\\SteamLibrary\\steamapps\\common\\Arma 3")
TOOLS_PATH = pathlib.Path("D:\\SteamLibrary\\steamapps\\common\\Arma 3 Tools")
SERVER_PATH = pathlib.Path("D:\\SteamLibrary\\steamapps\\common\\Arma 3 Server")
SERVER_PROFILE_PATH = pathlib.Path(PROJECT_PATH / "server_profile")
SERVER_SETTINGS_PATH = pathlib.Path(PROJECT_PATH / "server.cfg")

with open("preset.html") as fh:
    # Parse preset.
    soup = BeautifulSoup(fh, "html.parser")
    mod_names = []
    for tr in soup.find_all("tr"):
        mod_name = tr.find_all("td")[0].text
        mod_names.append(mod_name)

    # Prepare list of mods.
    MODS = [f"p:\\workshop\@{x}" for x in mod_names]
    pprint.pprint(MODS)
