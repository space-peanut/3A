import hashlib

def generate_hash(path):
    hasher = hashlib.sha256()

    with open(path, "rb") as file:
        for block in iter(lambda: file.read(4096), b""):
            hasher.update(block)

    return hasher.hexdigest()

def save_hash(hashValue, outputFile):
    with open(outputFile, "w") as file:
        file.write(hashValue)

if __name__ == "__main__":
    path = "./protoCrypto/tdpastp1/fichier.txt"
    hashValue = generate_hash(path)
    print("Hash:", hashValue)