local sproto = require "sproto"
local core = require "sproto.core"
local print_r = require "print_r"

local sprotoParse = sproto.parse [[
.Person {
	name 0 : string
	id 1 : integer
	email 2 : string

	.PhoneNumber {
		number 0 : string
		type 1 : integer
	}

	phone 3 : *PhoneNumber
}

.AddressBook {
	person 0 : *Person(id)
	others 1 : *Person
}
]]

local personDefault=sprotoParse:default "Person"
print("default tabel for Person:")
print_r(personDefault)

local addressBook=
{
	person=
	{
		[1]={name="captain1",id=1,email="1111@qq.com",phone=
		{
			{number="137000001",type=1},
			{number="137000002",type=2},
		}},
		[2]={name="captain2",id=2,email="2222@qq.com",phone=
		{
			{number="138000001",type=1},
			{number="138000002",type=2},
		}},
	},
	others=
	{
		[1]={name="other",id=1,email="others@qq.com",phone=
		{
			{number="139000001",type=1}
		}},
	}
}

local  encodeData = sprotoParse:encode("AddressBook",addressBook)
local decodeData=sprotoParse:decode("AddressBook",encodeData)

print("decodeData:")
print_r(decodeData)
