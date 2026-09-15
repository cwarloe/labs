import os
import winreg
import xxhash
from collections import defaultdict

def get_cloud_paths():
    paths = []
    try:
        with winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Software\Microsoft\OneDrive") as key:
            paths.append(winreg.QueryValueEx(key, "UserFolder")[0])
    except OSError:
        paths.append(os.path.join(os.environ['USERPROFILE'], 'OneDrive'))
    try:
        with winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Software\Google\DriveFS\Share") as key:
            mount_point = winreg.QueryValueEx(key, "MountPoint")[0]
            paths.append(os.path.join(mount_point, "My Drive"))
    except OSError:
        pass
    return [p for p in paths if os.path.exists(p)]

def find_duplicates(search_dirs):
    size_map = defaultdict(list)
    for folder in search_dirs:
        print(f"Scanning: {folder}")
        for root, _, files in os.walk(folder):
            for name in files:
                path = os.path.join(root, name)
                try:
                    size = os.path.getsize(path)
                    size_map[size].append(path)
                except OSError: continue
    duplicates = defaultdict(list)
    for size, paths in size_map.items():
        if len(paths) > 1:
            for path in paths:
                hasher = xxhash.xxh3_128()
                try:
                    with open(path, "rb") as f:
                        while chunk := f.read(65536):
                            hasher.update(chunk)
                    duplicates[hasher.hexdigest()].append(path)
                except OSError: continue
    return {h: p for h, p in duplicates.items() if len(p) > 1}

cloud_folders = get_cloud_paths()
dup_results = find_duplicates(cloud_folders)
for h, paths in dup_results.items():
    print(f"\nMatch found ({h}):\n  " + "\n  ".join(paths))
