#!/bin/bash
cd "${BASH_SOURCE%/*}" || exit

pubkey=$(cat pubkey.txt)

coin="VRSC"
daemon="${HOME}/VerusCoin/src/verusd -pubkey=${pubkey}"
daemon_process_regex="verusd.*\-pubkey"
cli="komodo-cli -ac_name=VRSC"
wallet_file="${HOME}/.komodo/VRSC/wallet.dat"
nn_address=$(cat kmd_address.txt)

./walletreset.sh \
  "${coin}" \
  "${daemon}" \
  "${daemon_process_regex}" \
  "${cli}" \
  "${wallet_file}" \
  "${nn_address}"
