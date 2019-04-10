// J/K to switch tabs
map('J', 'E');
map('K', 'R');

// H/L for history
map('H', 'S');
map('L', 'D');

map('u', 'X'); // reopening the last closed tab is also considered an undo

map('<Ctrl-p>', 't'); // C-p for the omnibar
settings.startToShowEmoji = 0;
settings.hintAlign = "left";
settings.blackListPattern = /.*ratatype.com.*|.*mail.google.com.*/i;
settings.scrollStepSize = 140;

unmapAllExcept(['J','K','x','<Ctrl-p>'], /inoreader.com/i);

// Hints
Hints.characters = 'sadfjklewcmpgh'; // use vimium's hint characters
Hints.style('background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FFF785), color-stop(100%,#FFC542)); border: 1px solid #E3BE23;'); // copy vimium's hint style for links

// open links in new tab (temporary until a solution for https://github.com/brookhong/Surfingkeys/issues/836 is found)
map('f', 'gf');
