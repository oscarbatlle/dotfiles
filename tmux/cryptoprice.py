#!/usr/bin/env python3.5
import requests
import locale

locale.setlocale(locale.LC_ALL, '')

eth = requests.get(
    'https://coinmarketcap-nexuist.rhcloud.com/api/eth'
).json()['price']['usd']

btc = requests.get(
    'https://coinmarketcap-nexuist.rhcloud.com/api/btc'
).json()['price']['usd']

currency = lambda d: locale.currency(d, grouping=True)

print('ETH: ' + currency(eth) + ' | BTC: ' + currency(btc))
