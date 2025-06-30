local v0 = game:GetService("Players");
local v1 = game:GetService("Lighting");
local v2 = game:GetService("Workspace");
local v3 = game:GetService("RunService");
local v4 = game:GetService("TweenService");
local v5 = v0.LocalPlayer;
local v6 = v5.Name;
local v7 = tick();
local v8 = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or game:GetService("CoreGui");
local v9 = v8:FindFirstChild("BlackScreenGui");
if v9 then
	v9:Destroy();
end
local v10 = Instance.new("ScreenGui");
v10.Name = "BlackScreenGui";
v10.IgnoreGuiInset = true;
v10.ResetOnSpawn = false;
pcall(function()
	v10.Parent = v8;
end);
local v14 = Instance.new("Frame");
v14.Name = "BlackOverlay";
v14.Size = UDim2.new(1 + 0 + 0, 1822 - (301 + 1521), (1 - 0) - 0, 0 + 0 + 0);
v14.BackgroundColor3 = Color3.new(0 - (0 - 0), (3230 - 2150) - ((2720 - (1419 + 281)) + (85 - 25)), (1497 - (71 + 3)) - (630 + 781 + 12));
v14.BorderSizePixel = (0 - 0) - (0 - 0);
v14.ZIndex = (241 - (187 + 54)) - 0;
v14.Parent = v10;
local v21 = Instance.new("Frame");
v21.Size = UDim2.new(0 + 0, 1160 - (162 + 618), 0 - 0, 280);
v21.AnchorPoint = Vector2.new(0.5 + 0, 1747.5 - (507 + 253 + 987));
v21.Position = UDim2.new(0.5, (4079 - 2166) - ((3007 - 1218) + 124), 0.5 + 0, 0);
v21.BackgroundColor3 = Color3.fromRGB((2414 - (1373 + 263)) - ((1745 - (451 + 549)) + 7 + 14), (7 - 2) + (11 - 4), 1402 - (746 + 638));
v21.BackgroundTransparency = 0.05 - (0 + 0);
v21.BorderSizePixel = 0 - 0;
v21.ZIndex = (360 - (218 + 123)) - 14;
v21.Parent = v10;
Instance.new("UICorner", v21).CornerRadius = UDim.new(0 + (1581 - (1535 + 46)), 13 + 3 + 0);
local v31 = Instance.new("UIStroke", v21);
v31.Thickness = (153 + 904) - ((647 - (306 + 254)) + 60 + 908);
v31.Color = Color3.fromRGB((517 - 253) - 204, 118 + 12, (2043 - (899 + 568)) - 321);
v31.Transparency = (929.5999999999999 + 484) - ((1081 - 634) + 966);
local v35 = Instance.new("Frame");
v35.Size = UDim2.new(2 - (604 - (268 + 335)), -((2111 - (60 + 230)) - ((2275 - (426 + 146)) + 114)), (85 + 617) - ((1832 - (282 + 1174)) + (1136 - (569 + 242))), -((14 - 9) - (1 + 0)));
v35.Position = UDim2.new((1024 - (706 + 318)) - (1251 - (721 + 530)), 1273 - (945 + 326), (0 - 0) + 0 + 0, 4 - 2);
v35.BackgroundColor3 = Color3.fromRGB((734 - (271 + 429)) - (9 + 5), 25, (378 + 33) - ((1585 - (1408 + 92)) + (1377 - (461 + 625))));
v35.BackgroundTransparency = (2553.3 - (993 + 295)) - (13 + 230 + (2193 - (418 + 753)));
v35.BorderSizePixel = (0 + 0) - 0;
v35.ZIndex = 1 + 4 + 0 + 0;
v35.Parent = v21;
Instance.new("UICorner", v35).CornerRadius = UDim.new(0, (302 + 892) - (1123 + (586 - (406 + 123))));
local v44 = Instance.new("UIStroke", v35);
v44.Thickness = (1770 - (1749 + 20)) + 0;
v44.Color = Color3.fromRGB((80 + 254) - ((1485 - (1249 + 73)) + 33 + 58), 2080 - ((3014 - (466 + 679)) + (146 - 85)), (205 - 133) + (2083 - (106 + 1794)));
v44.Transparency = (0.7 + 0) - 0;
local v48 = Instance.new("UIGradient", v35);
v48.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(73 - 48, (13 - 8) + (139 - (4 + 110)), (645 - (57 + 527)) - 16)),ColorSequenceKeypoint.new(1427.5 - (41 + 1386), Color3.fromRGB(15 + 0, (1597 - (17 + 86)) - (902 + 427 + 145), (2232 - 1231) - (140 + (2406 - 1575)))),ColorSequenceKeypoint.new((3196 - 1345) - ((4674 - 3265) + 359 + 82), Color3.fromRGB((107 + 631) - (15 + (1424 - 721)), 90 - (30 + 35), 25 + 10))});
v48.Rotation = 0 + (1257 - (1043 + 214));
v3.Heartbeat:Connect(function()
	local v137 = 0;
	local v138;
	while true do
		if (v137 == (439 - ((990 - 728) + (1388 - (323 + 889))))) then
			v44.Transparency = v138;
			break;
		end
		if (v137 == ((4632 - 2911) - ((925 - (361 + 219)) + (1696 - (53 + 267))))) then
			local v269 = 0 + 0;
			while true do
				if (v269 == (413 - (15 + 398))) then
					v48.Rotation += ((1670.2 - (18 + 964)) - (198 + (1844 - 1354)))
					v138 = (math.sin(tick() * (1.5 + 0)) * (0.1 - (0 + 0))) + ((850.7 - (20 + 830)) - (0 + 0));
					v269 = 1;
				end
				if (v269 == (127 - (116 + 10))) then
					v137 = 1;
					break;
				end
			end
		end
	end
end);
local v51 = Instance.new("Frame");
v51.Size = UDim2.new((90 + 1117) - ((1434 - (542 + 196)) + 510), -(66 - 34), 0 - 0, (384 + 928) - (1091 + 87 + 84));
v51.Position = UDim2.new(0 + 0 + 0, (131 - 81) - (86 - 52), 1551 - (1126 + 425), 16);
v51.BackgroundColor3 = Color3.fromRGB((504 - (118 + 287)) - 69, (1602 - 1193) - ((1244 - (118 + 1003)) + (734 - 483)), (625 - (142 + 235)) - (898 - 700));
v51.BackgroundTransparency = (152.39999999999998 + 546) - ((1185 - (553 + 424)) + (926 - 436));
v51.BorderSizePixel = 0 + 0;
v51.ZIndex = 1 + 5 + 0;
v51.Parent = v35;
Instance.new("UICorner", v51).CornerRadius = UDim.new(0 + 0 + 0, (361 + 487) - (377 + 283 + (381 - 205)));
local v60 = Instance.new("UIStroke", v51);
v60.Thickness = 1;
v60.Color = Color3.fromRGB((24 - 15) + (136 - 75), 322 - (5 + 9 + 188), 966 - 766);
v60.Transparency = (1428.8 - (239 + 514)) - (188 + 346 + (1470 - (797 + 532)));
local v64 = Instance.new("TextLabel");
v64.Size = UDim2.new(1 + 0, -(9 + 4 + 7), 1, (0 - 0) + (1202 - (373 + 829)));
v64.Position = UDim2.new(731 - (476 + 255), 10 + (1130 - (369 + 761)), (0 + 0) - (0 - 0), (0 - 0) - (238 - (64 + 174)));
v64.BackgroundTransparency = 2 - (1 + 0);
v64.TextColor3 = Color3.fromRGB((202 - 65) + 118, (499 - (144 + 192)) + (308 - (42 + 174)), (490 + 161) - (96 + 19 + 120 + 161));
v64.Font = Enum.Font.GothamBold;
v64.TextSize = 1524 - (363 + 1141);
v64.TextXAlignment = Enum.TextXAlignment.Center;
v64.Text = "👤 " .. v6;
v64.ZIndex = 15 - 8;
v64.Parent = v51;
local v77 = Instance.new("Frame");
v77.Size = UDim2.new((1581 - (1183 + 397)) + (0 - 0), -((56 + 20) - (33 + 11)), 0, (2525 - (1913 + 62)) - (252 + 148));
v77.Position = UDim2.new((2295 - 1428) - ((2483 - (565 + 1368)) + 317), (82 - 60) - 6, 0, (1773 - (1477 + 184)) - 32);
v77.BackgroundTransparency = 2 - (1 - 0);
v77.ZIndex = (272 + 19) - ((990 - (564 + 292)) + (260 - 109));
v77.Parent = v35;
local function v83(v139, v140, v141, v142, v143)
	local v144 = Instance.new("Frame");
	v144.Size = UDim2.new(2 - 1, 1665 - (970 + 695), 0 - (304 - (244 + 60)), 40);
	v144.Position = UDim2.new(1990 - (448 + 134 + (1884 - (41 + 435))), (1001 - (938 + 63)) - (0 + 0), (1125 - (936 + 189)) - (0 + 0), v139);
	v144.BackgroundColor3 = Color3.fromRGB((1707 - (1565 + 48)) - (43 + 26), (2992 - (782 + 356)) - (1195 + 629), (319 - (176 + 91)) - 12);
	v144.BackgroundTransparency = 0.3 - 0;
	v144.BorderSizePixel = 0;
	v144.ZIndex = 247 - (187 + (79 - 25));
	v144.Parent = v77;
	Instance.new("UICorner", v144).CornerRadius = UDim.new((1872 - (975 + 117)) - ((2037 - (157 + 1718)) + 618), 7 + 1 + (6 - 4));
	local v153 = Instance.new("UIStroke", v144);
	v153.Thickness = (3 - 2) + (1018 - (697 + 321));
	v153.Color = v140;
	v153.Transparency = 0.7 - (0 - 0);
	local v157 = Instance.new("Frame");
	v157.Size = UDim2.new(0 - (0 - 0), (6 - 3) + 12 + 17, (3065 - 1429) - (1373 + 263), (2766 - 1734) - ((1678 - (322 + 905)) + (1160 - (602 + 9))));
	v157.Position = UDim2.new(1189 - (449 + 740), 880 - (826 + 46), 0 + 0, (952 - (245 + 702)) - 1);
	v157.BackgroundColor3 = v140;
	v157.BackgroundTransparency = (0.8 - 0) - (0 + 0);
	v157.BorderSizePixel = 1898 - (260 + 1638);
	v157.ZIndex = 1391 - ((1186 - (382 + 58)) + (2046 - 1408));
	v157.Parent = v144;
	Instance.new("UICorner", v157).CornerRadius = UDim.new(0, 4 + 0 + 4);
	local v166 = Instance.new("TextLabel");
	v166.Size = UDim2.new((1 - 0) - (0 - 0), (1546 - (902 + 303)) - ((478 - 260) + 123), (3810 - 2228) - (132 + 1403 + (1736 - (1121 + 569))), 0 + 0);
	v166.BackgroundTransparency = 1 + 0;
	v166.TextColor3 = v141;
	v166.Font = Enum.Font.GothamBold;
	v166.TextSize = (790 - (22 + 192)) - ((989 - (483 + 200)) + 254);
	v166.Text = v143;
	v166.ZIndex = 1 + 7;
	v166.Parent = v157;
	local v176 = Instance.new("TextLabel");
	v176.Name = v142;
	v176.Size = UDim2.new((1464 - (1404 + 59)) - (0 - 0), -(67 - 17), 1468 - (899 + 568), (765 - (468 + 297)) + 0);
	v176.Position = UDim2.new(562 - (334 + 228), 48, 0 - (0 - 0), 603 - ((621 - 353) + (607 - 272)));
	v176.BackgroundTransparency = 291 - (18 + 42 + (466 - (141 + 95)));
	v176.TextColor3 = Color3.fromRGB((813 + 14) - ((1096 - 670) + (350 - 204)), 8 + 23 + (613 - 389), 180 + 75);
	v176.Font = Enum.Font.Gotham;
	v176.TextSize = 1472 - (147 + 135 + 1174);
	v176.TextXAlignment = Enum.TextXAlignment.Left;
	v176.Text = v142 .. ": ???";
	v176.ZIndex = (1151 - 333) - (569 + 143 + 99);
	v176.Parent = v144;
	return v176;
end
local v84 = v83(0 - 0, Color3.fromRGB(100, 11 + (332 - (92 + 71)), (632 + 647) - (706 + (534 - 216))), Color3.fromRGB(1506 - (721 + 530), 1526 - (945 + 326), 637 - (1147 - (574 + 191))), "LEVEL", "⚡");
local v85 = v83(38 + 7 + (12 - 7), Color3.fromRGB((384 + 366) - ((1120 - (254 + 595)) + (555 - (55 + 71))), (242 - 58) + (1806 - (573 + 1217)), 1620 - ((3899 - 2491) + 8 + 84)), Color3.fromRGB(410 - 155, 1194 - (714 + 225), 1341 - ((1347 - 886) + 625)), "BANK", "🏦");
local v86 = v83((1934 - 546) - (108 + 885 + 295), Color3.fromRGB((20 - 6) + (1047 - (118 + 688)), (1399 - (25 + 23)) - (81 + 337 + (2639 - (927 + 959))), 168 - 118), Color3.fromRGB((830 - (16 + 716)) + (302 - 145), 255, 27 + (325 - (11 + 86))), "HAND", "💰");
local v87 = Instance.new("Frame");
v87.Size = UDim2.new((2 - 1) + (285 - (175 + 110)), -32, (0 - 0) + 0, (2781 - 2217) - ((2202 - (503 + 1293)) + (343 - 220)));
v87.Position = UDim2.new((1280 + 489) - ((2810 - (810 + 251)) + 14 + 6), 5 + 11, 1, -(12 + 1 + 38));
v87.BackgroundColor3 = Color3.fromRGB((1885 - (43 + 490)) - ((1982 - (711 + 22)) + (282 - 209)), 894 - (240 + 619), 13 + 37);
v87.BackgroundTransparency = (0.4 - 0) + 0;
v87.BorderSizePixel = 1145 - (466 + 45 + 634);
v87.ZIndex = 14 - (1752 - (1344 + 400));
v87.Parent = v35;
Instance.new("UICorner", v87).CornerRadius = UDim.new(405 - (255 + 150), (23 + 5) - 18);
local v96 = Instance.new("UIStroke", v87);
v96.Thickness = 1 + 0;
v96.Color = Color3.fromRGB(1970 - ((452 - 346) + (5794 - 4000)), 1859 - (404 + 1335), 64 + (542 - (183 + 223)));
v96.Transparency = (0.8 - 0) + 0 + 0;
local v100 = Instance.new("TextLabel");
v100.Size = UDim2.new((1 + 1) - 1, -((458 - (10 + 327)) - (53 + 23)), 115 - ((342 - (118 + 220)) + 110), (195 + 389) - ((506 - (108 + 341)) + 237 + 290));
v100.Position = UDim2.new(1427 - ((173 - 132) + (2879 - (711 + 782))), (220 - 105) - (17 + 86), 469 - (270 + 199), 0);
v100.BackgroundTransparency = 1 + 0 + 0;
v100.TextColor3 = Color3.fromRGB(1999 - (580 + 1239), (1456 - 966) - 270, 244 + 11);
v100.Font = Enum.Font.Gotham;
v100.TextSize = (2 + 38) - (12 + 14);
v100.TextXAlignment = Enum.TextXAlignment.Left;
v100.Text = "🟢 ONLINE : 0s | By Nutx";
v100.ZIndex = 18 - 11;
v100.Parent = v87;
local v113 = Instance.new("TextButton");
v113.Size = UDim2.new(0 + 0, (1361 - (645 + 522)) - (122 + (1834 - (1010 + 780))), (0 + 0) - (0 - 0), 92 - (187 - 123));
v113.Position = UDim2.new((1837 - (1045 + 791)) + 0, -(6 + (72 - 43)), 0, 7 - (4 - 1));
v113.BackgroundColor3 = Color3.fromRGB(550 - (351 + 154), 1624 - (1281 + 293), (401 - (28 + 238)) - (30 + (77 - 42)));
v113.TextColor3 = Color3.fromRGB((1735 - (1381 + 178)) + 75 + 4, 206 + 49, 109 + 146);
v113.Font = Enum.Font.GothamBold;
v113.TextSize = 14;
v113.Text = "👁";
v113.ZIndex = (4360 - 3095) - (541 + 502 + 214);
v113.Parent = v87;
Instance.new("UICorner", v113).CornerRadius = UDim.new((470 - (381 + 89)) - 0, (1082 + 138) - (219 + 104 + (1522 - 633)));
local v124 = Instance.new("UIStroke", v113);
v124.Thickness = 1157 - (1074 + 82);
v124.Color = Color3.fromRGB(269 - (370 - 201), 150, 255);
v124.Transparency = 0.6;
v113.MouseEnter:Connect(function()
	local v190 = 1784 - (214 + 1570);
	local v191;
	while true do
		if (v190 == (1455 - (990 + 465))) then
			v191 = 580 - (149 + 212 + 96 + 123);
			while true do
				if (v191 == (0 + 0)) then
					v4:Create(v113, TweenInfo.new((1259.2 - 939) - (53 + 267)), {BackgroundColor3=Color3.fromRGB(65, 1796 - (1668 + 58), (647 - (512 + 114)) + (179 - 110)),Size=UDim2.new((853 - 440) - (15 + (1384 - 986)), (471 + 541) - (18 + 181 + 783), (0 + 0) - (0 - 0), 2024 - (109 + 1885))}):Play();
					v4:Create(v124, TweenInfo.new((1469.2 - (1269 + 200)) + (0 - 0)), {Transparency=(0.3 + (815 - (98 + 717)))}):Play();
					break;
				end
			end
			break;
		end
	end
end);
v113.MouseLeave:Connect(function()
	local v192 = 826 - (802 + 24);
	local v193;
	while true do
		if (v192 == (0 - 0)) then
			v193 = (1073 - 223) - (20 + 830);
			while true do
				if (v193 == (0 + 0 + 0)) then
					v4:Create(v113, TweenInfo.new(126.2 - (90 + 26 + 2 + 8)), {BackgroundColor3=Color3.fromRGB(10 + 35, (11 - 7) + 46, (2694 - 1886) - (542 + 71 + 125)),Size=UDim2.new(0 - (0 + 0), 8 + 1 + 14 + 5, 0 + 0 + 0, (1444 - (797 + 636)) + 17)}):Play();
					v4:Create(v124, TweenInfo.new(0.2 - 0), {Transparency=(1619.6 - (1427 + 192))}):Play();
					break;
				end
			end
			break;
		end
	end
end);
local v128 = true;
v113.MouseButton1Click:Connect(function()
	local v194 = 0 + 0;
	while true do
		if (v194 == 2) then
			task.wait(1121.1 - ((273 - 155) + 902 + 101));
			v4:Create(v113, TweenInfo.new((0.1 + 0) - (326 - (192 + 134))), {Size=UDim2.new(1276 - (316 + 960), 405 - (80 + 62 + 235), (0 + 0) - (0 + 0), 28)}):Play();
			break;
		end
		if (v194 == (0 - 0)) then
			v128 = not v128;
			v4:Create(v14, TweenInfo.new((551.3 - (83 + 468)) - (1806 - (1202 + 604))), {BackgroundTransparency=((v128 and (0 - 0)) or (2 - (1 - 0)))}):Play();
			v194 = 2 - 1;
		end
		if (v194 == 1) then
			v113.Text = (v128 and "👁") or "👁‍🗨";
			v4:Create(v113, TweenInfo.new(325.1 - (45 + 280)), {Size=UDim2.new(1551 - (1087 + 39 + 372 + 53), 431 - (44 + 74 + 159 + 128), (0 + 0) - (0 - 0), 1937 - (340 + 1571))}):Play();
			v194 = 1 + 1;
		end
	end
end);
local function v129(v195)
	local v196 = 1772 - (1733 + 39);
	local v197;
	local v198;
	local v199;
	local v200;
	while true do
		if (1 == v196) then
			v199 = nil;
			v200 = nil;
			v196 = 5 - 3;
		end
		if (v196 == (1036 - (125 + 909))) then
			while true do
				if (((1948 - (1096 + 852)) + 0) == v197) then
					local v286 = 0;
					while true do
						if (v286 == 0) then
							v198 = math.floor(v195 / (4577 - (249 + 304 + (605 - 181))));
							v199 = math.floor((v195 % (3492 + 108)) / 60);
							v286 = 513 - (409 + 103);
						end
						if (v286 == 1) then
							v197 = (237 - (46 + 190)) - (95 - (51 + 44));
							break;
						end
					end
				end
				if ((1 + 0 + (1317 - (1114 + 203))) == v197) then
					v200 = math.floor(v195 % (60 + 0));
					if (v198 > (726 - (228 + 498))) then
						return string.format("%dh %dm %ds", v198, v199, v200);
					elseif (v199 > (0 + 0 + 0 + 0)) then
						return string.format("%dm %ds", v199, v200);
					else
						return string.format("%ds", v200);
					end
					break;
				end
			end
			break;
		end
		if (v196 == 0) then
			v197 = 663 - (174 + 489);
			v198 = nil;
			v196 = 1;
		end
	end
end
task.spawn(function()
	while v10.Parent do
		local v248 = 0 - 0;
		local v249;
		local v250;
		local v251;
		while true do
			if (1 == v248) then
				v251 = nil;
				while true do
					if (v249 == (1907 - (830 + 1075))) then
						task.wait(524.5 - (303 + 221));
						break;
					end
					if (v249 == 1) then
						v251 = (math.sin(v250 * (1270.5 - (231 + 1038))) * (0.2 + 0)) + (1162.8 - (171 + 991));
						v100.TextTransparency = (1 + (0 - 0)) - v251;
						v249 = 5 - 3;
					end
					if (v249 == 0) then
						local v323 = 0 - 0;
						while true do
							if (v323 == 1) then
								v249 = 1;
								break;
							end
							if (v323 == 0) then
								v250 = tick() - v7;
								v100.Text = "🟢 ONLINE : " .. v129(v250) .. " | By Nutx";
								v323 = 1 + 0;
							end
						end
					end
				end
				break;
			end
			if ((0 - 0) == v248) then
				v249 = 0 - 0;
				v250 = nil;
				v248 = 1 - 0;
			end
		end
	end
end);
v21.AnchorPoint = Vector2.new((0.5 - 0) + (1248 - (111 + 1137)), (158.5 - (91 + 67)) - (0 - 0));
v21.Position = UDim2.new((0.5 + 0) - (523 - (423 + 100)), 0 - (0 + 0), -(0.5 - 0), 0 + 0 + 0);
v21.Size = UDim2.new((771 - (326 + 445)) - 0, (4595 - 3542) - ((531 - 292) + (1199 - 685)), (711 - (530 + 181)) + (881 - (614 + 267)), 232 - (19 + 13));
v4:Create(v21, TweenInfo.new(1329.8 - ((1297 - 500) + 532), Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.new(0.5 - 0, 0 - 0, 0.5 + 0 + (0 - 0), (0 - 0) + (1812 - (1293 + 519))),Size=UDim2.new(0 - (0 - 0), (4130 - 2548) - ((712 - 339) + (3574 - 2745)), (1721 - 990) - (476 + 136 + 119), 58 + 222)}):Play();
local function v130(v201)
	local v202 = 0 - 0;
	local v203;
	local v204;
	local v205;
	while true do
		if (v202 == (1 + 0)) then
			v205 = nil;
			while true do
				if (v203 == (0 + 0)) then
					v204 = (707 + 423) - (369 + 761);
					v205 = nil;
					v203 = 1097 - (709 + 387);
				end
				if (v203 == 1) then
					while true do
						local v324 = 0;
						local v325;
						while true do
							if (v324 == 0) then
								v325 = 1858 - (673 + 1185);
								while true do
									if (v325 == (0 - 0)) then
										if (v204 == ((3 - 2) + 0)) then
											return tonumber(v205) or ((0 - 0) - 0);
										end
										if (v204 == ((0 + 0) - (0 + 0))) then
											local v382 = 0 - 0;
											while true do
												if (v382 == (1 + 0)) then
													v204 = (476 - 237) - ((125 - 61) + 174);
													break;
												end
												if (v382 == 0) then
													v205 = v201:match("[%d,]+") or "0";
													v205 = v205:gsub(",", "");
													v382 = 1881 - (446 + 1434);
												end
											end
										end
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
		if (v202 == (1283 - (1040 + 243))) then
			v203 = 0 - 0;
			v204 = nil;
			v202 = 1848 - (559 + 1288);
		end
	end
end
local function v131(v206)
	if (v206 >= 1000000) then
		return string.format("%.1fM", v206 / ((144355 - (609 + 1322)) + (858030 - (13 + 441))));
	elseif (v206 >= ((5530 - 4050) - (1257 - 777))) then
		return string.format("%.1fK", v206 / (4980 - 3980));
	else
		return tostring(v206);
	end
end
local function v132(v207)
	local v208 = 0 + 0;
	local v209;
	while true do
		if (v208 == 1) then
			return nil;
		end
		if (v208 == (0 - 0)) then
			v209 = v5:WaitForChild("PlayerGui");
			for v273, v274 in ipairs(v209:GetDescendants()) do
				if (v274:IsA("TextLabel") or v274:IsA("TextBox")) then
					if (v274.Text and string.find(string.lower(v274.Text), string.lower(v207))) then
						return v274;
					end
				end
			end
			v208 = 1 + 0;
		end
	end
end
task.spawn(function()
	while v10.Parent do
		local v252 = 0 + 0;
		while true do
			if (v252 == (0 - 0)) then
				pcall(function()
					local v280 = 336 - (144 + 106 + 86);
					local v281;
					local v282;
					while true do
						if (v280 == ((399 - 182) - (28 + 14 + 97 + 77))) then
							v85.Text = (v281 and ("BANK : " .. v131(v130(v281.Text)))) or "BANK : Not found";
							v86.Text = (v282 and ("HAND : " .. v131(v130(v282.Text)))) or "HAND : Not found";
							break;
						end
						if (v280 == (0 + 0 + 0 + 0)) then
							local v330 = 0;
							while true do
								if (v330 == (0 + 0)) then
									v281 = v132("bank balance");
									v282 = v132("hand balance");
									v330 = 434 - (153 + 280);
								end
								if (v330 == 1) then
									v280 = 1;
									break;
								end
							end
						end
					end
				end);
				task.wait(1 + (0 - 0));
				break;
			end
		end
	end
end);
local v133, v134, v135 = nil, nil, tick();
task.spawn(function()
	while v10.Parent do
		local v253 = 0 + 0;
		local v254;
		local v255;
		while true do
			if (v253 == (0 + 0)) then
				v254, v255 = v132("bank balance"), v132("hand balance");
				if (v254 and v255) then
					local v287 = 0;
					local v288;
					local v289;
					local v290;
					while true do
						if (v287 == (1 + 0)) then
							v290 = nil;
							while true do
								if (v288 == (0 + 0)) then
									v289, v290 = v130(v254.Text), v130(v255.Text);
									if ((v289 ~= v133) or (v290 ~= v134)) then
										v133, v134, v135 = v289, v290, tick();
									elseif ((tick() - v135) >= ((1308 + 496) - (363 + 1141))) then
										pcall(function()
											game:Shutdown();
										end);
									end
									break;
								end
							end
							break;
						end
						if (v287 == (0 - 0)) then
							v288 = 0 + 0;
							v289 = nil;
							v287 = 1 + 0;
						end
					end
				end
				v253 = 668 - (89 + 578);
			end
			if ((1 + 0) == v253) then
				task.wait((3286 - 1705) - (1183 + (1446 - (572 + 477))));
				break;
			end
		end
	end
end);
task.spawn(function()
	while v10.Parent do
		local v256 = 0 + 0;
		local v257;
		while true do
			if (v256 == (0 + 0)) then
				v257 = (0 + 0) - (86 - (84 + 2));
				while true do
					if (v257 == 0) then
						pcall(function()
							local v331 = 0 - 0;
							local v332;
							local v333;
							local v334;
							while true do
								if (v331 == (1 + 0 + (842 - (497 + 345)))) then
									v334 = v333:GetAttribute("level");
									v84.Text = "LEVEL : " .. (v334 or "???");
									break;
								end
								if ((0 + 0) == v331) then
									local v367 = 0 + 0;
									while true do
										if (v367 == (1334 - (605 + 728))) then
											v331 = 1;
											break;
										end
										if (v367 == (0 + 0)) then
											v332 = game:GetService("Players");
											v333 = v332.LocalPlayer;
											v367 = 1;
										end
									end
								end
							end
						end);
						task.wait(1 + (0 - 0));
						break;
					end
				end
				break;
			end
		end
	end
end);
local v0 = game:GetService("Players");
local v1 = game:GetService("Lighting");
local v2 = game:GetService("Workspace");
local v3 = game:GetService("RunService");
local v4 = game:GetService("TweenService");
local v5 = v0.LocalPlayer;
local v6 = v5.Name;
local v7 = tick();
local v8 = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or game:GetService("CoreGui");
local v9 = v8:FindFirstChild("BlackScreenGui");
if v9 then
	v9:Destroy();
end
local v10 = Instance.new("ScreenGui");
v10.Name = "BlackScreenGui";
v10.IgnoreGuiInset = true;
v10.ResetOnSpawn = false;
pcall(function()
	v10.Parent = v8;
end);
local v14 = Instance.new("Frame");
v14.Name = "BlackOverlay";
v14.Size = UDim2.new((91 + 1885) - ((7072 - 5159) + 62), 0 + 0 + 0, (5 - 3) - (1 + 0), (2422 - (457 + 32)) - (240 + 325 + (2770 - (832 + 570))));
v14.BackgroundColor3 = Color3.new(0 + 0, (0 + 0) - (0 - 0), (801 + 860) - ((2273 - (588 + 208)) + (495 - 311)));
v14.BorderSizePixel = (1800 - (884 + 916)) - 0;
v14.ZIndex = (0 - 0) + 0 + 0;
v14.Parent = v10;
local v21 = Instance.new("Frame");
v21.Size = UDim2.new((1509 - (232 + 421)) - (564 + (2181 - (1569 + 320))), 94 + 286, (0 + 0) - (0 - 0), 280);
v21.AnchorPoint = Vector2.new(605.5 - (316 + 289), 0.5 - 0);
v21.Position = UDim2.new((0.5 + 0) - 0, (1757 - (666 + 787)) - (244 + 60), (425.5 - (360 + 65)) + 0, (445 + 31) - (41 + 435));
v21.BackgroundColor3 = Color3.fromRGB(1013 - (938 + (317 - (79 + 175))), (15 - 5) + 2, (892 + 251) - ((2868 - 1932) + 189));
v21.BackgroundTransparency = 0.05 - 0;
v21.BorderSizePixel = 0 + (899 - (503 + 396));
v21.ZIndex = 5;
v21.Parent = v10;
Instance.new("UICorner", v21).CornerRadius = UDim.new(1613 - (1565 + 48), 197 - (92 + 89));
local v31 = Instance.new("UIStroke", v21);
v31.Thickness = 2;
v31.Color = Color3.fromRGB((73 - 35) + 12 + 10, 77 + 53, 998 - 743);
v31.Transparency = 1138.6 - (107 + 675 + (811 - 455));
local v35 = Instance.new("Frame");
v35.Size = UDim2.new((234 + 34) - (85 + 91 + (277 - 186)), -(10 - 6), 1, -((1 + 4) - 1));
v35.Position = UDim2.new((1664 - 572) - (975 + (1361 - (485 + 759))), (4343 - 2466) - ((1346 - (442 + 747)) + (2853 - (832 + 303))), (946 - (88 + 858)) + 0, 1 + 1);
v35.BackgroundColor3 = Color3.fromRGB((58 + 12) - 50, 2 + 23, (908 - (766 + 23)) - 84);
v35.BackgroundTransparency = (5025.3 - 4007) - ((953 - 256) + 321);
v35.BorderSizePixel = 0 - 0;
v35.ZIndex = 13 - (27 - 19);
v35.Parent = v21;
Instance.new("UICorner", v35).CornerRadius = UDim.new(0 - 0, 31 - (1090 - (1036 + 37)));
local v44 = Instance.new("UIStroke", v35);
v44.Thickness = 1 + 0 + (0 - 0);
v44.Color = Color3.fromRGB(63 + 17, 281 - (1611 - (641 + 839)), (1596 - (910 + 3)) - (1090 - 662));
v44.Transparency = 0.7;
local v48 = Instance.new("UIGradient", v35);
v48.Color = ColorSequence.new({ColorSequenceKeypoint.new(1227 - (322 + 416 + 489), Color3.fromRGB(25, (1789 - (556 + 592)) - (215 + 387 + (817 - (329 + 479))), (2088 - (174 + 680)) - ((1542 - 1093) + (1533 - 793)))),ColorSequenceKeypoint.new(0.5 + 0, Color3.fromRGB((1701 - (396 + 343)) - (245 + 63 + 639), (1540 - (29 + 1448)) - 43, (1399 - (135 + 1254)) + (75 - 55))),ColorSequenceKeypoint.new((294 + 147) - ((1909 - (389 + 1138)) + (632 - (102 + 472))), Color3.fromRGB(64 - (42 + 2), 21 + 3 + 1, 35))});
v48.Rotation = 0 - 0;
v3.Heartbeat:Connect(function()
	local v211 = 0 + 0;
	local v212;
	local v213;
	local v214;
	while true do
		if (v211 == (1545 - (320 + 1225))) then
			v212 = 0 - 0;
			v213 = nil;
			v211 = 1 + 0;
		end
		if (v211 == 1) then
			v214 = nil;
			while true do
				if ((1464 - (157 + 1307)) == v212) then
					local v291 = 1859 - (821 + 1038);
					while true do
						if (v291 == (2 - 1)) then
							v212 = 1;
							break;
						end
						if (0 == v291) then
							v213 = (0 + 0) - (0 - 0);
							v214 = nil;
							v291 = 1;
						end
					end
				end
				if ((1 + 0) == v212) then
					while true do
						if (v213 == ((2989 - 1783) - (902 + (1329 - (834 + 192))))) then
							v44.Transparency = v214;
							break;
						end
						if (v213 == (0 + 0)) then
							local v342 = 0 + 0;
							while true do
								if ((0 + 0) == v342) then
									v48.Rotation += ((0.2 - 0) - 0)
									v214 = (math.sin(tick() * ((306.5 - (300 + 4)) - 1)) * (0.1 + 0 + 0)) + ((4424.7 - 2734) - ((1483 - (112 + 250)) + 569));
									v342 = 1 + 0;
								end
								if (v342 == (2 - 1)) then
									v213 = (124 + 91) - (12 + 10 + 144 + 48);
									break;
								end
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end);
local v51 = Instance.new("Frame");
v51.Size = UDim2.new((340 + 344) - (359 + 124 + (1614 - (1001 + 413))), -((3333 - 1838) - ((2286 - (244 + 638)) + 59)), 693 - (627 + 66), 136 - (256 - 170));
v51.Position = UDim2.new(602 - (512 + 90), 1922 - (1665 + 241), 0, 733 - (373 + 344));
v51.BackgroundColor3 = Color3.fromRGB(30, 47 - 12, (368 + 447) - (468 + 297));
v51.BackgroundTransparency = (149.39999999999998 + 413) - (334 + 228);
v51.BorderSizePixel = (0 - 0) - (0 - 0);
v51.ZIndex = (1112 - (35 + 1064)) - (6 + 1);
v51.Parent = v35;
Instance.new("UICorner", v51).CornerRadius = UDim.new((0 - 0) - (0 + 0), (1240 - (298 + 938)) + (1267 - (233 + 1026)));
local v60 = Instance.new("UIStroke", v51);
v60.Thickness = 1;
v60.Color = Color3.fromRGB(306 - (141 + 95), 118 + 2, 514 - 314);
v60.Transparency = (1666.8 - (636 + 1030)) - (0 + 0);
local v64 = Instance.new("TextLabel");
v64.Size = UDim2.new(1 + 0, -((53 + 1) - 34), 1 + 0 + 0 + 0, (221 - (55 + 166)) + 0);
v64.Position = UDim2.new((0 + 0) - (0 + 0), 38 - 28, (297 - (36 + 261)) + (0 - 0), (1531 - (34 + 1334)) - (36 + 56 + 56 + 15));
v64.BackgroundTransparency = (1284 - (1035 + 248)) + (21 - (20 + 1));
v64.TextColor3 = Color3.fromRGB((223 + 205) - 173, 255, 1020 - ((893 - (134 + 185)) + (1324 - (549 + 584))));
v64.Font = Enum.Font.GothamBold;
v64.TextSize = 20;
v64.TextXAlignment = Enum.TextXAlignment.Center;
v64.Text = "👤 " .. v6;
v64.ZIndex = 692 - (314 + 371);
v64.Parent = v51;
local v77 = Instance.new("Frame");
v77.Size = UDim2.new(1, -(109 - 77), 0, 124 + (994 - (478 + 490)));
v77.Position = UDim2.new(0 + 0, 39 - 23, 0 + 0, 1252 - (786 + 386));
v77.BackgroundTransparency = (2753 - 1903) - ((1633 - (1055 + 324)) + 595);
v77.ZIndex = (1472 - (1093 + 247)) - (55 + 64 + 7);
v77.Parent = v35;
local function v83(v215, v216, v217, v218, v219)
	local v220 = 0 + 0;
	local v221;
	local v222;
	local v223;
	local v224;
	local v225;
	local v226;
	while true do
		if (v220 == 2) then
			v225 = nil;
			v226 = nil;
			v220 = 3;
		end
		if (v220 == 0) then
			local v271 = 0 - 0;
			while true do
				if (v271 == (3 - 2)) then
					v220 = 2 - 1;
					break;
				end
				if (v271 == (0 - 0)) then
					v221 = (0 + 0) - (0 - 0);
					v222 = nil;
					v271 = 3 - 2;
				end
			end
		end
		if (v220 == 1) then
			v223 = nil;
			v224 = nil;
			v220 = 2;
		end
		if (v220 == (3 + 0)) then
			while true do
				if (v221 == (1798 - (573 + (3112 - 1895)))) then
					v226.Name = v218;
					v226.Size = UDim2.new(689 - (364 + 324), -(138 - (241 - 153)), 1 + (0 - 0), (0 + 0) - 0);
					v226.Position = UDim2.new((3928 - 2989) - ((1142 - 428) + (683 - 458)), (1408 - (1249 + 19)) - 92, (0 + 0) - (0 - 0), 1086 - (686 + 400));
					v226.BackgroundTransparency = 1 + 0;
					v221 = 1 + 8;
				end
				if (v221 == ((231 - (73 + 156)) - (0 + 0))) then
					local v296 = 811 - (721 + 90);
					local v297;
					while true do
						if (v296 == 0) then
							v297 = 0 + 0;
							while true do
								if (v297 == (0 - 0)) then
									Instance.new("UICorner", v222).CornerRadius = UDim.new(0, 10);
									v223 = Instance.new("UIStroke", v222);
									v297 = 471 - (224 + 246);
								end
								if (v297 == (2 - 0)) then
									v221 = 809 - ((216 - 98) + 125 + 563);
									break;
								end
								if (v297 == (1 + 0)) then
									v223.Thickness = 1;
									v223.Color = v216;
									v297 = 2;
								end
							end
							break;
						end
					end
				end
				if (((36 + 12) - ((49 - 24) + (76 - 53))) == v221) then
					local v298 = 0;
					while true do
						if (v298 == (515 - (203 + 310))) then
							v221 = 1994 - (1238 + 755);
							break;
						end
						if (v298 == (1 + 0)) then
							v222.Position = UDim2.new(0, 0 - 0, (2266 - (709 + 825)) - ((28 - 12) + (1042 - 326)), v215);
							v222.BackgroundColor3 = Color3.fromRGB(48 - 23, (991 - (196 + 668)) - ((43 - 32) + (178 - 92)), (930 - (171 + 662)) - (150 - (4 + 89)));
							v298 = 6 - 4;
						end
						if ((0 + 0) == v298) then
							v222 = Instance.new("Frame");
							v222.Size = UDim2.new((4 - 3) + 0 + 0, 0, 1486 - (35 + 1451), 1926 - ((2380 - (28 + 1425)) + 959));
							v298 = 1;
						end
					end
				end
				if (6 == v221) then
					local v299 = 0;
					while true do
						if (v299 == (1995 - (941 + 1052))) then
							v221 = (17 + 0) - (1524 - (822 + 692));
							break;
						end
						if (v299 == (0 - 0)) then
							v225.BackgroundTransparency = 1 + 0;
							v225.TextColor3 = v217;
							v299 = 1;
						end
						if (v299 == 1) then
							v225.Font = Enum.Font.GothamBold;
							v225.TextSize = (598 - (45 + 252)) - (174 + 1 + 38 + 72);
							v299 = 4 - 2;
						end
					end
				end
				if (v221 == 10) then
					local v300 = 433 - (114 + 319);
					while true do
						local v326 = 0 - 0;
						while true do
							if ((0 - 0) == v326) then
								if (v300 == (1 + 0)) then
									local v373 = 0 - 0;
									while true do
										if ((0 - 0) == v373) then
											v226.Parent = v222;
											return v226;
										end
									end
								end
								if (v300 == 0) then
									v226.Text = v218 .. ": ???";
									v226.ZIndex = (1997 - (556 + 1407)) - (1233 - (741 + 465));
									v300 = 466 - (170 + 295);
								end
								break;
							end
						end
					end
				end
				if ((1800 - (503 + 682 + 611)) == v221) then
					v224.BackgroundColor3 = v216;
					v224.BackgroundTransparency = 0.8 + 0;
					v224.BorderSizePixel = 0 - (0 - 0);
					v224.ZIndex = 7;
					v221 = 5;
				end
				if (v221 == (1 + 0 + 0 + 0)) then
					local v305 = 0 + 0;
					while true do
						if (v305 == (1231 - (957 + 273))) then
							v222.ZIndex = 1 + 1 + 2 + 2;
							v222.Parent = v77;
							v305 = 2;
						end
						if (v305 == (7 - 5)) then
							v221 = (5 - 3) + (0 - 0);
							break;
						end
						if (v305 == (0 - 0)) then
							v222.BackgroundTransparency = 1061.3 - (810 + (2031 - (389 + 1391)));
							v222.BorderSizePixel = 0 + 0;
							v305 = 1;
						end
					end
				end
				if (v221 == 7) then
					local v306 = 0 + 0;
					while true do
						if (v306 == (1 + 0)) then
							v225.Parent = v224;
							v226 = Instance.new("TextLabel");
							v306 = 4 - 2;
						end
						if (v306 == (953 - (783 + 168))) then
							v221 = 26 - 18;
							break;
						end
						if (v306 == 0) then
							v225.Text = v219;
							v225.ZIndex = (533 + 8) - ((354 - (309 + 2)) + (1504 - 1014));
							v306 = 1213 - (1090 + 122);
						end
					end
				end
				if (v221 == (738 - (231 + 480 + (73 - 51)))) then
					local v307 = 0 + 0;
					local v308;
					while true do
						if (v307 == (1118 - (628 + 490))) then
							v308 = 0 + 0;
							while true do
								if ((0 - 0) == v308) then
									v224.Parent = v222;
									Instance.new("UICorner", v224).CornerRadius = UDim.new((0 - 0) - 0, (1641 - (431 + 343)) - ((484 - 244) + (1790 - 1171)));
									v308 = 1 + 0;
								end
								if (v308 == (1 + 0)) then
									v225 = Instance.new("TextLabel");
									v225.Size = UDim2.new(1, (1695 - (556 + 1139)) + (15 - (6 + 9)), 1 + 0, (0 + 0) - (169 - (28 + 141)));
									v308 = 1 + 1;
								end
								if (v308 == 2) then
									v221 = (1 - 0) + 4 + 1;
									break;
								end
							end
							break;
						end
					end
				end
				if (v221 == (1326 - (486 + 831))) then
					v226.TextColor3 = Color3.fromRGB(663 - 408, 255, 255);
					v226.Font = Enum.Font.Gotham;
					v226.TextSize = 56 - 40;
					v226.TextXAlignment = Enum.TextXAlignment.Left;
					v221 = 2 + 8;
				end
				if (v221 == (9 - 6)) then
					v223.Transparency = 0.7;
					v224 = Instance.new("Frame");
					v224.Size = UDim2.new((3007 - (668 + 595)) - (1210 + 134 + 81 + 319), (1191 - 754) - (255 + (440 - (23 + 267))), 1944 - (1129 + 815), 32);
					v224.Position = UDim2.new((387 - (371 + 16)) + (1750 - (1326 + 424)), 14 - 6, (0 - 0) + 0, 16 - (130 - (88 + 30)));
					v221 = (783 - (720 + 51)) - 8;
				end
			end
			break;
		end
	end
end
local v84 = v83((3868 - 2129) - (404 + 1335), Color3.fromRGB(506 - (183 + (1999 - (421 + 1355))), (360 - 141) - 39, 169 + 43 + 43), Color3.fromRGB((1175 - (286 + 797)) + (595 - 432), 255, 592 - (10 + (541 - 214))), "LEVEL", "⚡");
local v85 = v83(50, Color3.fromRGB((474 - (397 + 42)) + 5 + 10, 1000 - (24 + 776), (705 - 247) - ((903 - (222 + 563)) + (484 - 264))), Color3.fromRGB(255, 184 + 71, 445 - (23 + 167)), "BANK", "🏦");
local v86 = v83((1832 - (690 + 1108)) + 24 + 42, Color3.fromRGB(211 + 44, 180, 50), Color3.fromRGB((1552 - (40 + 808)) - (18 + 90 + 341), 115 + (535 - 395), 244 + 11), "HAND", "💰");
local v87 = Instance.new("Frame");
v87.Size = UDim2.new(1 + 0, -32, (0 + 0) - 0, (2099 - (47 + 524)) - (462 + 249 + (2137 - 1355)));
v87.Position = UDim2.new((0 - 0) - (0 - 0), 16, (2196 - (1165 + 561)) - (9 + 261 + (616 - 417)), -(17 + 13 + 21));
v87.BackgroundColor3 = Color3.fromRGB(1849 - ((1059 - (341 + 138)) + 335 + 904), 35, 148 - (201 - 103));
v87.BackgroundTransparency = 0.4;
v87.BorderSizePixel = 326 - (89 + 237);
v87.ZIndex = (19 - 13) + (0 - 0);
v87.Parent = v35;
Instance.new("UICorner", v87).CornerRadius = UDim.new((881 - (581 + 300)) + 0, 10);
local v96 = Instance.new("UIStroke", v87);
v96.Thickness = (1221 - (855 + 365)) + 0;
v96.Color = Color3.fromRGB((432 - 250) - (37 + 75), (1310 - (1030 + 205)) + 43 + 2, 187 + 13);
v96.Transparency = (1453.8 - (156 + 130)) - ((1465 - 820) + 522);
local v100 = Instance.new("TextLabel");
v100.Size = UDim2.new((3018 - 1227) - ((2068 - 1058) + 780), -(12 + 33 + 0), 4 - (2 + 1), 0 - (69 - (10 + 59)));
v100.Position = UDim2.new(0 + 0, 59 - 47, (2999 - (671 + 492)) - (832 + 213 + (2006 - (369 + 846))), (0 + 0) - (0 + 0));
v100.BackgroundTransparency = 1 - 0;
v100.TextColor3 = Color3.fromRGB((2630 - (1036 + 909)) - (351 + 154), (1427 + 367) - ((2150 - 869) + 293), (724 - (11 + 192)) - (28 + 121 + 117));
v100.Font = Enum.Font.Gotham;
v100.TextSize = (206 - (135 + 40)) - (41 - 24);
v100.TextXAlignment = Enum.TextXAlignment.Left;
v100.Text = "🟢 ONLINE : 0s | By Nutx";
v100.ZIndex = 1566 - (833 + 548 + 178);
v100.Parent = v87;
local v113 = Instance.new("TextButton");
v113.Size = UDim2.new((0 - 0) + 0, (34 - 11) + 5, (176 - (50 + 126)) + (0 - 0), 96 - (16 + 52));
v113.Position = UDim2.new((1414 - (1233 + 180)) + 0, -35, 0, (1443 - (522 + 447)) - ((1802 - (107 + 1314)) + 42 + 47));
v113.BackgroundColor3 = Color3.fromRGB(45, (137 - 92) + 5, 21 + 27 + (43 - 21));
v113.TextColor3 = Color3.fromRGB(255, 436 - (716 - 535), (3321 - (716 + 1194)) - (19 + 1055 + 82));
v113.Font = Enum.Font.GothamBold;
v113.TextSize = 2 + 12;
v113.Text = "👁";
v113.ZIndex = 511 - (74 + 429);
v113.Parent = v87;
Instance.new("UICorner", v113).CornerRadius = UDim.new(0 - 0, (9 + 8) - (20 - 11));
local v124 = Instance.new("UIStroke", v113);
v124.Thickness = 1 + 0;
v124.Color = Color3.fromRGB(100, (5962 - 4028) - ((528 - 314) + (2003 - (279 + 154))), (2488 - (454 + 324)) - (779 + 211 + (482 - (12 + 5))));
v124.Transparency = 0.6 + 0;
v113.MouseEnter:Connect(function()
	local v227 = 0;
	local v228;
	while true do
		if (v227 == (0 - 0)) then
			v228 = 0 + 0;
			while true do
				if (v228 == (0 + (1093 - (277 + 816)))) then
					v4:Create(v113, TweenInfo.new(0.2), {BackgroundColor3=Color3.fromRGB((123 - 94) + (1219 - (1058 + 125)), 13 + 56 + 1, 354 - (1239 - (815 + 160))),Size=UDim2.new(1726 - ((7156 - 5488) + 58), (1557 - 901) - (512 + 28 + 86), (0 - 0) - 0, 62 - (1930 - (41 + 1857)))}):Play();
					v4:Create(v124, TweenInfo.new(0.2), {Transparency=(1893.3 - (1222 + 671))}):Play();
					break;
				end
			end
			break;
		end
	end
end);
v113.MouseLeave:Connect(function()
	local v229 = 0 - 0;
	local v230;
	while true do
		if (v229 == (0 - 0)) then
			v230 = (1182 - (229 + 953)) - (1774 - (1111 + 663));
			while true do
				if (v230 == (0 + 0)) then
					v4:Create(v113, TweenInfo.new((1579.2 - (874 + 705)) + 0), {BackgroundColor3=Color3.fromRGB(6 + 34 + 5, (115 + 53) - (245 - 127), 2 + 68),Size=UDim2.new(1994 - (109 + 1885), (2176 - (642 + 37)) - (1269 + 46 + 154), (0 + 0) - (0 - 0), (1297 - (233 + 221)) - (98 + 717))}):Play();
					v4:Create(v124, TweenInfo.new((1909.2 - 1083) - (802 + 22 + 2)), {Transparency=((1541.6 - (718 + 823)) - 0)}):Play();
					break;
				end
			end
			break;
		end
	end
end);
local v128 = true;
v113.MouseButton1Click:Connect(function()
	local v231 = 0 + 0;
	local v232;
	while true do
		if (v231 == 0) then
			v232 = 805 - (266 + 539);
			while true do
				if (v232 == (5 - 3)) then
					task.wait(1225.1 - (636 + 589));
					v4:Create(v113, TweenInfo.new(0.1 - (0 - 0)), {Size=UDim2.new((0 - 0) + 0 + 0, 22 + 3 + 3, (1015 - (657 + 358)) + 0, (18 - 11) + (47 - 26))}):Play();
					break;
				end
				if (v232 == ((1189 - (1151 + 36)) - 1)) then
					local v318 = 0 + 0;
					while true do
						if (v318 == (0 + 0)) then
							v113.Text = (v128 and "👁") or "👁‍🗨";
							v4:Create(v113, TweenInfo.new((0.1 - 0) - (1832 - (1552 + 280))), {Size=UDim2.new(834 - (64 + 770), 7 + 3 + 16, (0 - 0) + 0, 22 + 1 + 3)}):Play();
							v318 = 1244 - (157 + 1086);
						end
						if (v318 == 1) then
							v232 = (3 - 1) + 0;
							break;
						end
					end
				end
				if (v232 == ((0 - 0) + (0 - 0))) then
					local v319 = 0 - 0;
					local v320;
					while true do
						if (v319 == (819 - (599 + 220))) then
							v320 = 0 - 0;
							while true do
								if (v320 == 0) then
									v128 = not v128;
									v4:Create(v14, TweenInfo.new(1433.3 - ((2728 - (1813 + 118)) + 636)), {BackgroundTransparency=((v128 and ((0 + 0) - 0)) or ((2837 - (841 + 376)) - ((1999 - 572) + 45 + 147)))}):Play();
									v320 = 2 - 1;
								end
								if (v320 == (860 - (464 + 395))) then
									v232 = (2 - 1) + 0;
									break;
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
	end
end);
local function v129(v233)
	local v234 = 0;
	local v235;
	local v236;
	local v237;
	local v238;
	local v239;
	while true do
		if (v234 == (0 + 0)) then
			v235 = 0;
			v236 = nil;
			v234 = 838 - (467 + 370);
		end
		if (v234 == (3 - 1)) then
			v239 = nil;
			while true do
				if (v235 == 0) then
					v236 = 0 - (0 + 0);
					v237 = nil;
					v235 = 3 - 2;
				end
				if (v235 == (1 + 1)) then
					while true do
						if (v236 == ((2 - 1) + (520 - (150 + 370)))) then
							v239 = math.floor(v233 % ((1310 - (74 + 1208)) + (78 - 46)));
							if (v237 > ((1546 - 1220) - (137 + 55 + (524 - (14 + 376))))) then
								return string.format("%dh %dm %ds", v237, v238, v239);
							elseif (v238 > 0) then
								return string.format("%dm %ds", v238, v239);
							else
								return string.format("%ds", v239);
							end
							break;
						end
						if (v236 == (1276 - ((547 - 231) + 622 + 338))) then
							local v359 = 0 + 0;
							local v360;
							while true do
								if (0 == v359) then
									v360 = 0 + 0;
									while true do
										if ((0 - 0) == v360) then
											v237 = math.floor(v233 / (1508 + 496 + (1674 - (23 + 55))));
											v238 = math.floor((v233 % (8531 - 4931)) / (32 + 15 + 13));
											v360 = 1;
										end
										if (v360 == 1) then
											v236 = 1 + 0;
											break;
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
				if (v235 == (1 - 0)) then
					v238 = nil;
					v239 = nil;
					v235 = 1 + 1;
				end
			end
			break;
		end
		if (v234 == (902 - (652 + 249))) then
			v237 = nil;
			v238 = nil;
			v234 = 5 - 3;
		end
	end
end
task.spawn(function()
	while v10.Parent do
		local v258 = 1868 - (708 + 1160);
		local v259;
		local v260;
		while true do
			if (v258 == (0 - 0)) then
				v259 = tick() - v7;
				v100.Text = "🟢 ONLINE : " .. v129(v259) .. " | By Nutx";
				v258 = 1;
			end
			if ((1 - 0) == v258) then
				local v276 = 27 - (10 + 17);
				while true do
					if (v276 == (1 + 0)) then
						v258 = 1734 - (1400 + 332);
						break;
					end
					if (v276 == 0) then
						v260 = (math.sin(v259 * (1.5 - 0)) * ((1908.2 - (242 + 1666)) + 0 + 0)) + (0.8 - (0 + 0));
						v100.TextTransparency = ((471 + 81) - ((1023 - (850 + 90)) + 468)) - v260;
						v276 = 1 - 0;
					end
				end
			end
			if (v258 == (1392 - (360 + 1030))) then
				task.wait(0.5 + 0);
				break;
			end
		end
	end
end);
v21.AnchorPoint = Vector2.new(0.5 - 0, (2483.5 - 677) - ((2863 - (909 + 752)) + (1827 - (109 + 1114))));
v21.Position = UDim2.new(0.5 - 0, (0 + 0) - (242 - (6 + 236)), -(0.5 + 0), (0 + 0) - (0 - 0));
v21.Size = UDim2.new((0 - 0) - (1133 - (1076 + 57)), 50 + 250, 689 - (579 + 110), 200);
v4:Create(v21, TweenInfo.new((26.80000000000001 + 299) - (40 + 5 + 149 + 131), Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.new(407.5 - (174 + 233), (0 - 0) + (0 - 0), 0.5 + 0, 0 + 0 + 0),Size=UDim2.new(1174 - (663 + 511), 189 + 22 + 169, 0 + 0 + 0, 518 - 238)}):Play();
local function v130(v240)
	local v241 = (5891 - 3980) - (340 + 952 + 619);
	local v242;
	while true do
		local v261 = 0 - 0;
		while true do
			if (v261 == (0 - 0)) then
				if (v241 == (0 + 0 + 0)) then
					local v321 = 0 - 0;
					while true do
						if (v321 == (0 + 0)) then
							v242 = v240:match("[%d,]+") or "0";
							v242 = v242:gsub(",", "");
							v321 = 1 + 0;
						end
						if (v321 == (723 - (478 + 244))) then
							v241 = (2290 - (440 + 77)) - (788 + 945 + (142 - 103));
							break;
						end
					end
				end
				if (v241 == (2 - (1557 - (655 + 901)))) then
					return tonumber(v242) or 0;
				end
				break;
			end
		end
	end
end
local function v131(v243)
	if (v243 >= ((185630 + 815404) - (96 + 29 + 614 + 295))) then
		return string.format("%.1fM", v243 / (1001948 - ((4415 - 3319) + (2297 - (695 + 750)))));
	elseif (v243 >= ((1532 - 1083) + (850 - 299))) then
		return string.format("%.1fK", v243 / (4021 - 3021));
	else
		return tostring(v243);
	end
end
local function v132(v244)
	local v245 = 351 - (285 + 66);
	local v246;
	local v247;
	while true do
		if (v245 == (2 - 1)) then
			while true do
				local v277 = 0;
				local v278;
				while true do
					if ((1310 - (682 + 628)) == v277) then
						v278 = 0;
						while true do
							if (v278 == 0) then
								if (v246 == (0 + 0)) then
									v247 = v5:WaitForChild("PlayerGui");
									for v379, v380 in ipairs(v247:GetDescendants()) do
										if (v380:IsA("TextLabel") or v380:IsA("TextBox")) then
											if (v380.Text and string.find(string.lower(v380.Text), string.lower(v244))) then
												return v380;
											end
										end
									end
									v246 = 1;
								end
								if ((300 - (176 + 123)) == v246) then
									return nil;
								end
								break;
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (v245 == (0 + 0)) then
			local v272 = 0;
			while true do
				if (v272 == 1) then
					v245 = 1;
					break;
				end
				if (v272 == (0 + 0)) then
					v246 = (269 - (239 + 30)) - (0 + 0);
					v247 = nil;
					v272 = 1 + 0;
				end
			end
		end
	end
end
task.spawn(function()
	while v10.Parent do
		local v262 = 0 - 0;
		while true do
			if (0 == v262) then
				pcall(function()
					local v283 = (0 - 0) + 0;
					local v284;
					local v285;
					while true do
						if (v283 == 0) then
							v284 = v132("bank balance");
							v285 = v132("hand balance");
							v283 = 513 - ((724 - (306 + 9)) + (359 - 256));
						end
						if (v283 == (1 + 0)) then
							v85.Text = (v284 and ("BANK : " .. v131(v130(v284.Text)))) or "BANK : Not found";
							v86.Text = (v285 and ("HAND : " .. v131(v130(v285.Text)))) or "HAND : Not found";
							break;
						end
					end
				end);
				task.wait(237 - (29 + 17 + 92 + 98));
				break;
			end
		end
	end
end);
local v133, v134, v135 = nil, nil, tick();
task.spawn(function()
	while v10.Parent do
		local v263 = 95 - ((145 - 94) + 44);
		local v264;
		local v265;
		while true do
			if (v263 == ((1376 - (1140 + 235)) + 0 + 0)) then
				task.wait((1209 + 109) - (286 + 828 + (255 - (33 + 19))));
				break;
			end
			if (v263 == ((263 + 463) - ((683 - 455) + 220 + 278))) then
				local v279 = 0;
				while true do
					if (v279 == 1) then
						v263 = (1 - 0) + 0 + 0;
						break;
					end
					if (0 == v279) then
						v264, v265 = v132("bank balance"), v132("hand balance");
						if (v264 and v265) then
							local v361 = 0;
							local v362;
							local v363;
							local v364;
							while true do
								if (v361 == 1) then
									v364 = nil;
									while true do
										if (v362 == (689 - (586 + 103))) then
											v363, v364 = v130(v264.Text), v130(v265.Text);
											if ((v363 ~= v133) or (v364 ~= v134)) then
												v133, v134, v135 = v363, v364, tick();
											elseif ((tick() - v135) >= (6 + 59 + (723 - 488))) then
												pcall(function()
													game:Shutdown();
												end);
											end
											break;
										end
									end
									break;
								end
								if (v361 == (1488 - (1309 + 179))) then
									v362 = 0 - 0;
									v363 = nil;
									v361 = 1 + 0;
								end
							end
						end
						v279 = 2 - 1;
					end
				end
			end
		end
	end
end);
task.spawn(function()
	while v10.Parent do
		local v266 = 0 + 0;
		local v267;
		while true do
			if ((0 - 0) == v266) then
				v267 = (1320 - 657) - (174 + (1098 - (295 + 314)));
				while true do
					if (v267 == ((0 - 0) - (1962 - (1300 + 662)))) then
						pcall(function()
							local v337 = 0 - 0;
							local v338;
							local v339;
							local v340;
							while true do
								if (v337 == 0) then
									v338 = game:GetService("Players");
									v339 = v338.LocalPlayer;
									v337 = 1756 - (1178 + 577);
								end
								if (v337 == (1 + 0)) then
									v340 = v339:GetAttribute("level");
									v84.Text = "LEVEL : " .. (v340 or "???");
									break;
								end
							end
						end);
						task.wait(2 - 1);
						break;
					end
				end
				break;
			end
		end
	end
end);
