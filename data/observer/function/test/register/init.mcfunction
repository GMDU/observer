data modify storage observer:test register set value {}

function observer:test/register/validate/init

execute if data storage observer:test register.error run return run function observer:test/register/error

data modify storage observer:test registry append from storage observer:api/test/register target