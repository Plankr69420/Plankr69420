import discord
from easy_json_database import Database

devMode = True if "__E_IS_DEV" in globals() and __E_IS_DEV else False

def delay(ms):
    return asyncio.sleep(ms / 1000)

s4d = {
    "Discord": discord,
    "database": Database(f"{S4D_NATIVE_GET_PATH}/db.json" if devMode else "./db.json"),
    "joiningMember": None,
    "reply": None,
    "tokenInvalid": False,
    "tokenError": None,
    "checkMessageExists": lambda: None if s4d.client else raise Exception('You cannot perform message operations without a Discord.js client') if not s4d.client.readyTimestamp else raise Exception('You cannot perform message operations while the bot is not connected to the Discord API')
}

s4d.client = s4d["Discord"].Client(intents=discord.Intents.all(), partials=["REACTION"])

async def login():
    try:
        await s4d.client.login('MTE3MDI3NjI2MjYyMzg1MDUwNg.G0TYfQ.jc0Zkl8topEGbcrf-sVF1L6-U5Df2Ho1V6FKvA')
    except Exception as e:
        s4d.tokenInvalid = True
        s4d.tokenError = e

@s4d.client.event
async def on_message(s4dmessage):
    if s4dmessage.content == '!bake':
        await s4dmessage.channel.send('🎂')

await login()
s4dimport discord
from easy_json_database import Database

devMode = True if "__E_IS_DEV" in globals() and __E_IS_DEV else False

def delay(ms):
    return asyncio.sleep(ms / 1000)

s4d = {
    "Discord": discord,
    "database": Database(f"{S4D_NATIVE_GET_PATH}/db.json" if devMode else "./db.json"),
    "joiningMember": None,
    "reply": None,
    "tokenInvalid": False,
    "tokenError": None,
    "checkMessageExists": lambda: None if s4d.client else raise Exception('You cannot perform message operations without a Discord.js client') if not s4d.client.readyTimestamp else raise Exception('You cannot perform message operations while the bot is not connected to the Discord API')
}

s4d.client = s4d["Discord"].Client(intents=discord.Intents.all(), partials=["REACTION"])

async def login():
    try:
        await s4d.client.login('MTE3MDI3NjI2MjYyMzg1MDUwNg.G0TYfQ.jc0Zkl8topEGbcrf-sVF1L6-U5Df2Ho1V6FKvA')
    except Exception as e:
        s4d.tokenInvalid = True
        s4d.tokenError = e

@s4d.client.event
async def on_message(s4dmessage):
    if s4dmessage.content == '!bake':
        await s4dmessage.channel.send('🎂')

await login()
s4d
