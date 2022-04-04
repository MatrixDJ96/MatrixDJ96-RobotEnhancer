function util.technology_icon_constant_battery(technology_icon)
	return
	{
		{
			icon = technology_icon,
			icon_size = 256, icon_mipmaps = 4
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-battery.png",
			icon_size = 128,
			icon_mipmaps = 3,
			shift = {100, 100}
		}
	}
end

data:extend({
	{
		type = "technology",
		name = "worker-robots-battery-1",
		icon_size = 256, icon_mipmaps = 4,
		icons = util.technology_icon_constant_battery("__MatrixDJ96-RobotEnhancer__/graphics/technology/worker-robots-battery.png"),
		effects =
		{
			{
				type = "worker-robot-battery",
				modifier = 0.3
			}
		},
		prerequisites = {"robotics"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "c-k-h-a"
	},
	{
		type = "technology",
		name = "worker-robots-battery-2",
		icon_size = 256, icon_mipmaps = 4,
		icons = util.technology_icon_constant_battery("__MatrixDJ96-RobotEnhancer__/graphics/technology/worker-robots-battery.png"),
		effects =
		{
			{
				type = "worker-robot-battery",
				modifier = 0.4
			}
		},
		prerequisites = {"worker-robots-battery-1"},
		unit =
		{
			count = 300,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "c-k-h-b"
	},
	{
		type = "technology",
		name = "worker-robots-battery-3",
		icon_size = 256, icon_mipmaps = 4,
		icons = util.technology_icon_constant_battery("__MatrixDJ96-RobotEnhancer__/graphics/technology/worker-robots-battery.png"),
		effects =
		{
			{
				type = "worker-robot-battery",
				modifier = 0.5
			}
		},
		prerequisites = {"worker-robots-battery-2"},
		unit =
		{
			count = 400,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 120
		},
		upgrade = true,
		order = "c-k-h-c"
	}
});
