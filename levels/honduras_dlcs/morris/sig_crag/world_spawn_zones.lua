local path_markers = {
	{
		kind = "good",
		main_path_index = 1,
		crossroads = "",
		marker_type = "normal",
		order = 1,
		pos = {
			2.5,
			-6,
			0.5
		}
	},
	{
		kind = "good",
		main_path_index = 1,
		crossroads = "",
		marker_type = "normal",
		order = 10,
		pos = {
			2.5,
			1.5,
			0.5
		}
	}
}
local main_paths = {
	{
		path_length = 7.5,
		travel_dist = {
			[1.0] = 0,
			[2.0] = 7.5
		},
		nodes = {
			{
				2.5,
				-6,
				0.5002343654632568
			},
			{
				2.5,
				1.5,
				0.5002343654632568
			}
		}
	}
}
local crossroads = {}
local zones = {
	{
		parent_zone_id = 0,
		type = "island",
		sub_areas = {
			[1.0] = 83.39099654555321
		},
		sub = {
			{
				1,
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				9,
				10,
				11,
				12,
				13,
				14,
				15,
				16,
				17,
				18,
				19,
				20,
				21,
				22,
				23,
				24,
				25,
				26,
				27,
				28,
				29,
				30,
				31,
				32,
				33,
				34,
				35,
				36,
				37,
				38,
				39,
				40,
				41,
				42,
				43,
				44,
				45,
				46,
				47,
				48,
				49,
				50,
				51,
				52,
				53,
				54,
				55,
				56,
				57,
				58,
				59,
				60,
				61,
				62,
				63,
				64,
				65,
				66,
				67,
				68,
				69,
				70,
				71,
				72,
				73,
				74
			}
		}
	}
}
local cover_points = {}
local position_lookup = {
	{
		3.5783333778381348,
		-6.555000305175781,
		0.5002343654632568
	},
	{
		4.179999828338623,
		-7.125,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		-5.5416669845581055,
		0.5002343654632568
	},
	{
		2.565000057220459,
		-6.555000305175781,
		0.5002343654632568
	},
	{
		3.6416664123535156,
		-7.694999694824219,
		0.5002343654632568
	},
	{
		4.7816667556762695,
		-6.65000057220459,
		0.5002343654632568
	},
	{
		2.565000057220459,
		-5.5416669845581055,
		0.5002343654632568
	},
	{
		4.116666793823242,
		-4.52833366394043,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		-7.03000020980835,
		0.5002343654632568
	},
	{
		2.0266666412353516,
		-7.599999904632568,
		0.5002343654632568
	},
	{
		4.7183332443237305,
		-5.066666603088379,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		-5.003333568572998,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		-3.515000104904175,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		-6.555000305175781,
		0.5002343654632568
	},
	{
		1.0133333206176758,
		-7.694999694824219,
		0.5002343654632568
	},
	{
		4.7816667556762695,
		-4.053333282470703,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		-3.9900002479553223,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		-5.5416669845581055,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		-2.501666784286499,
		0.5002343654632568
	},
	{
		2.565000057220459,
		-3.515000104904175,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		-6.555000305175781,
		0.5002343654632568
	},
	{
		-0.6016666889190674,
		-7.694999694824219,
		0.5002343654632568
	},
	{
		4.7183332443237305,
		-2.0266666412353516,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		-3.515000104904175,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		-5.5416669845581055,
		0.5002343654632568
	},
	{
		2.565000057220459,
		-2.501666784286499,
		0.5002343654632568
	},
	{
		4.116666793823242,
		-1.4883334636688232,
		0.5002343654632568
	},
	{
		-1.0766667127609253,
		-7.125,
		0.5002343654632568
	},
	{
		4.7816667556762695,
		-1.0133333206176758,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		-2.501666784286499,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		-3.515000104904175,
		0.5002343654632568
	},
	{
		-0.949999988079071,
		-4.52833366394043,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		-1.9633333683013916,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		-0.4749999940395355,
		0.5002343654632568
	},
	{
		-1.6783332824707031,
		-6.65000057220459,
		0.5002343654632568
	},
	{
		4.7183332443237305,
		1.0133333206176758,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		-2.501666784286499,
		0.5002343654632568
	},
	{
		-1.5516666173934937,
		-4.053333282470703,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		-0.949999988079071,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		0.5383333563804626,
		0.5002343654632568
	},
	{
		2.565000057220459,
		-0.4749999940395355,
		0.5002343654632568
	},
	{
		-1.6783332824707031,
		-5.066666603088379,
		0.5002343654632568
	},
	{
		4.7816667556762695,
		2.0266666412353516,
		0.5002343654632568
	},
	{
		4.116666793823242,
		1.5516666173934937,
		0.5002343654632568
	},
	{
		-0.949999988079071,
		-1.4883334636688232,
		0.5002343654632568
	},
	{
		-1.6783332824707031,
		-2.0266666412353516,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		-0.4749999940395355,
		0.5002343654632568
	},
	{
		2.565000057220459,
		0.5383333563804626,
		0.5002343654632568
	},
	{
		4.7816667556762695,
		3.6100001335144043,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		2.565000057220459,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		-0.4749999940395355,
		0.5002343654632568
	},
	{
		-1.5516666173934937,
		-1.0133333206176758,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		0.5383333563804626,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		1.0766667127609253,
		0.5002343654632568
	},
	{
		4.179999828338623,
		4.148333549499512,
		0.5002343654632568
	},
	{
		3.5783333778381348,
		3.5783333778381348,
		0.5002343654632568
	},
	{
		2.565000057220459,
		2.565000057220459,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		0.5383333563804626,
		0.5002343654632568
	},
	{
		-1.6783332824707031,
		1.0133333206176758,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		2.0899999141693115,
		0.5002343654632568
	},
	{
		3.6416664123535156,
		4.7183332443237305,
		0.5002343654632568
	},
	{
		2.565000057220459,
		3.5783333778381348,
		0.5002343654632568
	},
	{
		-0.949999988079071,
		1.5516666173934937,
		0.5002343654632568
	},
	{
		-1.5516666173934937,
		2.0266666412353516,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		2.565000057220459,
		0.5002343654632568
	},
	{
		2.0266666412353516,
		4.686666488647461,
		0.5002343654632568
	},
	{
		1.5516666173934937,
		4.116666793823242,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		2.565000057220459,
		0.5002343654632568
	},
	{
		-1.6783332824707031,
		3.6100001335144043,
		0.5002343654632568
	},
	{
		0.5383333563804626,
		3.5783333778381348,
		0.5002343654632568
	},
	{
		1.0133333206176758,
		4.7183332443237305,
		0.5002343654632568
	},
	{
		-0.4749999940395355,
		3.5783333778381348,
		0.5002343654632568
	},
	{
		-1.0766667127609253,
		4.148333549499512,
		0.5002343654632568
	},
	{
		-0.6016666889190674,
		4.7183332443237305,
		0.5002343654632568
	}
}
local number_of_spawns = 74
local num_main_zones = 0
local total_main_path_length = 7.5
local spawner_version = "1"

return {
	version = spawner_version,
	number_of_spawns = number_of_spawns,
	path_markers = path_markers,
	zones = zones,
	cover_points = cover_points,
	num_main_zones = num_main_zones,
	position_lookup = position_lookup,
	main_paths = main_paths,
	crossroads = crossroads,
	total_main_path_length = total_main_path_length
}
