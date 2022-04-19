//Drawing the background
draw_sprite(sprGame, 0, 0, 0);

// Calculate the position of the ball and the bounce intensity
var _targetTimestepSize = keyboard_check(vk_anykey) ? 0.001 : 0.007;
ballTimestep += (_targetTimestepSize - ballTimestep) * 0.05;
ballTime += ballTimestep;
var _ballAxisFunctions = [ballTime, 1.5 * ballTime + .25];
var _ballPosition = [(abs((_ballAxisFunctions[0] % 2.) - 1)) * (room_width - 16) + 8, (abs((_ballAxisFunctions[1] % 2.) - 1)) * (room_height - 16) + 8];
var _ballAxisBounce = [min(1.0, frac(_ballAxisFunctions[0]) * 1.5), min(1.0, frac(_ballAxisFunctions[1]) * 1.5)];
bounceIntensity = ((1.0 - _ballAxisBounce[0]) * (1.0 - _ballAxisBounce[0]) * (1.0 - _ballAxisBounce[0]) * (1.0 - _ballAxisBounce[0])) +
				  ((1.0 - _ballAxisBounce[1]) * (1.0 - _ballAxisBounce[1]) * (1.0 - _ballAxisBounce[1]) * (1.0 - _ballAxisBounce[1]));

// Draw the ball
draw_circle_color(_ballPosition[0], _ballPosition[1], 8, c_white, c_white, false);
draw_circle_color(_ballPosition[0], _ballPosition[1], 7, c_black, c_black, false);