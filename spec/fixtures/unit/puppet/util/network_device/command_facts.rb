module CommandFacts

SWITCHSHOW_HASH = {
    'Switch Name' => 'TOP_6510',
    'Switch State' => 'Online',
    'Switch Domain' => '1',
    'Switch Wwn' => '10:00:00:27:f8:61:7d:ba',
    'Zone Config' => 'ON (Top_Config)',
    'Switch Beacon' => 'OFF',
    'Switch Role' => 'Principal',
    'Switch Mode' => 'Native',
    'FC Router' => 'OFF',
    'FC Router BB Fabric ID' => '1'
  }

  CHASSISSHOW_HASH = {
    'Serial Number' => 'BRW2508J00H',
    'Factory Serial Number' => 'BRW2508J00H'
  }

  IPADDRESSSHOW_HASH = {
    'Ethernet IP Address' => '172.17.10.15',
    'Ethernet Subnetmask' => '255.255.0.0',
    'Gateway IP Address' => '172.17.0.1'
  }

 DEFAULTVALUE_HASH = {
    'Manufacturer' => 'Brocade',
    'Protocols Enabled' => 'FC',
    'Boot Image' => 'Not Available',
    'Processor' => 'Not Available',
    'Port Channels' => 'Not Available',
    'Port Channel Status' => 'Not Available'
  }
  
SWITCHSTATUSSHOW_HASH = {
'Switch Health Status' => 'HEALTHY'
}


MEMSHOW_HASH = {
'Memory(bytes)' => '1048674304'
}

VERSIONSHOW_HASH = {
"Fabric Os" => "v7.2.0a"
}

ZONESHOW_HASH = {
"Zone_Config_3" => "yahoo",
}


  MODEL_HASH = {
    '2.x' => 'Brocade 2010',
    '3.x' => 'Brocade 2400',
    '6.x' => 'Brocade 2800',
    '9.x' => 'Brocade 3800 (Cylon)',
    '10.x' => 'Brocade 12000 (Ulysses)',
    '12.x' => 'Brocade 3900 (Terminator)',
    '16.x' => 'Brocade 3200 (Mojo)',
    '21.x' => 'Brocade 24000 (Meteor)',
    '22.x' => 'Brocade 3016 (Blazer)',
    '26.x' => 'Brocade 3850 (Dazzler)',
    '27.x' => 'Brocade 3250 (DazzlerJR)',
    '32.x' => 'Brocade 4100 (Pulsar)',
    '34.x' => 'Brocade 200E (Stealth)',
    '37.x' => 'Brocade 4020 (Blazer2)',
    '38.x' => 'Brocade AP7420 (Mars)',
    '42.x' => 'Brocade 48000 (Saturn)',
    '43.x' => 'Brocade 4024',
    '44.x' => 'Brocade 4900 (Viking)',
    '46.x' => 'Brocade 7500 (Sprint)',
    '58.x' => 'Brocade 5000 (Pulsar2)',
    '62.x' => 'Brocade DCX',
    '64.x' => 'Brocade 5300',
    '66.x' => 'Brocade 5100',
    '67.x' => 'Brocade Encryption Switch',
    '71.x' => 'Brocade 300',
    '73.x' => 'Brocade 5470 (Blazer3)',
    '76.x' => 'Brocade 8000',
    '77.x' => 'Brocade DCX-4S',
    '83.x' => 'Brocade 7800',
    '121.x' => 'Brocade DCX8510-4',
    '120.x' => 'Brocade DCX8510-8',
    '109.x' => 'Brocade 6510'
         
   }

def validate_facts(hash_name,factObj)
	hash_name.keys.each do |key|
        factObj.retrieve[key].should include(hash_name[key])
        end
end

def facts_exists_validate(hash_name,fact_hash)
        hash_name.keys.each do |key|
        fact_hash[key].should_not be_empty
	end

        end

end

