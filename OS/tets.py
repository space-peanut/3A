import os
import binascii
import hashlib
from base64 import b64encode, b64decode
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad

with open(os.path.expanduser('~/.aes/AES_KEY'), 'r') as file:
    key_hex, salt_hex, iv_hex = file.read().splitlines()

# Convert key, salt, and IV from hex to bytes
key = binascii.unhexlify(key_hex)
salt = binascii.unhexlify(salt_hex)
iv = binascii.unhexlify(iv_hex)

def encrypt(message):
    # Read key, salt, and IV from file

    # Create new AES cipher object
    cipher = AES.new(key, AES.MODE_CBC, iv=iv)

    # Encrypt the message
    encrypted_message = cipher.encrypt(pad(message.encode(), AES.block_size))

    return b64encode(encrypted_message).decode('utf-8')

def decrypt(encrypted_message):
    # Decode the encrypted message from base64 to bytes
    encrypted_message_bytes = b64decode(encrypted_message)

    # Create new AES cipher object
    cipher = AES.new(key, AES.MODE_CBC, iv=iv)

    # Decrypt the encrypted message
    decrypted_message = unpad(cipher.decrypt(encrypted_message_bytes), AES.block_size)

    return decrypted_message.decode('utf-8')