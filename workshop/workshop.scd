// HelloWorld

s = Server.local;
s.boot;

{SinOsc.ar(440, 0, 0.3)}.play();



// 编程101

// Integer（整型）
440

// Float (浮点数)
440.1

// String (字符串)
"440"

// Array (数组)
[440, 441, 420]

// variable （变量）
(
var a1 = 110;
var a2 = 220;
a1 + a2;
)

// class (类)

Array.fill(0, 10)




// SynthDef


// SuperCollider通过SynthDef来创建独立的声音模板，后续可以用它快速创建Node（可以认为以SynthDef为模板创建了一个声音对象）

// s这种单字母的变量在SuperCollider中代表全局变量, s通常都是local server

(
SynthDef(\helpsine, {arg freq=440,amp=0.3;
	var out;
	out = SinOsc.ar(freq, 0, amp);
	Out.ar(0, out);
}).add;
)

// ### 生成声音


s.sendMsg(\s_new, \helpsine, 1020, 1, 0);

// 改变synth的参数

s.sendMsg(\n_set, 1020, \freq, 1300, \amp, 0.3);

// 释放掉

s.sendMsg(\n_free, 1020);


// 上述命令通过 `.sendMsg()` 执行时是发送乐OSC(OpenSoundControll)信息给sc的server。\s_new代表用指定SynthDef来创建node, \n_set来改变node的参数, \n_free来释放node



// ### Unit Generater来创建复杂的SynthDef

// 调制
SynthDef(\fm1, {
	arg freq = 440, freq2 = 400, amp = 0.5, pan = 0;
	var source;
	// SinOsc的freq部分传入Saw
	source = SinOsc.ar(LFSaw.kr(1, 0, freq, freq2));
	source = Pan2.ar(source, pan);
	Out.ar(0, source * amp);
}).add;


s.sendMsg(\s_new, \fm1, 1020, 1, 0, \freq, 1000, \freq2, 100, \pan, -1);

// 双耳节拍
SynthDef(\beats, {
	arg freq = 440, freq2 = 400, amp = 0.5, pan = 0;
	var source;
	// SinOsc的freq部分传入Saw
	source = SinOsc.ar([freq, freq2]);
	source = Pan2.ar(source, pan);
	Out.ar(0, source * amp);
}).add;

s.sendMsg(\s_new, \beats, 1020, 1, 0, \freq, 1000, \freq2, 1010, \pan, -1);


// 加法合成
SynthDef(\add, { |freq=440, amp=0.5, pan=0|
	var source;
	source = Saw.ar(freq) + SinOsc.ar(freq/2);
	source = Pan2.ar(source, pan);
	Out.ar(0, source * amp);
}).add

s.sendMsg(\s_new, \add, 1020, 1, 0, \freq, 1000, \pan, 0);

// 滤波
(
SynthDef(\filter, { |freq=440, amp=0.5, pan=0|
	var source;
	source = WhiteNoise.ar();
	source = RHPF.ar(source, freq: freq);
	source = Pan2.ar(source, pan);
	Out.ar(0, source * amp);
}).add
)

s.sendMsg(\s_new, \filter, 1020, 1, 0, \freq, 10000, \pan, 0);


// 同时创建多个node

(
s.sendMsg(\s_new, \add, 1020, 1, 0, \freq, 400, \pan, -1, \amp, 0.3);
s.sendMsg(\s_new, \add, 1021, 1, 0, \freq, 405, \pan, -0.5, \amp, 0.1);
s.sendMsg(\s_new, \add, 1022, 1, 0, \freq, 410, \pan, 0, \amp, 0.2);
s.sendMsg(\s_new, \add, 1023, 1, 0, \freq, 415, \pan, 0.5, \amp, 0.1);
s.sendMsg(\s_new, \add, 1024, 1, 0, \freq, 420, \pan, 1, \amp, 0.3);
s.sendMsg(\s_new, \add, 1025, 1, 0, \freq, 1000, \pan, 0, \amp, 0.2);
s.sendMsg(\s_new, \add, 1026, 1, 0, \freq, 100, \pan, 0, \amp, 0.2);
)

(
s.sendMsg(\n_set, 1025, \freq, 430, \amp, 0.1);
)


// 不直接使用osc, sclang会帮你发送对应osc命令

Synth(\beats, [\freq, 440, \freq2, 450])


// Envelope, 包络

Env.linen(1, 2, 3, 0.6).test.plot
Env.new([0, 1, 0.3, 0.8, 0], [2, 3, 1, 4], -2).test.plot;
Env.triangle(1, 1).test.plot;
Env.sine(1,1).test.plot;
Env.perc(0.05, 1, 1, -4).test.plot;
Env.asr(0.02, 0.5, 1, 1, -4).test.plot;
Env.adsr(0.02, 0.2, 0.25, 1, 1, -4).test.plot;
Env.dadsr(0.5,0.02, 0.2, 0.25, 1, 1, -4).test.plot;
Env.cutoff(1, 1, 4).test.plot;

// SynthDef中使用包络

(
SynthDef(\beats1, {
	arg freq = 440, freq2 = 400, amp = 0.5, pan = 0;
	var source, env, envgen;
	env = Env.linen(10, 20, 30);
	envgen = EnvGen.ar(env, doneAction: Done.freeSelf);
	source = SinOsc.ar([freq, freq2]);
	source = Pan2.ar(source*envgen, pan);
	Out.ar(0, source * amp);
}).add;
)

Synth(\beats1, [\freq, 440, \freq2, 450])

// 从时长dur成为参数
(
SynthDef(\beats2, {
	arg freq = 440, freq2 = 400, amp = 0.5, pan = 0, dur=10;
	var source, env, envgen;
	env = Env.linen(0.3, 0.5, 0.2);
	envgen = EnvGen.ar(env, doneAction: Done.freeSelf, timeScale: dur);
	source = SinOsc.ar([freq, freq2]);
	source = Pan2.ar(source*envgen, pan);
	Out.ar(0, source * amp);
}).add;
)

// part1
Synth(\beats2, [\freq, 1000, \freq2, 1020, \dur, 100])

// part2
(
Synth(\beats2, [\freq, 50, \freq2, 60, \dur, 5, \pan, -1]);
Synth(\beats2, [\freq, 60, \freq2, 70, \dur, 30, \pan, 1]);
Synth(\beats2, [\freq, 100, \freq2, 120, \dur, 100, \pan, 0]);
Synth(\beats2, [\freq, 440, \freq2, 420, \dur, 200, \pan, 0.2]);
)



// 随机

rrand(10, 100)


Synth(\beats2, [\freq, rrand(440, 450), \freq2, rrand(440, 450), \dur, 10, \pan, 0.2]);
Synth(\beats2, [\freq, rrand(440, 450), \freq2, rrand(440, 450), \dur, rrand(0, 100), \pan, 0.2]);




// boot super dirt

SuperDirt.boot