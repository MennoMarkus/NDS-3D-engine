	.arch armv5te
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"Main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	loadTextures
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	loadTextures, %function
loadTextures:
.LFB192:
	.file 1 "B:/GbaDev/NDSProjects/NDS-3D-engine/arm9/source/Main.c"
	.loc 1 78 20 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 79 2 view .LVU1
	.loc 1 80 2 view .LVU2
	.loc 1 78 20 is_stmt 0 view .LVU3
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	.loc 1 80 2 view .LVU4
	add	r1, sp, #24
	ldr	r0, .L3
	bl	loadPCX
.LVL0:
	.loc 1 81 2 is_stmt 1 view .LVU5
	add	r0, sp, #24
	bl	image8to16
.LVL1:
	.loc 1 83 2 view .LVU6
	ldr	r4, .L3+4
	movs	r0, #1
	movs	r1, r4
	bl	glGenTextures
.LVL2:
	.loc 1 84 2 view .LVU7
	ldr	r1, [r4]
	movs	r0, #0
	bl	glBindTexture
.LVL3:
	.loc 1 85 2 view .LVU8
	ldr	r3, [sp, #36]
	movs	r2, #8
	str	r3, [sp, #20]
	str	r3, [sp, #12]
	movs	r3, #128
	lsls	r3, r3, #23
	str	r3, [sp, #8]
	movs	r3, #0
	str	r3, [sp, #4]
	adds	r3, r3, #4
	str	r3, [sp]
	movs	r1, #0
	movs	r0, #0
	bl	glTexImage2D
.LVL4:
	.loc 1 87 2 view .LVU9
	add	r0, sp, #24
	bl	imageDestroy
.LVL5:
	.loc 1 88 2 view .LVU10
	.loc 1 89 1 is_stmt 0 view .LVU11
	movs	r0, #1
	add	sp, sp, #40
	@ sp needed
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	Peanut_pcx
	.word	texture
	.cfi_endproc
.LFE192:
	.size	loadTextures, .-loadTextures
	.align	1
	.p2align 2,,3
	.global	drawScene
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawScene, %function
drawScene:
.LFB193:
	.loc 1 91 17 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 92 2 view .LVU13
.LVL6:
.LBB170:
.LBI170:
	.file 2 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/videoGL.h"
	.loc 2 576 7 view .LVU14
.LBB171:
	.loc 2 576 55 view .LVU15
.LBE171:
.LBE170:
	.loc 1 91 17 is_stmt 0 view .LVU16
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	.cfi_offset 9, -36
	.cfi_offset 10, -32
	.cfi_offset 11, -28
.LBB174:
.LBB175:
	.loc 2 707 51 view .LVU17
	movs	r7, #0
.LBE175:
.LBE174:
.LBB178:
.LBB172:
	.loc 2 576 77 view .LVU18
	ldr	r3, .L6
	ldr	r2, .L6+4
.LBE172:
.LBE178:
	.loc 1 97 2 view .LVU19
	movs	r5, #128
.LBB179:
.LBB173:
	.loc 2 576 77 view .LVU20
	str	r2, [r3]
.LVL7:
	.loc 2 576 77 view .LVU21
.LBE173:
.LBE179:
	.loc 1 95 2 is_stmt 1 view .LVU22
.LBB180:
.LBI174:
	.loc 2 707 7 view .LVU23
.LBB176:
	.loc 2 707 30 view .LVU24
	.loc 2 707 51 is_stmt 0 view .LVU25
	ldr	r3, .L6+8
.LBE176:
.LBE180:
	.loc 1 97 2 view .LVU26
	lsls	r5, r5, #5
.LBB181:
.LBB177:
	.loc 2 707 51 view .LVU27
	str	r7, [r3]
.LBE177:
.LBE181:
	.loc 1 96 2 is_stmt 1 view .LVU28
	ldr	r3, .L6+12
	.loc 1 97 2 is_stmt 0 view .LVU29
	movs	r1, r5
	.loc 1 96 2 view .LVU30
	ldr	r2, [r3]
.LVL8:
.LBB182:
.LBI182:
	.loc 2 662 7 is_stmt 1 view .LVU31
.LBB183:
	.loc 2 663 2 view .LVU32
	.loc 2 663 24 is_stmt 0 view .LVU33
	ldr	r3, .L6+16
.LBE183:
.LBE182:
.LBB185:
.LBB186:
.LBB187:
	.loc 2 702 52 view .LVU34
	ldr	r4, .L6+20
.LBE187:
.LBE186:
.LBE185:
.LBB194:
.LBB184:
	.loc 2 663 24 view .LVU35
	str	r7, [r3]
	.loc 2 664 2 is_stmt 1 view .LVU36
	.loc 2 664 24 is_stmt 0 view .LVU37
	str	r7, [r3]
	.loc 2 665 2 is_stmt 1 view .LVU38
	.loc 2 665 24 is_stmt 0 view .LVU39
	str	r2, [r3]
.LVL9:
	.loc 2 665 24 view .LVU40
.LBE184:
.LBE194:
	.loc 1 97 2 is_stmt 1 view .LVU41
	ldr	r3, .L6+24
	movs	r2, #0
	mov	fp, r3
	mov	r0, fp
	movs	r3, #0
	ldr	r0, [r0]
	bl	glRotatef32i
.LVL10:
	.loc 1 98 2 view .LVU42
	ldr	r3, .L6+28
	movs	r2, r5
	mov	r10, r3
	mov	r0, r10
	movs	r3, #0
	movs	r1, #0
	ldr	r0, [r0]
	bl	glRotatef32i
.LVL11:
	.loc 1 101 2 view .LVU43
	.loc 2 542 26 view .LVU44
.LBB195:
.LBI195:
	.loc 2 781 6 view .LVU45
.LBB196:
	.loc 2 782 2 view .LVU46
	.loc 2 782 24 is_stmt 0 view .LVU47
	ldr	r2, .L6+32
	ldr	r3, .L6+36
.LBE196:
.LBE195:
	.loc 1 102 2 view .LVU48
	movs	r0, #1
.LBB198:
.LBB197:
	.loc 2 782 24 view .LVU49
	str	r3, [r2]
.LVL12:
	.loc 2 782 24 view .LVU50
.LBE197:
.LBE198:
	.loc 1 102 2 is_stmt 1 view .LVU51
	ldr	r3, .L6+40
.LBB199:
.LBB191:
.LBB188:
	.loc 2 702 52 is_stmt 0 view .LVU52
	mov	r8, r4
.LBE188:
.LBE191:
.LBE199:
	.loc 1 102 2 view .LVU53
	ldr	r1, [r3]
	bl	glBindTexture
.LVL13:
	.loc 1 103 2 is_stmt 1 view .LVU54
.LBB200:
.LBI200:
	.loc 2 556 7 view .LVU55
.LBB201:
	.loc 2 556 39 view .LVU56
	.loc 2 556 61 is_stmt 0 view .LVU57
	movs	r1, #1
	ldr	r3, .L6+44
.LBE201:
.LBE200:
.LBB203:
.LBB204:
	.loc 2 591 24 view .LVU58
	ldr	r6, .L6+48
.LBE204:
.LBE203:
.LBB208:
.LBB202:
	.loc 2 556 61 view .LVU59
	str	r1, [r3]
.LVL14:
	.loc 2 556 61 view .LVU60
.LBE202:
.LBE208:
	.loc 1 105 3 is_stmt 1 view .LVU61
.LBB209:
.LBI185:
	.loc 2 1444 6 view .LVU62
.LBE209:
	.loc 2 1445 2 view .LVU63
.LBB210:
.LBB192:
.LBI186:
	.loc 2 702 7 view .LVU64
.LBB189:
	.loc 2 702 30 view .LVU65
	.loc 2 702 52 is_stmt 0 view .LVU66
	ldr	r3, .L6+52
.LBE189:
.LBE192:
.LBE210:
	.loc 1 106 3 view .LVU67
	movs	r1, #0
.LBB211:
.LBB193:
.LBB190:
	.loc 2 702 52 view .LVU68
	str	r3, [r4]
.LVL15:
	.loc 2 702 52 view .LVU69
.LBE190:
.LBE193:
.LBE211:
	.loc 1 106 3 is_stmt 1 view .LVU70
.LBB212:
.LBB205:
	.loc 2 591 24 is_stmt 0 view .LVU71
	ldr	r4, .L6+56
.LBE205:
.LBE212:
	.loc 1 106 3 view .LVU72
	movs	r0, #0
	bl	glTexCoord2f32
.LVL16:
	.loc 1 106 25 is_stmt 1 view .LVU73
.LBB213:
.LBI203:
	.loc 2 590 6 view .LVU74
.LBB206:
	.loc 2 591 2 view .LVU75
	.loc 2 591 24 is_stmt 0 view .LVU76
	str	r6, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU77
.LBE206:
.LBE213:
	.loc 1 107 3 is_stmt 0 view .LVU78
	movs	r0, r5
.LBB214:
.LBB207:
	.loc 2 592 24 view .LVU79
	str	r5, [r4]
.LVL17:
	.loc 2 592 24 view .LVU80
.LBE207:
.LBE214:
	.loc 1 107 3 is_stmt 1 view .LVU81
	movs	r1, #0
	bl	glTexCoord2f32
.LVL18:
	.loc 1 107 28 view .LVU82
.LBB215:
.LBI215:
	.loc 2 590 6 view .LVU83
.LBB216:
	.loc 2 591 2 view .LVU84
	.loc 2 591 24 is_stmt 0 view .LVU85
	ldr	r3, .L6+60
.LBE216:
.LBE215:
	.loc 1 108 3 view .LVU86
	movs	r1, r5
.LBB219:
.LBB217:
	.loc 2 591 24 view .LVU87
	str	r3, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU88
.LBE217:
.LBE219:
	.loc 1 108 3 is_stmt 0 view .LVU89
	movs	r0, r5
.LBB220:
.LBB218:
	.loc 2 592 24 view .LVU90
	str	r5, [r4]
.LVL19:
	.loc 2 592 24 view .LVU91
.LBE218:
.LBE220:
	.loc 1 108 3 is_stmt 1 view .LVU92
	bl	glTexCoord2f32
.LVL20:
	.loc 1 108 31 view .LVU93
.LBB221:
.LBI221:
	.loc 2 590 6 view .LVU94
.LBB222:
	.loc 2 591 2 view .LVU95
	.loc 2 591 24 is_stmt 0 view .LVU96
	ldr	r1, .L6+64
.LBE222:
.LBE221:
	.loc 1 109 3 view .LVU97
	movs	r0, #0
.LBB225:
.LBB223:
	.loc 2 591 24 view .LVU98
	mov	r9, r1
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU99
.LBE223:
.LBE225:
	.loc 1 109 3 is_stmt 0 view .LVU100
	movs	r1, r5
.LBB226:
.LBB224:
	.loc 2 592 24 view .LVU101
	str	r5, [r4]
.LVL21:
	.loc 2 592 24 view .LVU102
.LBE224:
.LBE226:
	.loc 1 109 3 is_stmt 1 view .LVU103
	bl	glTexCoord2f32
.LVL22:
	.loc 1 109 28 view .LVU104
.LBB227:
.LBI227:
	.loc 2 590 6 view .LVU105
.LBB228:
	.loc 2 591 2 view .LVU106
.LBE228:
.LBE227:
.LBB231:
.LBB232:
.LBB233:
	.loc 2 702 52 is_stmt 0 view .LVU107
	movs	r3, #224
	mov	r0, r8
.LBE233:
.LBE232:
.LBE231:
.LBB240:
.LBB229:
	.loc 2 591 24 view .LVU108
	ldr	r1, .L6+68
.LBE229:
.LBE240:
.LBB241:
.LBB237:
.LBB234:
	.loc 2 702 52 view .LVU109
	lsls	r3, r3, #24
.LBE234:
.LBE237:
.LBE241:
.LBB242:
.LBB230:
	.loc 2 591 24 view .LVU110
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU111
	.loc 2 592 24 is_stmt 0 view .LVU112
	str	r5, [r4]
.LVL23:
	.loc 2 592 24 view .LVU113
.LBE230:
.LBE242:
	.loc 1 111 3 is_stmt 1 view .LVU114
.LBB243:
.LBI231:
	.loc 2 1444 6 view .LVU115
.LBE243:
	.loc 2 1445 2 view .LVU116
.LBB244:
.LBB238:
.LBI232:
	.loc 2 702 7 view .LVU117
.LBB235:
	.loc 2 702 30 view .LVU118
.LBE235:
.LBE238:
.LBE244:
	.loc 1 112 3 is_stmt 0 view .LVU119
	movs	r1, #0
.LBB245:
.LBB239:
.LBB236:
	.loc 2 702 52 view .LVU120
	str	r3, [r0]
.LVL24:
	.loc 2 702 52 view .LVU121
.LBE236:
.LBE239:
.LBE245:
	.loc 1 112 3 is_stmt 1 view .LVU122
	movs	r0, r5
	bl	glTexCoord2f32
.LVL25:
	.loc 1 112 28 view .LVU123
.LBB246:
.LBI246:
	.loc 2 590 6 view .LVU124
.LBB247:
	.loc 2 591 2 view .LVU125
	.loc 2 591 24 is_stmt 0 view .LVU126
	str	r6, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU127
	.loc 2 592 24 is_stmt 0 view .LVU128
	ldr	r6, .L6+72
.LBE247:
.LBE246:
	.loc 1 113 3 view .LVU129
	movs	r1, r5
.LBB249:
.LBB248:
	.loc 2 592 24 view .LVU130
	str	r6, [r4]
.LVL26:
	.loc 2 592 24 view .LVU131
.LBE248:
.LBE249:
	.loc 1 113 3 is_stmt 1 view .LVU132
	movs	r0, r5
	bl	glTexCoord2f32
.LVL27:
	.loc 1 113 31 view .LVU133
.LBB250:
.LBI250:
	.loc 2 590 6 view .LVU134
.LBB251:
	.loc 2 591 2 view .LVU135
	.loc 2 591 24 is_stmt 0 view .LVU136
	ldr	r1, .L6+68
.LBE251:
.LBE250:
	.loc 1 114 3 view .LVU137
	movs	r0, #0
.LBB253:
.LBB252:
	.loc 2 591 24 view .LVU138
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU139
	.loc 2 592 24 is_stmt 0 view .LVU140
	str	r6, [r4]
.LVL28:
	.loc 2 592 24 view .LVU141
.LBE252:
.LBE253:
	.loc 1 114 3 is_stmt 1 view .LVU142
	movs	r1, r5
	bl	glTexCoord2f32
.LVL29:
	.loc 1 114 28 view .LVU143
.LBB254:
.LBI254:
	.loc 2 590 6 view .LVU144
.LBB255:
	.loc 2 591 2 view .LVU145
	.loc 2 591 24 is_stmt 0 view .LVU146
	mov	r0, r9
.LBE255:
.LBE254:
	.loc 1 115 3 view .LVU147
	movs	r1, #0
.LBB257:
.LBB256:
	.loc 2 591 24 view .LVU148
	str	r0, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU149
	.loc 2 592 24 is_stmt 0 view .LVU150
	str	r6, [r4]
.LVL30:
	.loc 2 592 24 view .LVU151
.LBE256:
.LBE257:
	.loc 1 115 3 is_stmt 1 view .LVU152
	movs	r0, #0
	bl	glTexCoord2f32
.LVL31:
	.loc 1 115 25 view .LVU153
.LBB258:
.LBI258:
	.loc 2 590 6 view .LVU154
.LBB259:
	.loc 2 591 2 view .LVU155
.LBE259:
.LBE258:
.LBB263:
.LBB264:
.LBB265:
	.loc 2 702 52 is_stmt 0 view .LVU156
	mov	r0, r8
.LBE265:
.LBE264:
.LBE263:
.LBB270:
.LBB260:
	.loc 2 591 24 view .LVU157
	ldr	r2, .L6+60
.LBE260:
.LBE270:
.LBB271:
.LBB268:
.LBB266:
	.loc 2 702 52 view .LVU158
	ldr	r3, .L6+76
.LBE266:
.LBE268:
.LBE271:
.LBB272:
.LBB261:
	.loc 2 591 24 view .LVU159
	str	r2, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU160
.LBE261:
.LBE272:
	.loc 1 118 3 is_stmt 0 view .LVU161
	movs	r1, r5
.LBB273:
.LBB262:
	.loc 2 592 24 view .LVU162
	str	r6, [r4]
.LVL32:
	.loc 2 592 24 view .LVU163
.LBE262:
.LBE273:
	.loc 1 117 3 is_stmt 1 view .LVU164
.LBB274:
.LBI263:
	.loc 2 1444 6 view .LVU165
.LBE274:
	.loc 2 1445 2 view .LVU166
.LBB275:
.LBB269:
.LBI264:
	.loc 2 702 7 view .LVU167
.LBB267:
	.loc 2 702 30 view .LVU168
	.loc 2 702 52 is_stmt 0 view .LVU169
	str	r3, [r0]
.LVL33:
	.loc 2 702 52 view .LVU170
.LBE267:
.LBE269:
.LBE275:
	.loc 1 118 3 is_stmt 1 view .LVU171
	movs	r0, #0
	bl	glTexCoord2f32
.LVL34:
	.loc 1 118 28 view .LVU172
.LBB276:
.LBI276:
	.loc 2 590 6 view .LVU173
.LBB277:
	.loc 2 591 2 view .LVU174
	.loc 2 591 24 is_stmt 0 view .LVU175
	ldr	r1, .L6+68
.LBE277:
.LBE276:
	.loc 1 119 3 view .LVU176
	movs	r0, #0
.LBB279:
.LBB278:
	.loc 2 591 24 view .LVU177
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU178
	.loc 2 592 24 is_stmt 0 view .LVU179
	str	r6, [r4]
.LVL35:
	.loc 2 592 24 view .LVU180
.LBE278:
.LBE279:
	.loc 1 119 3 is_stmt 1 view .LVU181
	movs	r1, #0
	bl	glTexCoord2f32
.LVL36:
	.loc 1 119 25 view .LVU182
.LBB280:
.LBI280:
	.loc 2 590 6 view .LVU183
.LBB281:
	.loc 2 591 2 view .LVU184
	.loc 2 591 24 is_stmt 0 view .LVU185
	ldr	r1, .L6+68
.LBE281:
.LBE280:
	.loc 1 120 3 view .LVU186
	movs	r0, r5
.LBB283:
.LBB282:
	.loc 2 591 24 view .LVU187
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU188
	.loc 2 592 24 is_stmt 0 view .LVU189
	str	r5, [r4]
.LVL37:
	.loc 2 592 24 view .LVU190
.LBE282:
.LBE283:
	.loc 1 120 3 is_stmt 1 view .LVU191
	movs	r1, #0
	bl	glTexCoord2f32
.LVL38:
	.loc 1 120 28 view .LVU192
.LBB284:
.LBI284:
	.loc 2 590 6 view .LVU193
.LBB285:
	.loc 2 591 2 view .LVU194
	.loc 2 591 24 is_stmt 0 view .LVU195
	mov	r0, r9
.LBE285:
.LBE284:
	.loc 1 121 3 view .LVU196
	movs	r1, r5
.LBB288:
.LBB286:
	.loc 2 591 24 view .LVU197
	str	r0, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU198
.LBE286:
.LBE288:
	.loc 1 121 3 is_stmt 0 view .LVU199
	movs	r0, r5
.LBB289:
.LBB287:
	.loc 2 592 24 view .LVU200
	str	r5, [r4]
.LVL39:
	.loc 2 592 24 view .LVU201
.LBE287:
.LBE289:
	.loc 1 121 3 is_stmt 1 view .LVU202
	bl	glTexCoord2f32
.LVL40:
	.loc 1 121 31 view .LVU203
.LBB290:
.LBI290:
	.loc 2 590 6 view .LVU204
.LBB291:
	.loc 2 591 2 view .LVU205
	.loc 2 591 24 is_stmt 0 view .LVU206
	mov	r0, r9
.LBE291:
.LBE290:
.LBB294:
.LBB295:
.LBB296:
	.loc 2 702 52 view .LVU207
	movs	r3, #128
.LBE296:
.LBE295:
.LBE294:
.LBB303:
.LBB292:
	.loc 2 591 24 view .LVU208
	str	r0, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU209
.LBE292:
.LBE303:
.LBB304:
.LBB300:
.LBB297:
	.loc 2 702 52 is_stmt 0 view .LVU210
	mov	r0, r8
	lsls	r3, r3, #12
.LBE297:
.LBE300:
.LBE304:
.LBB305:
.LBB293:
	.loc 2 592 24 view .LVU211
	str	r6, [r4]
.LVL41:
	.loc 2 592 24 view .LVU212
.LBE293:
.LBE305:
	.loc 1 123 3 is_stmt 1 view .LVU213
.LBB306:
.LBI294:
	.loc 2 1444 6 view .LVU214
.LBE306:
	.loc 2 1445 2 view .LVU215
.LBB307:
.LBB301:
.LBI295:
	.loc 2 702 7 view .LVU216
.LBB298:
	.loc 2 702 30 view .LVU217
.LBE298:
.LBE301:
.LBE307:
	.loc 1 124 3 is_stmt 0 view .LVU218
	movs	r1, r5
.LBB308:
.LBB302:
.LBB299:
	.loc 2 702 52 view .LVU219
	str	r3, [r0]
.LVL42:
	.loc 2 702 52 view .LVU220
.LBE299:
.LBE302:
.LBE308:
	.loc 1 124 3 is_stmt 1 view .LVU221
	movs	r0, r5
	bl	glTexCoord2f32
.LVL43:
	.loc 1 124 31 view .LVU222
.LBB309:
.LBI309:
	.loc 2 590 6 view .LVU223
.LBB310:
	.loc 2 591 2 view .LVU224
	.loc 2 591 24 is_stmt 0 view .LVU225
	ldr	r3, .L6+48
.LBE310:
.LBE309:
	.loc 1 125 3 view .LVU226
	movs	r1, r5
.LBB313:
.LBB311:
	.loc 2 591 24 view .LVU227
	str	r3, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU228
.LBE311:
.LBE313:
	.loc 1 125 3 is_stmt 0 view .LVU229
	movs	r0, #0
.LBB314:
.LBB312:
	.loc 2 592 24 view .LVU230
	str	r6, [r4]
.LVL44:
	.loc 2 592 24 view .LVU231
.LBE312:
.LBE314:
	.loc 1 125 3 is_stmt 1 view .LVU232
	bl	glTexCoord2f32
.LVL45:
	.loc 1 125 28 view .LVU233
.LBB315:
.LBI315:
	.loc 2 590 6 view .LVU234
.LBB316:
	.loc 2 591 2 view .LVU235
	.loc 2 591 24 is_stmt 0 view .LVU236
	ldr	r2, .L6+60
.LBE316:
.LBE315:
	.loc 1 126 3 view .LVU237
	movs	r1, #0
.LBB319:
.LBB317:
	.loc 2 591 24 view .LVU238
	str	r2, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU239
.LBE317:
.LBE319:
	.loc 1 126 3 is_stmt 0 view .LVU240
	movs	r0, #0
.LBB320:
.LBB318:
	.loc 2 592 24 view .LVU241
	str	r6, [r4]
.LVL46:
	.loc 2 592 24 view .LVU242
.LBE318:
.LBE320:
	.loc 1 126 3 is_stmt 1 view .LVU243
	bl	glTexCoord2f32
.LVL47:
	.loc 1 126 25 view .LVU244
.LBB321:
.LBI321:
	.loc 2 590 6 view .LVU245
.LBB322:
	.loc 2 591 2 view .LVU246
	.loc 2 591 24 is_stmt 0 view .LVU247
	ldr	r2, .L6+60
.LBE322:
.LBE321:
	.loc 1 127 3 view .LVU248
	movs	r0, r5
.LBB325:
.LBB323:
	.loc 2 591 24 view .LVU249
	str	r2, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU250
.LBE323:
.LBE325:
	.loc 1 127 3 is_stmt 0 view .LVU251
	movs	r1, #0
.LBB326:
.LBB324:
	.loc 2 592 24 view .LVU252
	str	r5, [r4]
.LVL48:
	.loc 2 592 24 view .LVU253
.LBE324:
.LBE326:
	.loc 1 127 3 is_stmt 1 view .LVU254
	bl	glTexCoord2f32
.LVL49:
	.loc 1 127 28 view .LVU255
.LBB327:
.LBI327:
	.loc 2 590 6 view .LVU256
.LBB328:
	.loc 2 591 2 view .LVU257
.LBE328:
.LBE327:
.LBB332:
.LBB333:
.LBB334:
	.loc 2 702 52 is_stmt 0 view .LVU258
	mov	r0, r8
.LBE334:
.LBE333:
.LBE332:
.LBB339:
.LBB329:
	.loc 2 591 24 view .LVU259
	ldr	r3, .L6+48
.LBE329:
.LBE339:
	.loc 1 130 3 view .LVU260
	movs	r1, #0
.LBB340:
.LBB330:
	.loc 2 591 24 view .LVU261
	str	r3, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU262
.LBE330:
.LBE340:
.LBB341:
.LBB337:
.LBB335:
	.loc 2 702 52 is_stmt 0 view .LVU263
	ldr	r3, .L6+80
.LBE335:
.LBE337:
.LBE341:
.LBB342:
.LBB331:
	.loc 2 592 24 view .LVU264
	str	r5, [r4]
.LVL50:
	.loc 2 592 24 view .LVU265
.LBE331:
.LBE342:
	.loc 1 129 3 is_stmt 1 view .LVU266
.LBB343:
.LBI332:
	.loc 2 1444 6 view .LVU267
.LBE343:
	.loc 2 1445 2 view .LVU268
.LBB344:
.LBB338:
.LBI333:
	.loc 2 702 7 view .LVU269
.LBB336:
	.loc 2 702 30 view .LVU270
	.loc 2 702 52 is_stmt 0 view .LVU271
	str	r3, [r0]
.LVL51:
	.loc 2 702 52 view .LVU272
.LBE336:
.LBE338:
.LBE344:
	.loc 1 130 3 is_stmt 1 view .LVU273
	movs	r0, r5
	bl	glTexCoord2f32
.LVL52:
	.loc 1 130 28 view .LVU274
.LBB345:
.LBI345:
	.loc 2 590 6 view .LVU275
.LBB346:
	.loc 2 591 2 view .LVU276
	.loc 2 591 24 is_stmt 0 view .LVU277
	ldr	r2, .L6+60
.LBE346:
.LBE345:
	.loc 1 131 3 view .LVU278
	movs	r1, r5
.LBB349:
.LBB347:
	.loc 2 591 24 view .LVU279
	str	r2, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU280
.LBE347:
.LBE349:
	.loc 1 131 3 is_stmt 0 view .LVU281
	movs	r0, r5
.LBB350:
.LBB348:
	.loc 2 592 24 view .LVU282
	str	r6, [r4]
.LVL53:
	.loc 2 592 24 view .LVU283
.LBE348:
.LBE350:
	.loc 1 131 3 is_stmt 1 view .LVU284
	bl	glTexCoord2f32
.LVL54:
	.loc 1 131 31 view .LVU285
.LBB351:
.LBI351:
	.loc 2 590 6 view .LVU286
.LBB352:
	.loc 2 591 2 view .LVU287
	.loc 2 591 24 is_stmt 0 view .LVU288
	mov	r0, r9
.LBE352:
.LBE351:
	.loc 1 132 3 view .LVU289
	movs	r1, r5
.LBB354:
.LBB353:
	.loc 2 591 24 view .LVU290
	str	r0, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU291
	.loc 2 592 24 is_stmt 0 view .LVU292
	str	r6, [r4]
.LVL55:
	.loc 2 592 24 view .LVU293
.LBE353:
.LBE354:
	.loc 1 132 3 is_stmt 1 view .LVU294
	movs	r0, #0
	bl	glTexCoord2f32
.LVL56:
	.loc 1 132 28 view .LVU295
.LBB355:
.LBI355:
	.loc 2 590 6 view .LVU296
.LBB356:
	.loc 2 591 2 view .LVU297
	.loc 2 591 24 is_stmt 0 view .LVU298
	mov	r0, r9
.LBE356:
.LBE355:
	.loc 1 133 3 view .LVU299
	movs	r1, #0
.LBB358:
.LBB357:
	.loc 2 591 24 view .LVU300
	str	r0, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU301
	.loc 2 592 24 is_stmt 0 view .LVU302
	str	r5, [r4]
.LVL57:
	.loc 2 592 24 view .LVU303
.LBE357:
.LBE358:
	.loc 1 133 3 is_stmt 1 view .LVU304
	movs	r0, #0
	bl	glTexCoord2f32
.LVL58:
	.loc 1 133 25 view .LVU305
.LBB359:
.LBI359:
	.loc 2 590 6 view .LVU306
.LBB360:
	.loc 2 591 2 view .LVU307
.LBE360:
.LBE359:
.LBB363:
.LBB364:
	.loc 2 561 43 is_stmt 0 view .LVU308
	ldr	r0, .L6+84
.LBE364:
.LBE363:
.LBB367:
.LBB361:
	.loc 2 591 24 view .LVU309
	ldr	r2, .L6+60
.LBE361:
.LBE367:
.LBB368:
.LBB365:
	.loc 2 561 43 view .LVU310
	mov	r9, r0
.LBE365:
.LBE368:
.LBB369:
.LBB362:
	.loc 2 591 24 view .LVU311
	str	r2, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU312
	.loc 2 592 24 is_stmt 0 view .LVU313
	str	r5, [r4]
.LVL59:
	.loc 2 592 24 view .LVU314
.LBE362:
.LBE369:
	.loc 1 134 2 is_stmt 1 view .LVU315
.LBB370:
.LBI363:
	.loc 2 561 7 view .LVU316
.LBB366:
	.loc 2 561 21 view .LVU317
	.loc 2 561 43 is_stmt 0 view .LVU318
	str	r7, [r0]
.LBE366:
.LBE370:
	.loc 1 137 2 is_stmt 1 view .LVU319
.LVL60:
	.loc 2 542 26 view .LVU320
.LBB371:
.LBI371:
	.loc 2 781 6 view .LVU321
.LBB372:
	.loc 2 782 2 view .LVU322
.LBE372:
.LBE371:
.LBB375:
.LBB376:
	.loc 2 556 61 is_stmt 0 view .LVU323
	movs	r0, #1
.LBE376:
.LBE375:
.LBB379:
.LBB373:
	.loc 2 782 24 view .LVU324
	ldr	r3, .L6+88
	ldr	r2, .L6+32
.LBE373:
.LBE379:
	.loc 1 141 3 view .LVU325
	movs	r1, #0
.LBB380:
.LBB374:
	.loc 2 782 24 view .LVU326
	str	r3, [r2]
.LVL61:
	.loc 2 782 24 view .LVU327
.LBE374:
.LBE380:
	.loc 1 138 2 is_stmt 1 view .LVU328
.LBB381:
.LBI375:
	.loc 2 556 7 view .LVU329
.LBB377:
	.loc 2 556 39 view .LVU330
	.loc 2 556 61 is_stmt 0 view .LVU331
	ldr	r2, .L6+44
.LBE377:
.LBE381:
.LBB382:
.LBB383:
.LBB384:
	.loc 2 702 52 view .LVU332
	movs	r3, #128
.LBE384:
.LBE383:
.LBE382:
.LBB387:
.LBB378:
	.loc 2 556 61 view .LVU333
	str	r0, [r2]
.LVL62:
	.loc 2 556 61 view .LVU334
.LBE378:
.LBE387:
	.loc 1 140 3 is_stmt 1 view .LVU335
.LBB388:
.LBI382:
	.loc 2 1444 6 view .LVU336
.LBE388:
	.loc 2 1445 2 view .LVU337
.LBB389:
.LBB386:
.LBI383:
	.loc 2 702 7 view .LVU338
.LBB385:
	.loc 2 702 30 view .LVU339
	.loc 2 702 52 is_stmt 0 view .LVU340
	mov	r2, r8
	lsls	r3, r3, #2
	str	r3, [r2]
.LVL63:
	.loc 2 702 52 view .LVU341
.LBE385:
.LBE386:
.LBE389:
	.loc 1 141 3 is_stmt 1 view .LVU342
	movs	r0, #0
	bl	glTexCoord2f32
.LVL64:
	.loc 1 141 25 view .LVU343
.LBB390:
.LBI390:
	.loc 2 590 6 view .LVU344
.LBB391:
	.loc 2 591 2 view .LVU345
	.loc 2 591 24 is_stmt 0 view .LVU346
	ldr	r3, .L6+48
.LBE391:
.LBE390:
	.loc 1 142 3 view .LVU347
	movs	r0, r5
.LBB394:
.LBB392:
	.loc 2 591 24 view .LVU348
	str	r3, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU349
.LBE392:
.LBE394:
	.loc 1 142 3 is_stmt 0 view .LVU350
	movs	r1, #0
.LBB395:
.LBB393:
	.loc 2 592 24 view .LVU351
	str	r6, [r4]
.LVL65:
	.loc 2 592 24 view .LVU352
.LBE393:
.LBE395:
	.loc 1 142 3 is_stmt 1 view .LVU353
	bl	glTexCoord2f32
.LVL66:
	.loc 1 142 28 view .LVU354
.LBB396:
.LBI396:
	.loc 2 590 6 view .LVU355
.LBB397:
	.loc 2 591 2 view .LVU356
	.loc 2 591 24 is_stmt 0 view .LVU357
	ldr	r3, .L6+48
.LBE397:
.LBE396:
	.loc 1 143 3 view .LVU358
	movs	r1, r5
.LBB400:
.LBB398:
	.loc 2 591 24 view .LVU359
	str	r3, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU360
.LBE398:
.LBE400:
	.loc 1 143 3 is_stmt 0 view .LVU361
	movs	r0, r5
.LBB401:
.LBB399:
	.loc 2 592 24 view .LVU362
	str	r5, [r4]
.LVL67:
	.loc 2 592 24 view .LVU363
.LBE399:
.LBE401:
	.loc 1 143 3 is_stmt 1 view .LVU364
	bl	glTexCoord2f32
.LVL68:
	.loc 1 143 31 view .LVU365
.LBB402:
.LBI402:
	.loc 2 590 6 view .LVU366
.LBB403:
	.loc 2 591 2 view .LVU367
	.loc 2 591 24 is_stmt 0 view .LVU368
	ldr	r1, .L6+68
.LBE403:
.LBE402:
	.loc 1 144 3 view .LVU369
	movs	r0, #0
.LBB406:
.LBB404:
	.loc 2 591 24 view .LVU370
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU371
.LBE404:
.LBE406:
	.loc 1 144 3 is_stmt 0 view .LVU372
	movs	r1, r5
.LBB407:
.LBB405:
	.loc 2 592 24 view .LVU373
	str	r5, [r4]
.LVL69:
	.loc 2 592 24 view .LVU374
.LBE405:
.LBE407:
	.loc 1 144 3 is_stmt 1 view .LVU375
	bl	glTexCoord2f32
.LVL70:
	.loc 1 144 28 view .LVU376
.LBB408:
.LBI408:
	.loc 2 590 6 view .LVU377
.LBB409:
	.loc 2 591 2 view .LVU378
.LBE409:
.LBE408:
.LBB412:
.LBB413:
	.loc 2 561 43 is_stmt 0 view .LVU379
	mov	r3, r9
.LBE413:
.LBE412:
	.loc 1 147 12 view .LVU380
	ldr	r2, .L6+92
.LBB416:
.LBB410:
	.loc 2 591 24 view .LVU381
	ldr	r1, .L6+68
.LBE410:
.LBE416:
	.loc 1 152 1 view .LVU382
	@ sp needed
.LBB417:
.LBB411:
	.loc 2 591 24 view .LVU383
	str	r1, [r4]
	.loc 2 592 2 is_stmt 1 view .LVU384
	.loc 2 592 24 is_stmt 0 view .LVU385
	str	r6, [r4]
.LVL71:
	.loc 2 592 24 view .LVU386
.LBE411:
.LBE417:
	.loc 1 145 2 is_stmt 1 view .LVU387
.LBB418:
.LBI412:
	.loc 2 561 7 view .LVU388
.LBB414:
	.loc 2 561 21 view .LVU389
.LBE414:
.LBE418:
	.loc 1 147 12 is_stmt 0 view .LVU390
	ldr	r1, [r2]
.LBB419:
.LBB415:
	.loc 2 561 43 view .LVU391
	str	r7, [r3]
.LBE415:
.LBE419:
	.loc 1 147 2 is_stmt 1 view .LVU392
	.loc 1 147 12 is_stmt 0 view .LVU393
	mov	r3, fp
	mov	ip, r1
	mov	r1, fp
	ldr	r3, [r3]
	.loc 1 150 9 view .LVU394
	str	r7, [r2]
	.loc 1 147 12 view .LVU395
	add	r3, r3, ip
	str	r3, [r1]
	.loc 1 148 2 is_stmt 1 view .LVU396
	.loc 1 148 12 is_stmt 0 view .LVU397
	ldr	r1, .L6+96
	mov	r3, r10
	ldr	r0, [r1]
	ldr	r3, [r3]
	mov	ip, r0
	mov	r0, r10
	add	r3, r3, ip
	str	r3, [r0]
	.loc 1 149 2 is_stmt 1 view .LVU398
	.loc 1 149 9 is_stmt 0 view .LVU399
	str	r7, [r1]
	.loc 1 150 2 is_stmt 1 view .LVU400
	.loc 1 151 2 view .LVU401
	.loc 1 152 1 is_stmt 0 view .LVU402
	movs	r0, #1
	pop	{r2, r3, r4, r5}
	mov	r8, r2
	mov	r9, r3
	mov	r10, r4
	mov	fp, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L7:
	.align	2
.L6:
	.word	67110016
	.word	32767
	.word	67109972
	.word	.LANCHOR0
	.word	67110000
	.word	67110020
	.word	xRotation
	.word	yRotation
	.word	67110052
	.word	2031809
	.word	texture
	.word	67110144
	.word	-268374016
	.word	535822336
	.word	67110028
	.word	-268431360
	.word	268439552
	.word	268496896
	.word	-4096
	.word	523264
	.word	511
	.word	67110148
	.word	983169
	.word	ySpeed
	.word	xSpeed
	.cfi_endproc
.LFE193:
	.size	drawScene, .-drawScene
	.global	__aeabi_lmul
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB191:
	.loc 1 17 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 18 2 view .LVU404
	.loc 1 17 1 is_stmt 0 view .LVU405
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	lr, r8
	push	{lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	sub	sp, sp, #128
	.cfi_def_cfa_offset 152
	.loc 1 18 2 view .LVU406
	bl	consoleDemoInit
.LVL72:
	.loc 1 19 2 is_stmt 1 view .LVU407
	ldr	r0, .L62
	bl	iprintf
.LVL73:
	.loc 1 22 2 view .LVU408
.LBB476:
.LBI476:
	.file 3 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/video.h"
	.loc 3 540 6 view .LVU409
.LBB477:
	.loc 3 540 32 view .LVU410
	.loc 3 540 53 is_stmt 0 view .LVU411
	movs	r3, #128
	ldr	r2, .L62+4
	lsls	r3, r3, #19
	str	r2, [r3]
.LVL74:
	.loc 3 540 53 view .LVU412
.LBE477:
.LBE476:
	.loc 1 23 2 is_stmt 1 view .LVU413
.LBB478:
.LBI478:
	.loc 3 377 6 view .LVU414
.LBB479:
	.loc 3 377 36 view .LVU415
	.loc 3 377 56 is_stmt 0 view .LVU416
	movs	r2, #131
	ldr	r3, .L62+8
	strb	r2, [r3]
.LVL75:
	.loc 3 377 56 view .LVU417
.LBE479:
.LBE478:
	.loc 1 26 2 is_stmt 1 view .LVU418
.LBB480:
.LBI480:
	.loc 2 1305 6 view .LVU419
.LBB481:
	.loc 2 1306 2 view .LVU420
	bl	glInit_C
.LVL76:
.LBE481:
.LBE480:
	.loc 1 27 2 view .LVU421
.LBB482:
.LBI482:
	.loc 2 789 6 view .LVU422
.LBB483:
	.loc 2 790 2 view .LVU423
	.loc 2 790 24 is_stmt 0 view .LVU424
	movs	r1, #1
	ldr	r3, .L62+12
.LBE483:
.LBE482:
.LBB486:
.LBB487:
	.loc 2 1317 55 view .LVU425
	ldr	r0, .L62+16
.LBE487:
.LBE486:
.LBB489:
.LBB484:
	.loc 2 790 24 view .LVU426
	ldrh	r2, [r3]
	orrs	r2, r1
.LBE484:
.LBE489:
.LBB490:
.LBB491:
	movs	r1, #8
.LBE491:
.LBE490:
.LBB494:
.LBB485:
	strh	r2, [r3]
.LVL77:
	.loc 2 790 24 view .LVU427
.LBE485:
.LBE494:
	.loc 1 28 2 is_stmt 1 view .LVU428
.LBB495:
.LBI490:
	.loc 2 789 6 view .LVU429
.LBB492:
	.loc 2 790 2 view .LVU430
	.loc 2 790 24 is_stmt 0 view .LVU431
	ldrh	r2, [r3]
	orrs	r2, r1
.LBE492:
.LBE495:
.LBB496:
.LBB497:
	movs	r1, #16
.LBE497:
.LBE496:
.LBB499:
.LBB493:
	strh	r2, [r3]
.LVL78:
	.loc 2 790 24 view .LVU432
.LBE493:
.LBE499:
	.loc 1 29 2 is_stmt 1 view .LVU433
.LBB500:
.LBI496:
	.loc 2 789 6 view .LVU434
.LBB498:
	.loc 2 790 2 view .LVU435
	.loc 2 790 24 is_stmt 0 view .LVU436
	ldrh	r2, [r3]
	orrs	r2, r1
	strh	r2, [r3]
.LVL79:
	.loc 2 790 24 view .LVU437
.LBE498:
.LBE500:
	.loc 1 32 2 is_stmt 1 view .LVU438
.LBB501:
.LBI486:
	.loc 2 1316 6 view .LVU439
.LBB488:
	.loc 2 1317 2 view .LVU440
	.loc 2 1317 129 is_stmt 0 view .LVU441
	movs	r2, #248
	.loc 2 1317 55 view .LVU442
	ldr	r3, [r0, #76]
	.loc 2 1317 68 view .LVU443
	ldr	r1, .L62+20
	.loc 2 1317 129 view .LVU444
	lsls	r2, r2, #13
	.loc 2 1317 68 view .LVU445
	ands	r1, r3
	.loc 2 1317 129 view .LVU446
	orrs	r2, r1
	.loc 2 1317 24 view .LVU447
	ldr	r1, .L62+24
	str	r2, [r1]
.LVL80:
	.loc 2 1317 24 view .LVU448
.LBE488:
.LBE501:
	.loc 1 33 2 is_stmt 1 view .LVU449
.LBB502:
.LBI502:
	.loc 2 1324 6 view .LVU450
.LBB503:
	.loc 2 1325 2 view .LVU451
	.loc 2 1325 82 is_stmt 0 view .LVU452
	ldr	r2, .L62+28
	ands	r2, r3
	ldr	r3, .L62+32
	orrs	r3, r2
	.loc 2 1325 45 view .LVU453
	str	r3, [r0, #76]
.LBE503:
.LBE502:
.LBB505:
.LBB506:
	.loc 2 568 61 view .LVU454
	ldr	r2, .L62+36
.LBE506:
.LBE505:
.LBB508:
.LBB504:
	.loc 2 1325 24 view .LVU455
	str	r3, [r1]
.LVL81:
	.loc 2 1325 24 view .LVU456
.LBE504:
.LBE508:
	.loc 1 34 2 is_stmt 1 view .LVU457
.LBB509:
.LBI505:
	.loc 2 568 7 view .LVU458
.LBB507:
	.loc 2 568 39 view .LVU459
	.loc 2 568 61 is_stmt 0 view .LVU460
	ldr	r3, .L62+40
	strh	r2, [r3]
.LVL82:
	.loc 2 568 61 view .LVU461
.LBE507:
.LBE509:
	.loc 1 37 2 is_stmt 1 view .LVU462
.LBB510:
.LBI510:
	.loc 2 724 7 view .LVU463
.LBB511:
	.loc 2 724 60 view .LVU464
	.loc 2 724 82 is_stmt 0 view .LVU465
	ldr	r3, .L62+44
	ldr	r2, .L62+48
	str	r2, [r3]
.LVL83:
	.loc 2 724 82 view .LVU466
.LBE511:
.LBE510:
	.loc 1 39 2 is_stmt 1 view .LVU467
	bl	loadTextures
.LVL84:
	.loc 1 42 2 view .LVU468
.LBB512:
.LBI512:
	.loc 2 714 7 view .LVU469
.LBB513:
	.loc 2 714 48 view .LVU470
	.loc 2 714 69 is_stmt 0 view .LVU471
	movs	r3, #0
	ldr	r2, .L62+52
.LBE513:
.LBE512:
.LBB515:
.LBB516:
	.loc 2 1151 9 view .LVU472
	ldr	r0, .L62+56
.LBE516:
.LBE515:
.LBB563:
.LBB514:
	.loc 2 714 69 view .LVU473
	str	r3, [r2]
.LVL85:
	.loc 2 714 69 view .LVU474
.LBE514:
.LBE563:
	.loc 1 43 2 is_stmt 1 view .LVU475
.LBB564:
.LBI564:
	.loc 2 707 7 view .LVU476
.LBB565:
	.loc 2 707 30 view .LVU477
	.loc 2 707 51 is_stmt 0 view .LVU478
	ldr	r2, .L62+60
	str	r3, [r2]
.LBE565:
.LBE564:
	.loc 1 44 2 is_stmt 1 view .LVU479
.LBB566:
.LBI515:
	.loc 2 1148 6 view .LVU480
.LVL86:
.LBB559:
	.loc 2 1149 2 view .LVU481
	.loc 2 1151 2 view .LVU482
	.loc 2 1151 9 is_stmt 0 view .LVU483
	bl	tanLerp
.LVL87:
.LBB517:
.LBI517:
	.file 4 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/math.h"
	.loc 4 106 7 is_stmt 1 view .LVU484
.LBB518:
	.loc 4 108 2 view .LVU485
	.loc 4 109 2 view .LVU486
	.loc 4 108 12 is_stmt 0 view .LVU487
	movs	r2, #205
	movs	r3, #0
	lsls	r2, r2, #1
	.loc 4 108 36 view .LVU488
	asrs	r1, r0, #31
	.loc 4 108 12 view .LVU489
	bl	__aeabi_lmul
.LVL88:
	.loc 4 109 24 view .LVU490
	lsls	r3, r1, #20
	lsrs	r5, r0, #12
	orrs	r5, r3
.LBE518:
.LBE517:
	.loc 2 1153 7 view .LVU491
	rsbs	r0, r5, #0
.LBB520:
.LBB519:
	.loc 4 109 24 view .LVU492
	asrs	r6, r1, #12
.LVL89:
	.loc 4 109 24 view .LVU493
.LBE519:
.LBE520:
	.loc 2 1153 2 is_stmt 1 view .LVU494
	.loc 2 1154 2 view .LVU495
.LBB521:
.LBI521:
	.loc 4 106 7 view .LVU496
.LBB522:
	.loc 4 108 2 view .LVU497
	.loc 4 109 2 view .LVU498
	.loc 4 108 12 is_stmt 0 view .LVU499
	ldr	r2, .L62+64
	movs	r3, #0
	.loc 4 108 21 view .LVU500
	asrs	r1, r0, #31
	.loc 4 108 12 view .LVU501
	bl	__aeabi_lmul
.LVL90:
	.loc 4 109 24 view .LVU502
	lsls	r4, r1, #20
	lsrs	r0, r0, #12
	orrs	r4, r0
.LVL91:
	.loc 4 109 24 view .LVU503
.LBE522:
.LBE521:
	.loc 2 1155 2 is_stmt 1 view .LVU504
.LBB523:
.LBI523:
	.loc 4 106 7 view .LVU505
.LBB524:
	.loc 4 108 2 view .LVU506
	.loc 4 109 2 view .LVU507
	.loc 4 108 12 is_stmt 0 view .LVU508
	ldr	r2, .L62+64
	movs	r3, #0
	movs	r0, r5
	movs	r1, r6
	bl	__aeabi_lmul
.LVL92:
.LBE524:
.LBE523:
.LBB526:
.LBB527:
.LBB528:
.LBB529:
	.loc 4 87 25 view .LVU509
	movs	r3, #1
.LBE529:
.LBE528:
.LBE527:
.LBE526:
.LBB554:
.LBB525:
	.loc 4 109 24 view .LVU510
	lsrs	r0, r0, #12
	lsls	r1, r1, #20
	orrs	r1, r0
.LVL93:
	.loc 4 109 24 view .LVU511
.LBE525:
.LBE554:
	.loc 2 1157 2 is_stmt 1 view .LVU512
.LBB555:
.LBI526:
	.loc 2 1118 6 view .LVU513
.LBB550:
	.loc 2 1120 2 view .LVU514
.LBB532:
.LBB530:
	.loc 4 87 25 is_stmt 0 view .LVU515
	ldr	r0, .L62+68
.LBE530:
.LBE532:
	.loc 2 1120 47 view .LVU516
	subs	r2, r1, r4
.LVL94:
.LBB533:
.LBI528:
	.loc 4 85 7 is_stmt 1 view .LVU517
.LBB531:
	.loc 4 87 2 view .LVU518
	.loc 4 87 25 is_stmt 0 view .LVU519
	strh	r3, [r0]
	.loc 4 89 2 is_stmt 1 view .LVU520
.L9:
	.loc 4 89 41 view .LVU521
	.loc 4 89 9 is_stmt 0 view .LVU522
	ldrh	r3, [r0]
	.loc 4 89 7 view .LVU523
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L9
	.loc 4 91 2 is_stmt 1 view .LVU524
	.loc 4 91 26 is_stmt 0 view .LVU525
	movs	r6, #205
	movs	r7, #0
	ldr	r3, .L62+72
	lsls	r6, r6, #14
	str	r6, [r3]
	str	r7, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU526
	.loc 4 92 26 is_stmt 0 view .LVU527
	ldr	r3, .L62+76
	.loc 4 94 9 view .LVU528
	ldr	r6, .L62+68
	.loc 4 92 26 view .LVU529
	str	r2, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU530
.L10:
	.loc 4 94 41 view .LVU531
	.loc 4 94 9 is_stmt 0 view .LVU532
	ldrh	r3, [r6]
	.loc 4 94 7 view .LVU533
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L10
	.loc 4 96 2 is_stmt 1 view .LVU534
	.loc 4 96 11 is_stmt 0 view .LVU535
	ldr	r3, .L62+80
	ldr	r0, [r3]
.LVL95:
	.loc 4 96 11 view .LVU536
.LBE531:
.LBE533:
	.loc 2 1120 24 view .LVU537
	ldr	r3, .L62+84
	str	r0, [r3]
	.loc 2 1121 2 is_stmt 1 view .LVU538
	.loc 2 1121 24 is_stmt 0 view .LVU539
	movs	r0, #0
	str	r0, [r3]
	.loc 2 1122 2 is_stmt 1 view .LVU540
	.loc 2 1122 24 is_stmt 0 view .LVU541
	str	r0, [r3]
	.loc 2 1123 2 is_stmt 1 view .LVU542
	.loc 2 1123 24 is_stmt 0 view .LVU543
	str	r0, [r3]
	.loc 2 1125 2 is_stmt 1 view .LVU544
	.loc 2 1125 24 is_stmt 0 view .LVU545
	str	r0, [r3]
	.loc 2 1126 2 is_stmt 1 view .LVU546
.LBB534:
.LBB535:
	.loc 4 87 25 is_stmt 0 view .LVU547
	movs	r3, #1
.LBE535:
.LBE534:
	.loc 2 1126 45 view .LVU548
	lsls	r0, r5, #1
.LVL96:
.LBB538:
.LBI534:
	.loc 4 85 7 is_stmt 1 view .LVU549
.LBB536:
	.loc 4 87 2 view .LVU550
	.loc 4 89 9 is_stmt 0 view .LVU551
	ldr	r5, .L62+68
.LVL97:
	.loc 4 87 25 view .LVU552
	strh	r3, [r6]
	.loc 4 89 2 is_stmt 1 view .LVU553
.L11:
	.loc 4 89 41 view .LVU554
	.loc 4 89 9 is_stmt 0 view .LVU555
	ldrh	r3, [r5]
	.loc 4 89 7 view .LVU556
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L11
	.loc 4 91 2 is_stmt 1 view .LVU557
	.loc 4 91 26 is_stmt 0 view .LVU558
	movs	r6, #205
	movs	r7, #0
	ldr	r3, .L62+72
	lsls	r6, r6, #14
	str	r6, [r3]
	str	r7, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU559
	.loc 4 92 26 is_stmt 0 view .LVU560
	ldr	r3, .L62+76
	.loc 4 94 9 view .LVU561
	ldr	r5, .L62+68
	.loc 4 92 26 view .LVU562
	str	r0, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU563
.L12:
	.loc 4 94 41 view .LVU564
	.loc 4 94 9 is_stmt 0 view .LVU565
	ldrh	r3, [r5]
	.loc 4 94 7 view .LVU566
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L12
	.loc 4 96 2 is_stmt 1 view .LVU567
	.loc 4 96 11 is_stmt 0 view .LVU568
	ldr	r3, .L62+80
.LBE536:
.LBE538:
	.loc 2 1130 39 view .LVU569
	adds	r4, r4, r1
.LVL98:
.LBB539:
.LBB537:
	.loc 4 96 11 view .LVU570
	ldr	r6, [r3]
.LVL99:
	.loc 4 96 11 view .LVU571
.LBE537:
.LBE539:
	.loc 2 1126 24 view .LVU572
	ldr	r3, .L62+84
	str	r6, [r3]
	.loc 2 1127 2 is_stmt 1 view .LVU573
	.loc 2 1127 24 is_stmt 0 view .LVU574
	movs	r6, #0
	str	r6, [r3]
	.loc 2 1128 2 is_stmt 1 view .LVU575
	.loc 2 1128 24 is_stmt 0 view .LVU576
	str	r6, [r3]
	.loc 2 1130 2 is_stmt 1 view .LVU577
.LVL100:
.LBB540:
.LBI540:
	.loc 4 85 7 view .LVU578
.LBB541:
	.loc 4 87 2 view .LVU579
	.loc 4 87 25 is_stmt 0 view .LVU580
	movs	r3, #1
	strh	r3, [r5]
	.loc 4 89 2 is_stmt 1 view .LVU581
	.loc 4 89 9 is_stmt 0 view .LVU582
	ldr	r5, .L62+68
.L13:
	.loc 4 89 41 is_stmt 1 view .LVU583
	.loc 4 89 9 is_stmt 0 view .LVU584
	ldrh	r3, [r5]
	.loc 4 89 7 view .LVU585
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L13
	.loc 4 91 2 is_stmt 1 view .LVU586
	.loc 4 91 26 is_stmt 0 view .LVU587
	ldr	r3, .L62+72
	.loc 4 91 41 view .LVU588
	asrs	r7, r4, #20
	lsls	r6, r4, #12
	.loc 4 91 26 view .LVU589
	str	r6, [r3]
	str	r7, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU590
	.loc 4 92 26 is_stmt 0 view .LVU591
	ldr	r3, .L62+76
	str	r2, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU592
	.loc 4 94 9 is_stmt 0 view .LVU593
	ldr	r2, .L62+68
.LVL101:
.L14:
	.loc 4 94 41 is_stmt 1 view .LVU594
	.loc 4 94 9 is_stmt 0 view .LVU595
	ldrh	r3, [r2]
	.loc 4 94 7 view .LVU596
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L14
	.loc 4 96 2 is_stmt 1 view .LVU597
	.loc 4 96 11 is_stmt 0 view .LVU598
	ldr	r3, .L62+80
	ldr	r1, [r3]
.LVL102:
	.loc 4 96 11 view .LVU599
.LBE541:
.LBE540:
	.loc 2 1130 24 view .LVU600
	ldr	r3, .L62+84
	str	r1, [r3]
	.loc 2 1131 2 is_stmt 1 view .LVU601
.LVL103:
.LBB542:
.LBI542:
	.loc 4 85 7 view .LVU602
.LBB543:
	.loc 4 87 2 view .LVU603
	.loc 4 87 25 is_stmt 0 view .LVU604
	movs	r3, #1
	strh	r3, [r2]
	.loc 4 89 2 is_stmt 1 view .LVU605
	.loc 4 89 9 is_stmt 0 view .LVU606
	ldr	r2, .L62+68
.L15:
	.loc 4 89 41 is_stmt 1 view .LVU607
	.loc 4 89 9 is_stmt 0 view .LVU608
	ldrh	r3, [r2]
	.loc 4 89 7 view .LVU609
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L15
	.loc 4 91 2 is_stmt 1 view .LVU610
	.loc 4 91 26 is_stmt 0 view .LVU611
	movs	r4, #0
	movs	r5, #0
	ldr	r3, .L62+72
	.loc 4 94 9 view .LVU612
	ldr	r2, .L62+68
	.loc 4 91 26 view .LVU613
	str	r4, [r3]
	str	r5, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU614
	.loc 4 92 26 is_stmt 0 view .LVU615
	ldr	r3, .L62+76
	str	r0, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU616
.L16:
	.loc 4 94 41 view .LVU617
	.loc 4 94 9 is_stmt 0 view .LVU618
	ldrh	r3, [r2]
	.loc 4 94 7 view .LVU619
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L16
	.loc 4 96 2 is_stmt 1 view .LVU620
	.loc 4 96 11 is_stmt 0 view .LVU621
	ldr	r3, .L62+80
	ldr	r1, [r3]
.LVL104:
	.loc 4 96 11 view .LVU622
.LBE543:
.LBE542:
	.loc 2 1131 24 view .LVU623
	ldr	r3, .L62+84
	str	r1, [r3]
	.loc 2 1132 2 is_stmt 1 view .LVU624
.LVL105:
.LBB544:
.LBI544:
	.loc 4 85 7 view .LVU625
.LBB545:
	.loc 4 87 2 view .LVU626
	.loc 4 87 25 is_stmt 0 view .LVU627
	movs	r3, #1
	strh	r3, [r2]
	.loc 4 89 2 is_stmt 1 view .LVU628
	.loc 4 89 9 is_stmt 0 view .LVU629
	ldr	r2, .L62+68
.L17:
	.loc 4 89 41 is_stmt 1 view .LVU630
	.loc 4 89 9 is_stmt 0 view .LVU631
	ldrh	r3, [r2]
	.loc 4 89 7 view .LVU632
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L17
	.loc 4 91 2 is_stmt 1 view .LVU633
	.loc 4 91 26 is_stmt 0 view .LVU634
	movs	r1, #0
	ldr	r3, .L62+72
	ldr	r0, .L62+88
	.loc 4 92 26 view .LVU635
	ldr	r2, .L62+92
	.loc 4 91 26 view .LVU636
	str	r0, [r3]
	str	r1, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU637
	.loc 4 92 26 is_stmt 0 view .LVU638
	ldr	r3, .L62+76
	str	r2, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU639
	.loc 4 94 9 is_stmt 0 view .LVU640
	ldr	r2, .L62+68
.L18:
	.loc 4 94 41 is_stmt 1 view .LVU641
	.loc 4 94 9 is_stmt 0 view .LVU642
	ldrh	r3, [r2]
	.loc 4 94 7 view .LVU643
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L18
	.loc 4 96 2 is_stmt 1 view .LVU644
	.loc 4 96 11 is_stmt 0 view .LVU645
	ldr	r3, .L62+80
	ldr	r1, [r3]
.LVL106:
	.loc 4 96 11 view .LVU646
.LBE545:
.LBE544:
	.loc 2 1132 24 view .LVU647
	ldr	r3, .L62+84
	.loc 2 1132 26 view .LVU648
	rsbs	r1, r1, #0
	.loc 2 1132 24 view .LVU649
	str	r1, [r3]
	.loc 2 1133 2 is_stmt 1 view .LVU650
	.loc 2 1133 24 is_stmt 0 view .LVU651
	ldr	r1, .L62+96
	str	r1, [r3]
	.loc 2 1135 2 is_stmt 1 view .LVU652
	.loc 2 1135 24 is_stmt 0 view .LVU653
	movs	r1, #0
	str	r1, [r3]
	.loc 2 1136 2 is_stmt 1 view .LVU654
	.loc 2 1136 24 is_stmt 0 view .LVU655
	str	r1, [r3]
	.loc 2 1137 2 is_stmt 1 view .LVU656
.LVL107:
	.loc 2 1137 2 is_stmt 0 view .LVU657
.LBE550:
.LBE555:
.LBE559:
.LBE566:
	.loc 4 108 2 is_stmt 1 view .LVU658
	.loc 4 109 2 view .LVU659
.LBB567:
.LBB560:
.LBB556:
.LBB551:
.LBB546:
.LBI546:
	.loc 4 85 7 view .LVU660
.LBB547:
	.loc 4 87 2 view .LVU661
	.loc 4 87 25 is_stmt 0 view .LVU662
	movs	r3, #1
	strh	r3, [r2]
	.loc 4 89 2 is_stmt 1 view .LVU663
	.loc 4 89 9 is_stmt 0 view .LVU664
	ldr	r2, .L62+68
.L19:
	.loc 4 89 41 is_stmt 1 view .LVU665
	.loc 4 89 9 is_stmt 0 view .LVU666
	ldrh	r3, [r2]
	.loc 4 89 7 view .LVU667
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L19
	.loc 4 91 2 is_stmt 1 view .LVU668
	.loc 4 91 26 is_stmt 0 view .LVU669
	movs	r1, #0
	ldr	r3, .L62+72
	ldr	r0, .L62+100
	.loc 4 92 26 view .LVU670
	ldr	r2, .L62+92
	.loc 4 91 26 view .LVU671
	str	r0, [r3]
	str	r1, [r3, #4]
	.loc 4 92 2 is_stmt 1 view .LVU672
	.loc 4 92 26 is_stmt 0 view .LVU673
	ldr	r3, .L62+76
	str	r2, [r3]
	.loc 4 94 2 is_stmt 1 view .LVU674
	.loc 4 94 9 is_stmt 0 view .LVU675
	ldr	r2, .L62+68
.L20:
	.loc 4 94 41 is_stmt 1 view .LVU676
	.loc 4 94 9 is_stmt 0 view .LVU677
	ldrh	r3, [r2]
	.loc 4 94 7 view .LVU678
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L20
	.loc 4 96 2 is_stmt 1 view .LVU679
	.loc 4 96 11 is_stmt 0 view .LVU680
	ldr	r3, .L62+80
.LBE547:
.LBE546:
	.loc 2 1137 24 view .LVU681
	ldr	r2, .L62+84
.LBB549:
.LBB548:
	.loc 4 96 11 view .LVU682
	ldr	r3, [r3]
.LVL108:
	.loc 4 96 11 view .LVU683
.LBE548:
.LBE549:
.LBE551:
.LBE556:
.LBE560:
.LBE567:
	.loc 1 47 2 view .LVU684
	ldr	r1, .L62+104
.LBB568:
.LBB561:
.LBB557:
.LBB552:
	.loc 2 1137 26 view .LVU685
	rsbs	r3, r3, #0
	.loc 2 1137 24 view .LVU686
	str	r3, [r2]
	.loc 2 1138 2 is_stmt 1 view .LVU687
	.loc 2 1138 24 is_stmt 0 view .LVU688
	movs	r3, #0
.LBE552:
.LBE557:
.LBE561:
.LBE568:
	.loc 1 47 2 view .LVU689
	movs	r0, #1
.LBB569:
.LBB562:
.LBB558:
.LBB553:
	.loc 2 1138 24 view .LVU690
	str	r3, [r2]
.LVL109:
	.loc 2 1138 24 view .LVU691
.LBE553:
.LBE558:
.LBE562:
.LBE569:
	.loc 1 47 2 is_stmt 1 view .LVU692
	bl	glMaterialf
.LVL110:
	.loc 1 48 2 view .LVU693
	ldr	r1, .L62+108
	movs	r0, #4
	bl	glMaterialf
.LVL111:
	.loc 1 49 2 view .LVU694
	ldr	r1, .L62+104
	movs	r0, #16
	bl	glMaterialf
.LVL112:
	.loc 1 50 2 view .LVU695
.LBB570:
.LBI570:
	.loc 2 736 6 view .LVU696
.LBB571:
	.loc 2 742 2 is_stmt 0 view .LVU697
	movs	r1, #128
	.loc 2 742 9 view .LVU698
	movs	r3, #0
	.loc 2 742 2 view .LVU699
	lsls	r1, r1, #1
.LVL113:
.L21:
	.loc 2 743 3 is_stmt 1 view .LVU700
	.loc 2 743 16 is_stmt 0 view .LVU701
	mov	r0, sp
	.loc 2 743 11 view .LVU702
	asrs	r2, r3, #1
	.loc 2 743 16 view .LVU703
	strb	r3, [r0, r2]
	.loc 2 742 29 view .LVU704
	adds	r3, r3, #2
.LVL114:
	.loc 2 742 2 view .LVU705
	cmp	r3, r1
	bne	.L21
	mov	r3, sp
.LVL115:
	.loc 2 746 25 view .LVU706
	ldr	r1, .L62+112
	add	r0, sp, #128
.L22:
	.loc 2 746 3 is_stmt 1 view .LVU707
	.loc 2 746 34 is_stmt 0 view .LVU708
	ldmia	r3!, {r2}
	.loc 2 746 25 view .LVU709
	str	r2, [r1]
	.loc 2 745 2 view .LVU710
	cmp	r3, r0
	bne	.L22
	.loc 2 745 2 view .LVU711
.LBE571:
.LBE570:
	.loc 1 53 2 is_stmt 1 view .LVU712
.LVL116:
.LBB572:
.LBI572:
	.loc 2 690 7 view .LVU713
.LBB573:
	.loc 2 691 2 view .LVU714
	.loc 2 692 2 view .LVU715
	.loc 2 692 24 is_stmt 0 view .LVU716
	movs	r2, #128
	ldr	r3, .L62+116
	lsls	r2, r2, #12
	str	r2, [r3]
	.loc 2 693 2 is_stmt 1 view .LVU717
	.loc 2 693 24 is_stmt 0 view .LVU718
	ldr	r3, .L62+120
	ldr	r2, .L62+36
.LBE573:
.LBE572:
	.loc 1 67 37 view .LVU719
	ldr	r5, .L62+124
	.loc 1 69 35 view .LVU720
	ldr	r4, .L62+128
.LBB575:
.LBB574:
	.loc 2 693 24 view .LVU721
	str	r2, [r3]
.LVL117:
	.loc 2 693 24 view .LVU722
.LBE574:
.LBE575:
	.loc 1 55 2 is_stmt 1 view .LVU723
.LBB576:
.LBI576:
	.loc 2 714 7 view .LVU724
.LBB577:
	.loc 2 714 48 view .LVU725
	.loc 2 714 69 is_stmt 0 view .LVU726
	movs	r2, #2
.LBE577:
.LBE576:
	.loc 1 68 37 view .LVU727
	movs	r7, r5
	.loc 1 70 37 view .LVU728
	movs	r6, r4
.LBB579:
.LBB578:
	.loc 2 714 69 view .LVU729
	ldr	r3, .L62+52
	str	r2, [r3]
.L23:
.LBE578:
.LBE579:
	.loc 1 57 2 is_stmt 1 view .LVU730
	.loc 1 59 3 view .LVU731
	bl	drawScene
.LVL118:
	.loc 1 60 3 view .LVU732
	bl	swiWaitForVBlank
.LVL119:
	.loc 1 61 3 view .LVU733
.LBB580:
.LBI580:
	.loc 2 731 6 view .LVU734
.LBB581:
	.loc 2 731 26 view .LVU735
	.loc 2 731 57 view .LVU736
	.loc 2 731 79 is_stmt 0 view .LVU737
	movs	r2, #0
	ldr	r3, .L62+132
	str	r2, [r3]
.LVL120:
	.loc 2 731 79 view .LVU738
.LBE581:
.LBE580:
	.loc 1 63 3 is_stmt 1 view .LVU739
	bl	scanKeys
.LVL121:
	.loc 1 65 3 view .LVU740
	.loc 1 65 7 is_stmt 0 view .LVU741
	bl	keysDown
.LVL122:
	.loc 1 65 6 view .LVU742
	lsls	r3, r0, #28
	bmi	.L24
	.loc 1 67 3 is_stmt 1 view .LVU743
	.loc 1 67 7 is_stmt 0 view .LVU744
	bl	keysHeld
.LVL123:
	.loc 1 67 6 view .LVU745
	lsls	r3, r0, #23
	bpl	.L25
	.loc 1 67 27 is_stmt 1 discriminator 1 view .LVU746
	.loc 1 67 37 is_stmt 0 discriminator 1 view .LVU747
	ldr	r3, [r5]
	subs	r3, r3, #2
	str	r3, [r5]
.L25:
	.loc 1 68 3 is_stmt 1 view .LVU748
	.loc 1 68 7 is_stmt 0 view .LVU749
	bl	keysHeld
.LVL124:
	.loc 1 68 6 view .LVU750
	lsls	r3, r0, #22
	bpl	.L26
	.loc 1 68 27 is_stmt 1 discriminator 1 view .LVU751
	.loc 1 68 37 is_stmt 0 discriminator 1 view .LVU752
	ldr	r3, [r7]
	adds	r3, r3, #2
	str	r3, [r7]
.L26:
	.loc 1 69 3 is_stmt 1 view .LVU753
	.loc 1 69 7 is_stmt 0 view .LVU754
	bl	keysHeld
.LVL125:
	.loc 1 69 6 view .LVU755
	lsls	r3, r0, #25
	bpl	.L27
	.loc 1 69 28 is_stmt 1 discriminator 1 view .LVU756
	.loc 1 69 35 is_stmt 0 discriminator 1 view .LVU757
	ldr	r3, [r4]
	adds	r3, r3, #20
	str	r3, [r4]
.L27:
	.loc 1 70 3 is_stmt 1 view .LVU758
	.loc 1 70 7 is_stmt 0 view .LVU759
	bl	keysHeld
.LVL126:
	.loc 1 70 6 view .LVU760
	lsls	r3, r0, #24
	bpl	.L28
	.loc 1 70 30 is_stmt 1 discriminator 1 view .LVU761
	.loc 1 70 37 is_stmt 0 discriminator 1 view .LVU762
	ldr	r3, [r6]
	subs	r3, r3, #20
	str	r3, [r6]
.L28:
	.loc 1 71 3 is_stmt 1 view .LVU763
	.loc 1 71 7 is_stmt 0 view .LVU764
	bl	keysHeld
.LVL127:
	.loc 1 71 6 view .LVU765
	lsls	r3, r0, #26
	bpl	.L29
	.loc 1 71 30 is_stmt 1 discriminator 1 view .LVU766
	.loc 1 71 37 is_stmt 0 discriminator 1 view .LVU767
	ldr	r3, .L62+136
	mov	r8, r3
	mov	r2, r8
	ldr	r3, [r3]
	subs	r3, r3, #20
	str	r3, [r2]
	.loc 1 72 3 is_stmt 1 discriminator 1 view .LVU768
	.loc 1 72 7 is_stmt 0 discriminator 1 view .LVU769
	bl	keysHeld
.LVL128:
	.loc 1 72 6 discriminator 1 view .LVU770
	lsls	r3, r0, #27
	bpl	.L23
.L30:
	.loc 1 72 31 is_stmt 1 discriminator 1 view .LVU771
	.loc 1 72 38 is_stmt 0 discriminator 1 view .LVU772
	mov	r3, r8
	mov	r2, r8
	ldr	r3, [r3]
	adds	r3, r3, #20
	str	r3, [r2]
	b	.L23
.L29:
	.loc 1 72 3 is_stmt 1 view .LVU773
	.loc 1 72 7 is_stmt 0 view .LVU774
	bl	keysHeld
.LVL129:
	.loc 1 72 6 view .LVU775
	lsls	r3, r0, #27
	bpl	.L23
	ldr	r3, .L62+136
	mov	r8, r3
	b	.L30
.L24:
	.loc 1 75 2 is_stmt 1 view .LVU776
	.loc 1 76 1 is_stmt 0 view .LVU777
	movs	r0, #0
	add	sp, sp, #128
	@ sp needed
	pop	{r2}
	mov	r8, r2
	pop	{r4, r5, r6, r7, pc}
.L63:
	.align	2
.L62:
	.word	.LC8
	.word	65800
	.word	67109440
	.word	67108960
	.word	glGlobalData
	.word	-2064384
	.word	67109712
	.word	-1059028992
	.word	1058996224
	.word	32767
	.word	67109716
	.word	67110272
	.word	-1073807360
	.word	67109952
	.word	3185
	.word	67109972
	.word	5461
	.word	67109504
	.word	67109520
	.word	67109528
	.word	67109536
	.word	67109984
	.word	1679400960
	.word	409190
	.word	-4096
	.word	335872000
	.word	16912
	.word	41224
	.word	67110096
	.word	67110088
	.word	67110092
	.word	.LANCHOR0
	.word	ySpeed
	.word	67110208
	.word	xSpeed
	.cfi_endproc
.LFE191:
	.size	main, .-main
	.comm	texture,4,4
	.global	zPosition
	.comm	ySpeed,4,4
	.comm	xSpeed,4,4
	.comm	yRotation,4,4
	.comm	xRotation,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	zPosition, %object
	.size	zPosition, 4
zPosition:
	.word	-20480
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC8:
	.ascii	"Console Text\000"
	.text
.Letext0:
	.file 5 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 6 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 7 "B:/GbaDev/DevKitPro/libnds/include/nds/ndstypes.h"
	.file 8 "B:/GbaDev/DevKitPro/libnds/include/nds/interrupts.h"
	.file 9 "B:/GbaDev/DevKitPro/libnds/include/nds/system.h"
	.file 10 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h"
	.file 11 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 12 "b:\\gbadev\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\8.1.0\\include\\stddef.h"
	.file 13 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 14 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 15 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 16 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/dynamicArray.h"
	.file 17 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/background.h"
	.file 18 "B:/GbaDev/DevKitPro/libnds/include/nds/input.h"
	.file 19 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/exceptions.h"
	.file 20 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/image.h"
	.file 21 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/sprite.h"
	.file 22 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\unistd.h"
	.file 23 "B:/GbaDev/NDSProjects/NDS-3D-engine/arm9/build/Peanut_pcx.h"
	.file 24 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/pcx.h"
	.file 25 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 26 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/console.h"
	.file 27 "b:\\gbadev\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdio.h"
	.file 28 "B:/GbaDev/DevKitPro/libnds/include/nds/arm9/input.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x33eb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF503
	.byte	0xc
	.4byte	.LASF504
	.4byte	.LASF505
	.4byte	.Ldebug_ranges0+0x788
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x5
	.byte	0x37
	.byte	0x13
	.4byte	0x59
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x5
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.4byte	0x92
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x67
	.byte	0x17
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x20
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.uleb128 0x5
	.4byte	0xcb
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.byte	0x13
	.4byte	0x73
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x86
	.uleb128 0x5
	.4byte	0xe8
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x38
	.byte	0x13
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x49
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x4b
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.4byte	0xe8
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x54
	.byte	0x11
	.4byte	0xbf
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x56
	.byte	0x11
	.4byte	0xdc
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x58
	.byte	0x11
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF27
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF28
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x62
	.byte	0x1b
	.4byte	0xd7
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x64
	.byte	0x1b
	.4byte	0xf4
	.uleb128 0x6
	.ascii	"u8\000"
	.byte	0x7
	.byte	0x7a
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x5
	.4byte	0x173
	.uleb128 0x7
	.4byte	0x173
	.uleb128 0x6
	.ascii	"u16\000"
	.byte	0x7
	.byte	0x7c
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x5
	.4byte	0x188
	.uleb128 0x6
	.ascii	"u32\000"
	.byte	0x7
	.byte	0x7e
	.byte	0x12
	.4byte	0xe8
	.uleb128 0x5
	.4byte	0x199
	.uleb128 0x7
	.4byte	0x199
	.uleb128 0x6
	.ascii	"s16\000"
	.byte	0x7
	.byte	0x85
	.byte	0x11
	.4byte	0xbf
	.uleb128 0x6
	.ascii	"s32\000"
	.byte	0x7
	.byte	0x87
	.byte	0x11
	.4byte	0xdc
	.uleb128 0x5
	.4byte	0x1bb
	.uleb128 0x6
	.ascii	"s64\000"
	.byte	0x7
	.byte	0x89
	.byte	0x11
	.4byte	0xf9
	.uleb128 0x5
	.4byte	0x1cc
	.uleb128 0x6
	.ascii	"vu8\000"
	.byte	0x7
	.byte	0x8c
	.byte	0x15
	.4byte	0x17e
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0x8e
	.byte	0x16
	.4byte	0x194
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x7
	.byte	0x90
	.byte	0x16
	.4byte	0x1a5
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x99
	.byte	0x16
	.4byte	0x1c7
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.byte	0x9b
	.byte	0x16
	.4byte	0x1d8
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0xa8
	.byte	0x11
	.4byte	0x225
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22b
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x173
	.uleb128 0x8
	.byte	0x4
	.4byte	0x188
	.uleb128 0xa
	.4byte	0x219
	.4byte	0x243
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x238
	.uleb128 0xa
	.4byte	0x167
	.4byte	0x25a
	.uleb128 0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x24f
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x8b
	.byte	0x10
	.4byte	0x25a
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x8c
	.byte	0x10
	.4byte	0x25a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF39
	.uleb128 0x7
	.4byte	0x277
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x18
	.byte	0x9
	.byte	0xbf
	.byte	0x10
	.4byte	0x2e1
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x9
	.byte	0xc0
	.byte	0x9
	.4byte	0x219
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x9
	.byte	0xc1
	.byte	0x9
	.4byte	0x219
	.byte	0x4
	.uleb128 0x10
	.ascii	"swi\000"
	.byte	0x9
	.byte	0xc2
	.byte	0x9
	.4byte	0x219
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x9
	.byte	0xc3
	.byte	0x9
	.4byte	0x219
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x9
	.byte	0xc4
	.byte	0x9
	.4byte	0x219
	.byte	0x10
	.uleb128 0x10
	.ascii	"fiq\000"
	.byte	0x9
	.byte	0xc5
	.byte	0x9
	.4byte	0x219
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x9
	.byte	0xc6
	.byte	0x3
	.4byte	0x285
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x9
	.byte	0xc9
	.byte	0x13
	.4byte	0x2e1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x277
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f9
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0x7
	.byte	0x2
	.4byte	0x6c
	.byte	0x12
	.byte	0x23
	.byte	0xe
	.4byte	0x372
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF54
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF55
	.2byte	0x200
	.uleb128 0x13
	.4byte	.LASF56
	.2byte	0x400
	.uleb128 0x13
	.4byte	.LASF57
	.2byte	0x800
	.uleb128 0x13
	.4byte	.LASF58
	.2byte	0x1000
	.uleb128 0x13
	.4byte	.LASF59
	.2byte	0x2000
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF60
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xa
	.byte	0x7
	.byte	0x13
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xa
	.byte	0xa
	.byte	0x13
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0x11
	.4byte	0xdc
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0xc
	.byte	0xb
	.byte	0x9
	.byte	0x8
	.4byte	0x3d2
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x391
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.4byte	0xe8
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.4byte	0xe8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xb
	.byte	0xf
	.byte	0x19
	.4byte	0x39d
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xc
	.2byte	0x165
	.byte	0x16
	.4byte	0xac
	.uleb128 0x15
	.byte	0x4
	.byte	0xd
	.byte	0xa6
	.byte	0x3
	.4byte	0x40d
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xd
	.byte	0xa8
	.byte	0xc
	.4byte	0x3de
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0xd
	.byte	0xa9
	.byte	0x13
	.4byte	0x40d
	.byte	0
	.uleb128 0xa
	.4byte	0x46
	.4byte	0x41d
	.uleb128 0x17
	.4byte	0xac
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0xd
	.byte	0xa3
	.byte	0x9
	.4byte	0x441
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0xd
	.byte	0xa5
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xd
	.byte	0xaa
	.byte	0x5
	.4byte	0x3eb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xd
	.byte	0xab
	.byte	0x3
	.4byte	0x41d
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xd
	.byte	0xaf
	.byte	0x1b
	.4byte	0x3d2
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xe
	.byte	0x16
	.byte	0x17
	.4byte	0x92
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x18
	.byte	0xe
	.byte	0x2f
	.byte	0x8
	.4byte	0x4bf
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0xe
	.byte	0x31
	.byte	0x13
	.4byte	0x4bf
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0xe
	.byte	0x32
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0xe
	.byte	0x32
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0xe
	.byte	0x32
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0xe
	.byte	0x32
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0xe
	.byte	0x33
	.byte	0xb
	.4byte	0x4c5
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x465
	.uleb128 0xa
	.4byte	0x459
	.4byte	0x4d5
	.uleb128 0x17
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x24
	.byte	0xe
	.byte	0x37
	.byte	0x8
	.4byte	0x558
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0xe
	.byte	0x3a
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0xe
	.byte	0x3b
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0xe
	.byte	0x3c
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xe
	.byte	0x3d
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0xe
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0xe
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0xe
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0xe
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF93
	.2byte	0x108
	.byte	0xe
	.byte	0x4a
	.byte	0x8
	.4byte	0x59d
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0xe
	.byte	0x4b
	.byte	0x9
	.4byte	0x59d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0xe
	.byte	0x4c
	.byte	0x9
	.4byte	0x59d
	.byte	0x80
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x4e
	.byte	0xa
	.4byte	0x459
	.2byte	0x100
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0xe
	.byte	0x51
	.byte	0xa
	.4byte	0x459
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x283
	.4byte	0x5ad
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF98
	.2byte	0x190
	.byte	0xe
	.byte	0x5d
	.byte	0x8
	.4byte	0x5f0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0xe
	.byte	0x5e
	.byte	0x12
	.4byte	0x5f0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0xe
	.byte	0x5f
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0xe
	.byte	0x61
	.byte	0x9
	.4byte	0x5f6
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xe
	.byte	0x62
	.byte	0x1e
	.4byte	0x558
	.byte	0x88
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0xa
	.4byte	0x225
	.4byte	0x606
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x8
	.byte	0xe
	.byte	0x75
	.byte	0x8
	.4byte	0x62e
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0xe
	.byte	0x76
	.byte	0x11
	.4byte	0x62e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0xe
	.byte	0x77
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x46
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x78
	.byte	0xe
	.byte	0xb5
	.byte	0x8
	.4byte	0x777
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0xe
	.byte	0xb6
	.byte	0x12
	.4byte	0x62e
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0xe
	.byte	0xb7
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0xe
	.byte	0xb8
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0xe
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0xe
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0xe
	.byte	0xbb
	.byte	0x11
	.4byte	0x606
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xe
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xe
	.byte	0xc3
	.byte	0xa
	.4byte	0x283
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0xe
	.byte	0xc5
	.byte	0x9
	.4byte	0x8f8
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0xe
	.byte	0xc7
	.byte	0x9
	.4byte	0x922
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0xe
	.byte	0xca
	.byte	0xd
	.4byte	0x946
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0xe
	.byte	0xcb
	.byte	0x9
	.4byte	0x960
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0xe
	.byte	0xce
	.byte	0x11
	.4byte	0x606
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0xe
	.byte	0xcf
	.byte	0x12
	.4byte	0x62e
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0xe
	.byte	0xd0
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0xe
	.byte	0xd3
	.byte	0x11
	.4byte	0x966
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0xe
	.byte	0xd4
	.byte	0x11
	.4byte	0x976
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0xe
	.byte	0xd7
	.byte	0x11
	.4byte	0x606
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0xe
	.byte	0xda
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0xe
	.byte	0xdb
	.byte	0xa
	.4byte	0x379
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0xe
	.byte	0xde
	.byte	0x12
	.4byte	0x795
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0xe
	.byte	0xe2
	.byte	0xc
	.4byte	0x44d
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xe
	.byte	0xe4
	.byte	0xe
	.4byte	0x441
	.byte	0x68
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0xe
	.byte	0xe5
	.byte	0x7
	.4byte	0x2c
	.byte	0x70
	.byte	0
	.uleb128 0x1b
	.4byte	0x2c
	.4byte	0x795
	.uleb128 0x1c
	.4byte	0x795
	.uleb128 0x1c
	.4byte	0x283
	.uleb128 0x1c
	.4byte	0x2f9
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7a0
	.uleb128 0x7
	.4byte	0x795
	.uleb128 0x1d
	.4byte	.LASF121
	.2byte	0x460
	.byte	0xe
	.2byte	0x23b
	.byte	0x8
	.4byte	0x8f8
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x23d
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x242
	.byte	0xb
	.4byte	0x9d2
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0xe
	.2byte	0x242
	.byte	0x14
	.4byte	0x9d2
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x242
	.byte	0x1e
	.4byte	0x9d2
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0xe
	.2byte	0x244
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0xe
	.2byte	0x245
	.byte	0x8
	.4byte	0xbd2
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xe
	.2byte	0x248
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xe
	.2byte	0x249
	.byte	0x16
	.4byte	0xbe7
	.byte	0x34
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0xe
	.2byte	0x24b
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x24d
	.byte	0xa
	.4byte	0xbf8
	.byte	0x3c
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0xe
	.2byte	0x250
	.byte	0x13
	.4byte	0x4bf
	.byte	0x40
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x251
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x252
	.byte	0x13
	.4byte	0x4bf
	.byte	0x48
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x253
	.byte	0x14
	.4byte	0xbfe
	.byte	0x4c
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0xe
	.2byte	0x256
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0xe
	.2byte	0x257
	.byte	0x9
	.4byte	0x2f9
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x27a
	.byte	0x7
	.4byte	0xbad
	.byte	0x58
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0xe
	.2byte	0x27e
	.byte	0x13
	.4byte	0x5f0
	.2byte	0x148
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0xe
	.2byte	0x27f
	.byte	0x12
	.4byte	0x5ad
	.2byte	0x14c
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x283
	.byte	0xc
	.4byte	0xc0f
	.2byte	0x2dc
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x288
	.byte	0x10
	.4byte	0x993
	.2byte	0x2e0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x28a
	.byte	0xa
	.4byte	0xc1b
	.2byte	0x2f0
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x28c
	.byte	0x9
	.4byte	0x283
	.2byte	0x458
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x777
	.uleb128 0x1b
	.4byte	0x2c
	.4byte	0x91c
	.uleb128 0x1c
	.4byte	0x795
	.uleb128 0x1c
	.4byte	0x283
	.uleb128 0x1c
	.4byte	0x91c
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8fe
	.uleb128 0x1b
	.4byte	0x385
	.4byte	0x946
	.uleb128 0x1c
	.4byte	0x795
	.uleb128 0x1c
	.4byte	0x283
	.uleb128 0x1c
	.4byte	0x385
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x928
	.uleb128 0x1b
	.4byte	0x2c
	.4byte	0x960
	.uleb128 0x1c
	.4byte	0x795
	.uleb128 0x1c
	.4byte	0x283
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x94c
	.uleb128 0xa
	.4byte	0x46
	.4byte	0x976
	.uleb128 0x17
	.4byte	0xac
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x46
	.4byte	0x986
	.uleb128 0x17
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x11f
	.byte	0x18
	.4byte	0x634
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0xc
	.byte	0xe
	.2byte	0x123
	.byte	0x8
	.4byte	0x9cc
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0xe
	.2byte	0x125
	.byte	0x11
	.4byte	0x9cc
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x126
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0xe
	.2byte	0x127
	.byte	0xb
	.4byte	0x9d2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x993
	.uleb128 0x8
	.byte	0x4
	.4byte	0x986
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0xe
	.byte	0xe
	.2byte	0x13f
	.byte	0x8
	.4byte	0xa11
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xe
	.2byte	0x140
	.byte	0x12
	.4byte	0xa11
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xe
	.2byte	0x141
	.byte	0x12
	.4byte	0xa11
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x142
	.byte	0x12
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0xa21
	.uleb128 0x17
	.4byte	0xac
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.byte	0xd0
	.byte	0xe
	.2byte	0x25b
	.byte	0x7
	.4byte	0xb36
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xe
	.2byte	0x25d
	.byte	0x18
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0xe
	.2byte	0x25e
	.byte	0x12
	.4byte	0x2f9
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0xe
	.2byte	0x25f
	.byte	0x10
	.4byte	0xb36
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x260
	.byte	0x17
	.4byte	0x4d5
	.byte	0x24
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0xe
	.2byte	0x261
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x262
	.byte	0x2c
	.4byte	0x25
	.byte	0x50
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x263
	.byte	0x1a
	.4byte	0x9d8
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x264
	.byte	0x16
	.4byte	0x441
	.byte	0x68
	.uleb128 0x1e
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x265
	.byte	0x16
	.4byte	0x441
	.byte	0x70
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x266
	.byte	0x16
	.4byte	0x441
	.byte	0x78
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x267
	.byte	0x10
	.4byte	0xb46
	.byte	0x80
	.uleb128 0x1e
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x268
	.byte	0x10
	.4byte	0xb56
	.byte	0x88
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0xe
	.2byte	0x269
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.uleb128 0x1e
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x26a
	.byte	0x16
	.4byte	0x441
	.byte	0xa4
	.uleb128 0x1e
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x26b
	.byte	0x16
	.4byte	0x441
	.byte	0xac
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0xe
	.2byte	0x26c
	.byte	0x16
	.4byte	0x441
	.byte	0xb4
	.uleb128 0x1e
	.4byte	.LASF168
	.byte	0xe
	.2byte	0x26d
	.byte	0x16
	.4byte	0x441
	.byte	0xbc
	.uleb128 0x1e
	.4byte	.LASF169
	.byte	0xe
	.2byte	0x26e
	.byte	0x16
	.4byte	0x441
	.byte	0xc4
	.uleb128 0x1e
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x26f
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x277
	.4byte	0xb46
	.uleb128 0x17
	.4byte	0xac
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x277
	.4byte	0xb56
	.uleb128 0x17
	.4byte	0xac
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x277
	.4byte	0xb66
	.uleb128 0x17
	.4byte	0xac
	.byte	0x17
	.byte	0
	.uleb128 0x21
	.byte	0xf0
	.byte	0xe
	.2byte	0x274
	.byte	0x7
	.4byte	0xb8d
	.uleb128 0x1e
	.4byte	.LASF171
	.byte	0xe
	.2byte	0x277
	.byte	0x1b
	.4byte	0xb8d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF172
	.byte	0xe
	.2byte	0x278
	.byte	0x18
	.4byte	0xb9d
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x62e
	.4byte	0xb9d
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0xac
	.4byte	0xbad
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.byte	0xf0
	.byte	0xe
	.2byte	0x259
	.byte	0x3
	.4byte	0xbd2
	.uleb128 0x23
	.4byte	.LASF121
	.byte	0xe
	.2byte	0x270
	.byte	0xb
	.4byte	0xa21
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x279
	.byte	0xb
	.4byte	0xb66
	.byte	0
	.uleb128 0xa
	.4byte	0x277
	.4byte	0xbe2
	.uleb128 0x17
	.4byte	0xac
	.byte	0x18
	.byte	0
	.uleb128 0x24
	.4byte	.LASF506
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe2
	.uleb128 0x25
	.4byte	0xbf8
	.uleb128 0x1c
	.4byte	0x795
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbed
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4bf
	.uleb128 0x25
	.4byte	0xc0f
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc15
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc04
	.uleb128 0xa
	.4byte	0x986
	.4byte	0xc2b
	.uleb128 0x17
	.4byte	0xac
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x30a
	.byte	0x17
	.4byte	0x795
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x30b
	.byte	0x1d
	.4byte	0x79b
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xf
	.byte	0x63
	.byte	0xe
	.4byte	0x2f9
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0x8
	.byte	0x10
	.byte	0x29
	.byte	0x10
	.4byte	0xc79
	.uleb128 0xf
	.4byte	.LASF178
	.byte	0x10
	.byte	0x2b
	.byte	0x9
	.4byte	0xc79
	.byte	0
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0x10
	.byte	0x2c
	.byte	0xf
	.4byte	0xac
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x283
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x10
	.byte	0x2d
	.byte	0x2
	.4byte	0xc51
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0x3
	.byte	0x61
	.byte	0xc
	.4byte	0x188
	.uleb128 0xc
	.4byte	.LASF181
	.byte	0x3
	.byte	0x62
	.byte	0xc
	.4byte	0x188
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x3
	.byte	0xa0
	.byte	0xe
	.4byte	0xd06
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0x9
	.uleb128 0x12
	.4byte	.LASF186
	.byte	0x11
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0x19
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xb
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0x13
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF196
	.byte	0x3
	.byte	0xaf
	.byte	0x3
	.4byte	0xca3
	.uleb128 0x28
	.byte	0x7
	.byte	0x4
	.4byte	0xac
	.byte	0x3
	.2byte	0x1d9
	.byte	0x1
	.4byte	0xdcd
	.uleb128 0x29
	.4byte	.LASF197
	.4byte	0x10000
	.uleb128 0x29
	.4byte	.LASF198
	.4byte	0x10001
	.uleb128 0x29
	.4byte	.LASF199
	.4byte	0x10002
	.uleb128 0x29
	.4byte	.LASF200
	.4byte	0x10003
	.uleb128 0x29
	.4byte	.LASF201
	.4byte	0x10004
	.uleb128 0x29
	.4byte	.LASF202
	.4byte	0x10005
	.uleb128 0x29
	.4byte	.LASF203
	.4byte	0x10006
	.uleb128 0x29
	.4byte	.LASF204
	.4byte	0x10108
	.uleb128 0x29
	.4byte	.LASF205
	.4byte	0x10109
	.uleb128 0x29
	.4byte	.LASF206
	.4byte	0x1010a
	.uleb128 0x29
	.4byte	.LASF207
	.4byte	0x1010b
	.uleb128 0x29
	.4byte	.LASF208
	.4byte	0x1010c
	.uleb128 0x29
	.4byte	.LASF209
	.4byte	0x1010d
	.uleb128 0x29
	.4byte	.LASF210
	.4byte	0x1010e
	.uleb128 0x29
	.4byte	.LASF211
	.4byte	0x30000
	.uleb128 0x29
	.4byte	.LASF212
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF213
	.4byte	0x60000
	.uleb128 0x29
	.4byte	.LASF214
	.4byte	0xa0000
	.uleb128 0x29
	.4byte	.LASF215
	.4byte	0xe0000
	.byte	0
	.uleb128 0xe
	.4byte	.LASF216
	.byte	0x4
	.byte	0x11
	.byte	0x65
	.byte	0x10
	.4byte	0xdf1
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0x11
	.byte	0x66
	.byte	0x6
	.4byte	0x188
	.byte	0
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0x11
	.byte	0x67
	.byte	0x6
	.4byte	0x188
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF216
	.byte	0x11
	.byte	0x68
	.byte	0x3
	.4byte	0xdcd
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0x10
	.byte	0x11
	.byte	0x6b
	.byte	0x10
	.4byte	0xe57
	.uleb128 0x10
	.ascii	"hdx\000"
	.byte	0x11
	.byte	0x6c
	.byte	0x9
	.4byte	0x1af
	.byte	0
	.uleb128 0x10
	.ascii	"vdx\000"
	.byte	0x11
	.byte	0x6d
	.byte	0x9
	.4byte	0x1af
	.byte	0x2
	.uleb128 0x10
	.ascii	"hdy\000"
	.byte	0x11
	.byte	0x6e
	.byte	0x9
	.4byte	0x1af
	.byte	0x4
	.uleb128 0x10
	.ascii	"vdy\000"
	.byte	0x11
	.byte	0x6f
	.byte	0x9
	.4byte	0x1af
	.byte	0x6
	.uleb128 0x10
	.ascii	"dx\000"
	.byte	0x11
	.byte	0x70
	.byte	0x9
	.4byte	0x1bb
	.byte	0x8
	.uleb128 0x10
	.ascii	"dy\000"
	.byte	0x11
	.byte	0x71
	.byte	0x9
	.4byte	0x1bb
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x11
	.byte	0x72
	.byte	0x3
	.4byte	0xdfd
	.uleb128 0x20
	.4byte	.LASF218
	.byte	0x28
	.byte	0x11
	.2byte	0x1a6
	.byte	0x10
	.4byte	0xefe
	.uleb128 0x1e
	.4byte	.LASF219
	.byte	0x11
	.2byte	0x1a8
	.byte	0x6
	.4byte	0x2c
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x11
	.2byte	0x1a9
	.byte	0x6
	.4byte	0x1bb
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF221
	.byte	0x11
	.2byte	0x1aa
	.byte	0x6
	.4byte	0x1bb
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF222
	.byte	0x11
	.2byte	0x1ab
	.byte	0x6
	.4byte	0x1bb
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF223
	.byte	0x11
	.2byte	0x1ac
	.byte	0x6
	.4byte	0x1bb
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF224
	.byte	0x11
	.2byte	0x1ad
	.byte	0x6
	.4byte	0x1bb
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF225
	.byte	0x11
	.2byte	0x1ae
	.byte	0x6
	.4byte	0x1bb
	.byte	0x18
	.uleb128 0x1e
	.4byte	.LASF226
	.byte	0x11
	.2byte	0x1af
	.byte	0x6
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF227
	.byte	0x11
	.2byte	0x1b0
	.byte	0x6
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF228
	.byte	0x11
	.2byte	0x1b1
	.byte	0x6
	.4byte	0xefe
	.byte	0x24
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF229
	.uleb128 0x14
	.4byte	.LASF218
	.byte	0x11
	.2byte	0x1b2
	.byte	0x2
	.4byte	0xe63
	.uleb128 0xa
	.4byte	0xf22
	.4byte	0xf22
	.uleb128 0x17
	.4byte	0xac
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x26
	.4byte	.LASF230
	.byte	0x11
	.2byte	0x1b6
	.byte	0x11
	.4byte	0xf12
	.uleb128 0xa
	.4byte	0xf45
	.4byte	0xf45
	.uleb128 0x17
	.4byte	0xac
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdf1
	.uleb128 0x26
	.4byte	.LASF231
	.byte	0x11
	.2byte	0x1b7
	.byte	0x13
	.4byte	0xf35
	.uleb128 0xa
	.4byte	0xf68
	.4byte	0xf68
	.uleb128 0x17
	.4byte	0xac
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe57
	.uleb128 0x26
	.4byte	.LASF232
	.byte	0x11
	.2byte	0x1b8
	.byte	0x16
	.4byte	0xf58
	.uleb128 0xa
	.4byte	0xf05
	.4byte	0xf8b
	.uleb128 0x17
	.4byte	0xac
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF233
	.byte	0x11
	.2byte	0x1b9
	.byte	0x10
	.4byte	0xf7b
	.uleb128 0x4
	.4byte	.LASF234
	.byte	0x2
	.byte	0x52
	.byte	0x10
	.4byte	0x111
	.uleb128 0x6
	.ascii	"v16\000"
	.byte	0x2
	.byte	0x62
	.byte	0x13
	.4byte	0x59
	.uleb128 0x6
	.ascii	"v10\000"
	.byte	0x2
	.byte	0x69
	.byte	0x13
	.4byte	0x59
	.uleb128 0x6
	.ascii	"rgb\000"
	.byte	0x2
	.byte	0x72
	.byte	0x18
	.4byte	0x6c
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x2
	.byte	0x90
	.byte	0xe
	.4byte	0xffb
	.uleb128 0x12
	.4byte	.LASF235
	.byte	0
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF239
	.byte	0
	.uleb128 0x12
	.4byte	.LASF240
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF241
	.byte	0x2
	.byte	0x97
	.byte	0x3
	.4byte	0xfc8
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x2
	.byte	0x9c
	.byte	0xe
	.4byte	0x102e
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF244
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF245
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF246
	.byte	0x2
	.byte	0xa1
	.byte	0x3
	.4byte	0x1007
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x2
	.byte	0xa6
	.byte	0xe
	.4byte	0x106d
	.uleb128 0x12
	.4byte	.LASF247
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF248
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF249
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF250
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF251
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF252
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF254
	.byte	0x7
	.byte	0x2
	.4byte	0x6c
	.byte	0x2
	.byte	0xb2
	.byte	0x6
	.4byte	0x10c9
	.uleb128 0x12
	.4byte	.LASF255
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF256
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF257
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF258
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF259
	.byte	0
	.uleb128 0x12
	.4byte	.LASF260
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF261
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF262
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF263
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF264
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF265
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF266
	.2byte	0x8000
	.byte	0
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x2
	.byte	0xc3
	.byte	0x6
	.4byte	0x110c
	.uleb128 0x12
	.4byte	.LASF268
	.byte	0
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF270
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF271
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF272
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF274
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF275
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.byte	0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0xd1
	.byte	0xe
	.4byte	0x116b
	.uleb128 0x29
	.4byte	.LASF276
	.4byte	0x10000
	.uleb128 0x29
	.4byte	.LASF277
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF278
	.4byte	0x40000
	.uleb128 0x29
	.4byte	.LASF279
	.4byte	0x80000
	.uleb128 0x29
	.4byte	.LASF280
	.4byte	0x20000000
	.uleb128 0x12
	.4byte	.LASF281
	.byte	0
	.uleb128 0x29
	.4byte	.LASF282
	.4byte	0x40000000
	.uleb128 0x2a
	.4byte	.LASF283
	.sleb128 -2147483648
	.uleb128 0x2a
	.4byte	.LASF284
	.sleb128 -1073741824
	.byte	0
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x2
	.byte	0xe0
	.byte	0xe
	.4byte	0x11b0
	.uleb128 0x12
	.4byte	.LASF285
	.byte	0
	.uleb128 0x12
	.4byte	.LASF286
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF287
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF288
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF289
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF291
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF292
	.byte	0x7
	.uleb128 0x12
	.4byte	.LASF293
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0x7
	.byte	0x2
	.4byte	0x6c
	.byte	0x2
	.byte	0xf6
	.byte	0x6
	.4byte	0x1208
	.uleb128 0x12
	.4byte	.LASF295
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF296
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF297
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF298
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF299
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF300
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF301
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF302
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF303
	.2byte	0x1000
	.uleb128 0x13
	.4byte	.LASF304
	.2byte	0x2000
	.uleb128 0x13
	.4byte	.LASF305
	.2byte	0x4000
	.byte	0
	.uleb128 0x20
	.4byte	.LASF306
	.byte	0x1c
	.byte	0x2
	.2byte	0x122
	.byte	0x10
	.4byte	0x124f
	.uleb128 0x1e
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x123
	.byte	0x9
	.4byte	0x11d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x124
	.byte	0x9
	.4byte	0x124f
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF309
	.byte	0x2
	.2byte	0x125
	.byte	0x18
	.4byte	0x1255
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF310
	.byte	0x2
	.2byte	0x126
	.byte	0x9
	.4byte	0x11d
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0xa
	.4byte	0x1265
	.4byte	0x1265
	.uleb128 0x17
	.4byte	0xac
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1208
	.uleb128 0x20
	.4byte	.LASF311
	.byte	0x38
	.byte	0x2
	.2byte	0x129
	.byte	0x10
	.4byte	0x1322
	.uleb128 0x1e
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x12a
	.byte	0x9
	.4byte	0x124f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF313
	.byte	0x2
	.2byte	0x12a
	.byte	0x15
	.4byte	0x124f
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF314
	.byte	0x2
	.2byte	0x12b
	.byte	0x18
	.4byte	0x1265
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF315
	.byte	0x2
	.2byte	0x12c
	.byte	0x18
	.4byte	0x1265
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF316
	.byte	0x2
	.2byte	0x12d
	.byte	0x18
	.4byte	0x1265
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF317
	.byte	0x2
	.2byte	0x12f
	.byte	0x18
	.4byte	0x1265
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF318
	.byte	0x2
	.2byte	0x130
	.byte	0x9
	.4byte	0x124f
	.byte	0x18
	.uleb128 0x1e
	.4byte	.LASF319
	.byte	0x2
	.2byte	0x131
	.byte	0x9
	.4byte	0x11d
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF320
	.byte	0x2
	.2byte	0x133
	.byte	0xf
	.4byte	0xc7f
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF321
	.byte	0x2
	.2byte	0x134
	.byte	0xf
	.4byte	0xc7f
	.byte	0x28
	.uleb128 0x1e
	.4byte	.LASF322
	.byte	0x2
	.2byte	0x136
	.byte	0x9
	.4byte	0x11d
	.byte	0x30
	.uleb128 0x1e
	.4byte	.LASF323
	.byte	0x2
	.2byte	0x137
	.byte	0x9
	.4byte	0x11d
	.byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x138
	.byte	0x3
	.4byte	0x126b
	.uleb128 0x20
	.4byte	.LASF324
	.byte	0x54
	.byte	0x2
	.2byte	0x154
	.byte	0x10
	.4byte	0x1410
	.uleb128 0x1e
	.4byte	.LASF325
	.byte	0x2
	.2byte	0x155
	.byte	0x16
	.4byte	0x102e
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF326
	.byte	0x2
	.2byte	0x156
	.byte	0xf
	.4byte	0x1410
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF327
	.byte	0x2
	.2byte	0x157
	.byte	0x6
	.4byte	0x1426
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF328
	.byte	0x2
	.2byte	0x15a
	.byte	0xf
	.4byte	0xc7f
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF329
	.byte	0x2
	.2byte	0x15b
	.byte	0xf
	.4byte	0xc7f
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF330
	.byte	0x2
	.2byte	0x15d
	.byte	0xf
	.4byte	0xc7f
	.byte	0x24
	.uleb128 0x1e
	.4byte	.LASF331
	.byte	0x2
	.2byte	0x15e
	.byte	0xf
	.4byte	0xc7f
	.byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF332
	.byte	0x2
	.2byte	0x15f
	.byte	0x9
	.4byte	0x11d
	.byte	0x34
	.uleb128 0x1e
	.4byte	.LASF333
	.byte	0x2
	.2byte	0x160
	.byte	0x9
	.4byte	0x11d
	.byte	0x38
	.uleb128 0x1e
	.4byte	.LASF334
	.byte	0x2
	.2byte	0x162
	.byte	0x6
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0x1e
	.4byte	.LASF335
	.byte	0x2
	.2byte	0x163
	.byte	0x6
	.4byte	0x2c
	.byte	0x40
	.uleb128 0x1e
	.4byte	.LASF336
	.byte	0x2
	.2byte	0x164
	.byte	0x6
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x1e
	.4byte	.LASF337
	.byte	0x2
	.2byte	0x165
	.byte	0x6
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x1e
	.4byte	.LASF338
	.byte	0x2
	.2byte	0x168
	.byte	0x6
	.4byte	0x199
	.byte	0x4c
	.uleb128 0x1e
	.4byte	.LASF339
	.byte	0x2
	.2byte	0x16a
	.byte	0x8
	.4byte	0x105
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.4byte	0x1420
	.4byte	0x1420
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1322
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x1436
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF324
	.byte	0x2
	.2byte	0x16b
	.byte	0x3
	.4byte	0x132f
	.uleb128 0x26
	.4byte	.LASF340
	.byte	0x2
	.2byte	0x16f
	.byte	0x1a
	.4byte	0x1436
	.uleb128 0x2b
	.4byte	.LASF447
	.byte	0x2
	.2byte	0x172
	.byte	0x1b
	.4byte	0x145d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1436
	.uleb128 0xc
	.4byte	.LASF341
	.byte	0x13
	.byte	0x28
	.byte	0xf
	.4byte	0x238
	.uleb128 0xc
	.4byte	.LASF342
	.byte	0x13
	.byte	0x29
	.byte	0xc
	.4byte	0x199
	.uleb128 0xa
	.4byte	0x1bb
	.4byte	0x1486
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF343
	.byte	0x13
	.byte	0x2c
	.byte	0xc
	.4byte	0x147b
	.uleb128 0x15
	.byte	0x4
	.byte	0x14
	.byte	0x3c
	.byte	0x2
	.4byte	0x14c0
	.uleb128 0x16
	.4byte	.LASF344
	.byte	0x14
	.byte	0x3e
	.byte	0x7
	.4byte	0x22c
	.uleb128 0x16
	.4byte	.LASF345
	.byte	0x14
	.byte	0x3f
	.byte	0x8
	.4byte	0x232
	.uleb128 0x16
	.4byte	.LASF346
	.byte	0x14
	.byte	0x40
	.byte	0x8
	.4byte	0x14c0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x199
	.uleb128 0xe
	.4byte	.LASF347
	.byte	0x10
	.byte	0x14
	.byte	0x34
	.byte	0x10
	.4byte	0x1515
	.uleb128 0xf
	.4byte	.LASF348
	.byte	0x14
	.byte	0x36
	.byte	0x8
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.4byte	.LASF349
	.byte	0x14
	.byte	0x37
	.byte	0x8
	.4byte	0x59
	.byte	0x2
	.uleb128 0x10
	.ascii	"bpp\000"
	.byte	0x14
	.byte	0x38
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF350
	.byte	0x14
	.byte	0x39
	.byte	0x12
	.4byte	0x1515
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF351
	.byte	0x14
	.byte	0x41
	.byte	0x4
	.4byte	0x1492
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF347
	.byte	0x14
	.byte	0x43
	.byte	0x3
	.4byte	0x14c6
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x15
	.byte	0x57
	.byte	0x1
	.4byte	0x154e
	.uleb128 0x12
	.4byte	.LASF352
	.byte	0
	.uleb128 0x12
	.4byte	.LASF353
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF354
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF355
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF356
	.byte	0x15
	.byte	0x5d
	.byte	0x3
	.4byte	0x1527
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x15
	.byte	0x60
	.byte	0xe
	.4byte	0x1581
	.uleb128 0x12
	.4byte	.LASF357
	.byte	0
	.uleb128 0x12
	.4byte	.LASF358
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF359
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF360
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF361
	.byte	0x15
	.byte	0x65
	.byte	0x3
	.4byte	0x155a
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x15
	.byte	0x68
	.byte	0xe
	.4byte	0x15b4
	.uleb128 0x12
	.4byte	.LASF362
	.byte	0
	.uleb128 0x12
	.4byte	.LASF363
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF364
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF365
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF366
	.byte	0x15
	.byte	0x6d
	.byte	0x3
	.4byte	0x158d
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x15
	.byte	0x70
	.byte	0xe
	.4byte	0x15db
	.uleb128 0x12
	.4byte	.LASF367
	.byte	0
	.uleb128 0x12
	.4byte	.LASF368
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF369
	.byte	0x15
	.byte	0x73
	.byte	0x3
	.4byte	0x15c0
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x15
	.byte	0x76
	.byte	0xe
	.4byte	0x160e
	.uleb128 0x12
	.4byte	.LASF370
	.byte	0
	.uleb128 0x12
	.4byte	.LASF371
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF372
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF373
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF374
	.byte	0x15
	.byte	0x7b
	.byte	0x3
	.4byte	0x15e7
	.uleb128 0x18
	.byte	0x1
	.byte	0x15
	.byte	0x87
	.byte	0x5
	.4byte	0x1634
	.uleb128 0x2c
	.4byte	.LASF375
	.byte	0x15
	.byte	0x8a
	.byte	0xa
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.byte	0x15
	.byte	0x8d
	.byte	0x5
	.4byte	0x169e
	.uleb128 0x2c
	.4byte	.LASF376
	.byte	0x15
	.byte	0x8f
	.byte	0xa
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF377
	.byte	0x15
	.byte	0x90
	.byte	0xa
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF378
	.byte	0x15
	.byte	0x91
	.byte	0x13
	.4byte	0x154e
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF379
	.byte	0x15
	.byte	0x92
	.byte	0xa
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF380
	.byte	0x15
	.byte	0x93
	.byte	0x11
	.4byte	0x15db
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF381
	.byte	0x15
	.byte	0x94
	.byte	0xf
	.4byte	0x1581
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.byte	0x15
	.byte	0x85
	.byte	0x4
	.4byte	0x16b2
	.uleb128 0x2d
	.4byte	0x161a
	.uleb128 0x2d
	.4byte	0x1634
	.byte	0
	.uleb128 0x18
	.byte	0x2
	.byte	0x15
	.byte	0x82
	.byte	0x3
	.4byte	0x16d0
	.uleb128 0x2e
	.ascii	"y\000"
	.byte	0x15
	.byte	0x84
	.byte	0x8
	.4byte	0x188
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x2f
	.4byte	0x169e
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x2
	.byte	0x15
	.byte	0x9a
	.byte	0x4
	.4byte	0x16e8
	.uleb128 0x2e
	.ascii	"x\000"
	.byte	0x15
	.byte	0x9b
	.byte	0x9
	.4byte	0x188
	.byte	0x2
	.byte	0x9
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.byte	0x15
	.byte	0xa1
	.byte	0x6
	.4byte	0x1712
	.uleb128 0x2c
	.4byte	.LASF382
	.byte	0x15
	.byte	0xa3
	.byte	0xb
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF383
	.byte	0x15
	.byte	0xa4
	.byte	0xb
	.4byte	0xefe
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.byte	0x15
	.byte	0xa7
	.byte	0x6
	.4byte	0x173c
	.uleb128 0x2c
	.4byte	.LASF384
	.byte	0x15
	.byte	0xa9
	.byte	0xa
	.4byte	0x173
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF226
	.byte	0x15
	.byte	0xaa
	.byte	0xf
	.4byte	0x15b4
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.byte	0x15
	.byte	0xa0
	.byte	0x5
	.4byte	0x1750
	.uleb128 0x2d
	.4byte	0x16e8
	.uleb128 0x2d
	.4byte	0x1712
	.byte	0
	.uleb128 0x18
	.byte	0x2
	.byte	0x15
	.byte	0x9e
	.byte	0x4
	.4byte	0x1760
	.uleb128 0x2f
	.4byte	0x173c
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.byte	0x2
	.byte	0x15
	.byte	0x99
	.byte	0x3
	.4byte	0x1774
	.uleb128 0x2d
	.4byte	0x16d0
	.uleb128 0x2d
	.4byte	0x1750
	.byte	0
	.uleb128 0x18
	.byte	0x2
	.byte	0x15
	.byte	0xb0
	.byte	0x3
	.4byte	0x17ae
	.uleb128 0x2c
	.4byte	.LASF385
	.byte	0x15
	.byte	0xb2
	.byte	0x8
	.4byte	0x188
	.byte	0x2
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF386
	.byte	0x15
	.byte	0xb3
	.byte	0x10
	.4byte	0x160e
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF350
	.byte	0x15
	.byte	0xb4
	.byte	0x7
	.4byte	0x173
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x15
	.byte	0x80
	.byte	0x2
	.4byte	0x17d7
	.uleb128 0x2f
	.4byte	0x16b2
	.byte	0
	.uleb128 0x2f
	.4byte	0x1760
	.byte	0x2
	.uleb128 0x2f
	.4byte	0x1774
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF387
	.byte	0x15
	.byte	0xb7
	.byte	0x7
	.4byte	0x188
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x15
	.byte	0xba
	.byte	0x2
	.4byte	0x17fb
	.uleb128 0xf
	.4byte	.LASF388
	.byte	0x15
	.byte	0xbb
	.byte	0xa
	.4byte	0x17fb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF389
	.byte	0x15
	.byte	0xbc
	.byte	0xa
	.4byte	0x111
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	0x111
	.4byte	0x180b
	.uleb128 0x17
	.4byte	0xac
	.byte	0x2
	.byte	0
	.uleb128 0x30
	.4byte	.LASF390
	.byte	0x8
	.byte	0x15
	.byte	0x7e
	.byte	0xf
	.4byte	0x1823
	.uleb128 0x2d
	.4byte	0x17ae
	.uleb128 0x2d
	.4byte	0x17d7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF390
	.byte	0x15
	.byte	0xbf
	.byte	0x3
	.4byte	0x180b
	.uleb128 0xe
	.4byte	.LASF391
	.byte	0x20
	.byte	0x15
	.byte	0xc4
	.byte	0x10
	.4byte	0x18a5
	.uleb128 0xf
	.4byte	.LASF392
	.byte	0x15
	.byte	0xc6
	.byte	0x9
	.4byte	0x17fb
	.byte	0
	.uleb128 0x10
	.ascii	"hdx\000"
	.byte	0x15
	.byte	0xc7
	.byte	0x8
	.4byte	0x129
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF393
	.byte	0x15
	.byte	0xc9
	.byte	0x9
	.4byte	0x17fb
	.byte	0x8
	.uleb128 0x10
	.ascii	"vdx\000"
	.byte	0x15
	.byte	0xca
	.byte	0x8
	.4byte	0x129
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF394
	.byte	0x15
	.byte	0xcc
	.byte	0x9
	.4byte	0x17fb
	.byte	0x10
	.uleb128 0x10
	.ascii	"hdy\000"
	.byte	0x15
	.byte	0xcd
	.byte	0x8
	.4byte	0x129
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF395
	.byte	0x15
	.byte	0xcf
	.byte	0x9
	.4byte	0x17fb
	.byte	0x18
	.uleb128 0x10
	.ascii	"vdy\000"
	.byte	0x15
	.byte	0xd0
	.byte	0x8
	.4byte	0x129
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF391
	.byte	0x15
	.byte	0xd1
	.byte	0x3
	.4byte	0x182f
	.uleb128 0x27
	.byte	0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x15
	.byte	0xfa
	.byte	0xd
	.4byte	0x190f
	.uleb128 0x12
	.4byte	.LASF396
	.byte	0x10
	.uleb128 0x29
	.4byte	.LASF397
	.4byte	0x10100011
	.uleb128 0x29
	.4byte	.LASF398
	.4byte	0x20200012
	.uleb128 0x29
	.4byte	.LASF399
	.4byte	0x30300013
	.uleb128 0x29
	.4byte	.LASF400
	.4byte	0x40000000
	.uleb128 0x29
	.4byte	.LASF401
	.4byte	0x50200052
	.uleb128 0x29
	.4byte	.LASF402
	.4byte	0x60700053
	.uleb128 0x29
	.4byte	.LASF403
	.4byte	0x70000002
	.uleb128 0x2a
	.4byte	.LASF404
	.sleb128 -2147483613
	.byte	0
	.uleb128 0x14
	.4byte	.LASF405
	.byte	0x15
	.2byte	0x104
	.byte	0x2
	.4byte	0x18b1
	.uleb128 0x20
	.4byte	.LASF406
	.byte	0x4
	.byte	0x15
	.2byte	0x10e
	.byte	0x10
	.4byte	0x1947
	.uleb128 0x1e
	.4byte	.LASF407
	.byte	0x15
	.2byte	0x110
	.byte	0x8
	.4byte	0x188
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF226
	.byte	0x15
	.2byte	0x111
	.byte	0x8
	.4byte	0x188
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF406
	.byte	0x15
	.2byte	0x112
	.byte	0x2
	.4byte	0x191c
	.uleb128 0x22
	.byte	0x4
	.byte	0x15
	.2byte	0x11f
	.byte	0x2
	.4byte	0x1979
	.uleb128 0x23
	.4byte	.LASF408
	.byte	0x15
	.2byte	0x121
	.byte	0x10
	.4byte	0x1979
	.uleb128 0x23
	.4byte	.LASF409
	.byte	0x15
	.2byte	0x122
	.byte	0x13
	.4byte	0x197f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1823
	.uleb128 0x8
	.byte	0x4
	.4byte	0x18a5
	.uleb128 0x20
	.4byte	.LASF410
	.byte	0x18
	.byte	0x15
	.2byte	0x119
	.byte	0x10
	.4byte	0x19e0
	.uleb128 0x1e
	.4byte	.LASF411
	.byte	0x15
	.2byte	0x11b
	.byte	0x6
	.4byte	0x2c
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF412
	.byte	0x15
	.2byte	0x11c
	.byte	0x6
	.4byte	0x1af
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF413
	.byte	0x15
	.2byte	0x11d
	.byte	0xf
	.4byte	0x19e0
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF414
	.byte	0x15
	.2byte	0x11e
	.byte	0x6
	.4byte	0x1af
	.byte	0xc
	.uleb128 0x2f
	.4byte	0x1954
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF415
	.byte	0x15
	.2byte	0x124
	.byte	0x10
	.4byte	0x190f
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1947
	.uleb128 0x14
	.4byte	.LASF410
	.byte	0x15
	.2byte	0x125
	.byte	0x2
	.4byte	0x1985
	.uleb128 0x26
	.4byte	.LASF416
	.byte	0x15
	.2byte	0x12c
	.byte	0x11
	.4byte	0x19e6
	.uleb128 0x26
	.4byte	.LASF417
	.byte	0x15
	.2byte	0x12e
	.byte	0x11
	.4byte	0x19e6
	.uleb128 0xc
	.4byte	.LASF418
	.byte	0x16
	.byte	0x10
	.byte	0xf
	.4byte	0x2ff
	.uleb128 0xc
	.4byte	.LASF419
	.byte	0x16
	.byte	0xfc
	.byte	0xe
	.4byte	0x2f9
	.uleb128 0xc
	.4byte	.LASF420
	.byte	0x16
	.byte	0xfd
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xc
	.4byte	.LASF421
	.byte	0x16
	.byte	0xfd
	.byte	0x14
	.4byte	0x2c
	.uleb128 0xc
	.4byte	.LASF422
	.byte	0x16
	.byte	0xfd
	.byte	0x1c
	.4byte	0x2c
	.uleb128 0xc
	.4byte	.LASF423
	.byte	0x16
	.byte	0xff
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xa
	.4byte	0x183
	.4byte	0x1a60
	.uleb128 0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x1a55
	.uleb128 0xc
	.4byte	.LASF424
	.byte	0x17
	.byte	0x1
	.byte	0x11
	.4byte	0x1a60
	.uleb128 0xc
	.4byte	.LASF425
	.byte	0x17
	.byte	0x2
	.byte	0x11
	.4byte	0x1a60
	.uleb128 0xc
	.4byte	.LASF426
	.byte	0x17
	.byte	0x3
	.byte	0x12
	.4byte	0x1aa
	.uleb128 0x31
	.4byte	.LASF427
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	xRotation
	.uleb128 0x31
	.4byte	.LASF428
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	yRotation
	.uleb128 0x31
	.4byte	.LASF429
	.byte	0x1
	.byte	0x9
	.byte	0x5
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	xSpeed
	.uleb128 0x31
	.4byte	.LASF430
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	ySpeed
	.uleb128 0x31
	.4byte	.LASF431
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	zPosition
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x1af3
	.uleb128 0x17
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF432
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.4byte	0x1ae3
	.uleb128 0x5
	.byte	0x3
	.4byte	texture
	.uleb128 0x32
	.4byte	.LASF433
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0xefe
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x272b
	.uleb128 0x33
	.4byte	0x31f2
	.4byte	.LBI170
	.2byte	.LVU14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.4byte	0x1b5d
	.uleb128 0x34
	.4byte	0x321a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x34
	.4byte	0x320d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x34
	.4byte	0x3200
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x35
	.4byte	0x3123
	.4byte	.LBI174
	.2byte	.LVU23
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.uleb128 0x33
	.4byte	0x3192
	.4byte	.LBI182
	.2byte	.LVU31
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.4byte	0x1bad
	.uleb128 0x34
	.4byte	0x31b6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x34
	.4byte	0x31ab
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x34
	.4byte	0x31a0
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI185
	.2byte	.LVU62
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x69
	.byte	0x3
	.4byte	0x1c0c
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI186
	.2byte	.LVU64
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x304c
	.4byte	.LBI195
	.2byte	.LVU45
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.4byte	0x1c30
	.uleb128 0x34
	.4byte	0x305a
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x33
	.4byte	0x324e
	.4byte	.LBI200
	.2byte	.LVU55
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.4byte	0x1c54
	.uleb128 0x34
	.4byte	0x325c
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI203
	.2byte	.LVU74
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x6a
	.byte	0x19
	.4byte	0x1c92
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI215
	.2byte	.LVU83
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x6b
	.byte	0x1c
	.4byte	0x1cd0
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI221
	.2byte	.LVU94
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x6c
	.byte	0x1f
	.4byte	0x1d0e
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI227
	.2byte	.LVU105
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.byte	0x6d
	.byte	0x1c
	.4byte	0x1d4c
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI231
	.2byte	.LVU115
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.byte	0x6f
	.byte	0x3
	.4byte	0x1dab
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI232
	.2byte	.LVU117
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI246
	.2byte	.LVU124
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x70
	.byte	0x1c
	.4byte	0x1de9
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI250
	.2byte	.LVU134
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.byte	0x71
	.byte	0x1f
	.4byte	0x1e27
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST31
	.4byte	.LVUS31
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI254
	.2byte	.LVU144
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x72
	.byte	0x1c
	.4byte	0x1e65
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST35
	.4byte	.LVUS35
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI258
	.2byte	.LVU154
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.byte	0x73
	.byte	0x19
	.4byte	0x1ea3
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST39
	.4byte	.LVUS39
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI263
	.2byte	.LVU165
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0x75
	.byte	0x3
	.4byte	0x1f02
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI264
	.2byte	.LVU167
	.4byte	.Ldebug_ranges0+0x258
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST43
	.4byte	.LVUS43
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI276
	.2byte	.LVU173
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.byte	0x76
	.byte	0x1c
	.4byte	0x1f40
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST44
	.4byte	.LVUS44
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI280
	.2byte	.LVU183
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.byte	0x77
	.byte	0x19
	.4byte	0x1f7e
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST49
	.4byte	.LVUS49
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI284
	.2byte	.LVU193
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0x78
	.byte	0x1c
	.4byte	0x1fbc
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI290
	.2byte	.LVU204
	.4byte	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.byte	0x79
	.byte	0x1f
	.4byte	0x1ffa
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST54
	.4byte	.LVUS54
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI294
	.2byte	.LVU214
	.4byte	.Ldebug_ranges0+0x2e8
	.byte	0x1
	.byte	0x7b
	.byte	0x3
	.4byte	0x2059
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI295
	.2byte	.LVU216
	.4byte	.Ldebug_ranges0+0x318
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST59
	.4byte	.LVUS59
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI309
	.2byte	.LVU223
	.4byte	.Ldebug_ranges0+0x340
	.byte	0x1
	.byte	0x7c
	.byte	0x1f
	.4byte	0x2097
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST60
	.4byte	.LVUS60
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI315
	.2byte	.LVU234
	.4byte	.Ldebug_ranges0+0x360
	.byte	0x1
	.byte	0x7d
	.byte	0x1c
	.4byte	0x20d5
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST65
	.4byte	.LVUS65
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI321
	.2byte	.LVU245
	.4byte	.Ldebug_ranges0+0x380
	.byte	0x1
	.byte	0x7e
	.byte	0x19
	.4byte	0x2113
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST66
	.4byte	.LVUS66
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI327
	.2byte	.LVU256
	.4byte	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.byte	0x7f
	.byte	0x1c
	.4byte	0x2151
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST70
	.4byte	.LVUS70
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI332
	.2byte	.LVU267
	.4byte	.Ldebug_ranges0+0x3c8
	.byte	0x1
	.byte	0x81
	.byte	0x3
	.4byte	0x21b0
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI333
	.2byte	.LVU269
	.4byte	.Ldebug_ranges0+0x3f0
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST75
	.4byte	.LVUS75
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI345
	.2byte	.LVU275
	.4byte	.Ldebug_ranges0+0x410
	.byte	0x1
	.byte	0x82
	.byte	0x1c
	.4byte	0x21ee
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST78
	.4byte	.LVUS78
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI351
	.2byte	.LVU286
	.4byte	.Ldebug_ranges0+0x430
	.byte	0x1
	.byte	0x83
	.byte	0x1f
	.4byte	0x222c
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST80
	.4byte	.LVUS80
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI355
	.2byte	.LVU296
	.4byte	.Ldebug_ranges0+0x448
	.byte	0x1
	.byte	0x84
	.byte	0x1c
	.4byte	0x226a
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST82
	.4byte	.LVUS82
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI359
	.2byte	.LVU306
	.4byte	.Ldebug_ranges0+0x460
	.byte	0x1
	.byte	0x85
	.byte	0x19
	.4byte	0x22a8
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST85
	.4byte	.LVUS85
	.byte	0
	.uleb128 0x35
	.4byte	0x3244
	.4byte	.LBI363
	.2byte	.LVU316
	.4byte	.Ldebug_ranges0+0x480
	.byte	0x1
	.byte	0x86
	.byte	0x2
	.uleb128 0x33
	.4byte	0x304c
	.4byte	.LBI371
	.2byte	.LVU321
	.4byte	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.byte	0x89
	.byte	0x2
	.4byte	0x22de
	.uleb128 0x34
	.4byte	0x305a
	.4byte	.LLST88
	.4byte	.LVUS88
	.byte	0
	.uleb128 0x33
	.4byte	0x324e
	.4byte	.LBI375
	.2byte	.LVU329
	.4byte	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.byte	0x8a
	.byte	0x2
	.4byte	0x2302
	.uleb128 0x34
	.4byte	0x325c
	.4byte	.LLST89
	.4byte	.LVUS89
	.byte	0
	.uleb128 0x33
	.4byte	0x2ec4
	.4byte	.LBI382
	.2byte	.LVU336
	.4byte	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.byte	0x8c
	.byte	0x3
	.4byte	0x2361
	.uleb128 0x34
	.4byte	0x2ee8
	.4byte	.LLST90
	.4byte	.LVUS90
	.uleb128 0x34
	.4byte	0x2edd
	.4byte	.LLST90
	.4byte	.LVUS90
	.uleb128 0x34
	.4byte	0x2ed2
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0x36
	.4byte	0x312d
	.4byte	.LBI383
	.2byte	.LVU338
	.4byte	.Ldebug_ranges0+0x500
	.byte	0x2
	.2byte	0x5a5
	.byte	0x2
	.uleb128 0x34
	.4byte	0x313b
	.4byte	.LLST93
	.4byte	.LVUS93
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI390
	.2byte	.LVU344
	.4byte	.Ldebug_ranges0+0x518
	.byte	0x1
	.byte	0x8d
	.byte	0x19
	.4byte	0x239f
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST94
	.4byte	.LVUS94
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI396
	.2byte	.LVU355
	.4byte	.Ldebug_ranges0+0x538
	.byte	0x1
	.byte	0x8e
	.byte	0x1c
	.4byte	0x23dd
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST97
	.4byte	.LVUS97
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST98
	.4byte	.LVUS98
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST98
	.4byte	.LVUS98
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI402
	.2byte	.LVU366
	.4byte	.Ldebug_ranges0+0x558
	.byte	0x1
	.byte	0x8f
	.byte	0x1f
	.4byte	0x241b
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST102
	.4byte	.LVUS102
	.byte	0
	.uleb128 0x33
	.4byte	0x31c2
	.4byte	.LBI408
	.2byte	.LVU377
	.4byte	.Ldebug_ranges0+0x578
	.byte	0x1
	.byte	0x90
	.byte	0x1c
	.4byte	0x2459
	.uleb128 0x34
	.4byte	0x31e6
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x34
	.4byte	0x31db
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0x34
	.4byte	0x31d0
	.4byte	.LLST103
	.4byte	.LVUS103
	.byte	0
	.uleb128 0x35
	.4byte	0x3244
	.4byte	.LBI412
	.2byte	.LVU388
	.4byte	.Ldebug_ranges0+0x598
	.byte	0x1
	.byte	0x91
	.byte	0x2
	.uleb128 0x37
	.4byte	.LVL10
	.4byte	0x331a
	.4byte	0x248b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL11
	.4byte	0x331a
	.4byte	0x24ab
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL13
	.4byte	0x3327
	.4byte	0x24be
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL16
	.4byte	0x3334
	.4byte	0x24d8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL18
	.4byte	0x3334
	.4byte	0x24f2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL20
	.4byte	0x3334
	.4byte	0x250c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL22
	.4byte	0x3334
	.4byte	0x2526
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL25
	.4byte	0x3334
	.4byte	0x2540
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL27
	.4byte	0x3334
	.4byte	0x255a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL29
	.4byte	0x3334
	.4byte	0x2574
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL31
	.4byte	0x3334
	.4byte	0x258e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL34
	.4byte	0x3334
	.4byte	0x25a8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL36
	.4byte	0x3334
	.4byte	0x25c2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL38
	.4byte	0x3334
	.4byte	0x25dc
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL40
	.4byte	0x3334
	.4byte	0x25f6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL43
	.4byte	0x3334
	.4byte	0x2610
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL45
	.4byte	0x3334
	.4byte	0x262a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL47
	.4byte	0x3334
	.4byte	0x2644
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL49
	.4byte	0x3334
	.4byte	0x265e
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL52
	.4byte	0x3334
	.4byte	0x2678
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL54
	.4byte	0x3334
	.4byte	0x2692
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL56
	.4byte	0x3334
	.4byte	0x26ac
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL58
	.4byte	0x3334
	.4byte	0x26c6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL64
	.4byte	0x3334
	.4byte	0x26e0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL66
	.4byte	0x3334
	.4byte	0x26fa
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL68
	.4byte	0x3334
	.4byte	0x2714
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL70
	.4byte	0x3334
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF434
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0xefe
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27f7
	.uleb128 0x3a
	.ascii	"pcx\000"
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x151b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.4byte	.LVL0
	.4byte	0x3341
	.4byte	0x2768
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL1
	.4byte	0x334d
	.4byte	0x277c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL2
	.4byte	0x3359
	.4byte	0x2795
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL3
	.4byte	0x3327
	.4byte	0x27a8
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL4
	.4byte	0x3366
	.4byte	0x27e6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x3
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x39
	.4byte	.LVL5
	.4byte	0x3373
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF435
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ec4
	.uleb128 0x3c
	.4byte	0x32e4
	.4byte	.LBI476
	.2byte	.LVU409
	.4byte	.LBB476
	.4byte	.LBE476-.LBB476
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.4byte	0x2839
	.uleb128 0x34
	.4byte	0x32f2
	.4byte	.LLST106
	.4byte	.LVUS106
	.byte	0
	.uleb128 0x3c
	.4byte	0x3300
	.4byte	.LBI478
	.2byte	.LVU414
	.4byte	.LBB478
	.4byte	.LBE478-.LBB478
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.4byte	0x2861
	.uleb128 0x34
	.4byte	0x330e
	.4byte	.LLST107
	.4byte	.LVUS107
	.byte	0
	.uleb128 0x3c
	.4byte	0x2f52
	.4byte	.LBI480
	.2byte	.LVU419
	.4byte	.LBB480
	.4byte	.LBE480-.LBB480
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.4byte	0x2885
	.uleb128 0x3d
	.4byte	.LVL76
	.4byte	0x337f
	.byte	0
	.uleb128 0x33
	.4byte	0x3030
	.4byte	.LBI482
	.2byte	.LVU422
	.4byte	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.4byte	0x28a9
	.uleb128 0x34
	.4byte	0x303e
	.4byte	.LLST108
	.4byte	.LVUS108
	.byte	0
	.uleb128 0x33
	.4byte	0x2f0f
	.4byte	.LBI486
	.2byte	.LVU439
	.4byte	.Ldebug_ranges0+0x5d8
	.byte	0x1
	.byte	0x20
	.byte	0x2
	.4byte	0x28f4
	.uleb128 0x34
	.4byte	0x2f44
	.4byte	.LLST109
	.4byte	.LVUS109
	.uleb128 0x34
	.4byte	0x2f37
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x34
	.4byte	0x2f2a
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x34
	.4byte	0x2f1d
	.4byte	.LLST110
	.4byte	.LVUS110
	.byte	0
	.uleb128 0x33
	.4byte	0x3030
	.4byte	.LBI490
	.2byte	.LVU429
	.4byte	.Ldebug_ranges0+0x5f0
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.4byte	0x2918
	.uleb128 0x34
	.4byte	0x303e
	.4byte	.LLST113
	.4byte	.LVUS113
	.byte	0
	.uleb128 0x33
	.4byte	0x3030
	.4byte	.LBI496
	.2byte	.LVU434
	.4byte	.Ldebug_ranges0+0x610
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.4byte	0x293c
	.uleb128 0x34
	.4byte	0x303e
	.4byte	.LLST114
	.4byte	.LVUS114
	.byte	0
	.uleb128 0x33
	.4byte	0x2ef4
	.4byte	.LBI502
	.2byte	.LVU450
	.4byte	.Ldebug_ranges0+0x628
	.byte	0x1
	.byte	0x21
	.byte	0x2
	.4byte	0x2960
	.uleb128 0x34
	.4byte	0x2f02
	.4byte	.LLST115
	.4byte	.LVUS115
	.byte	0
	.uleb128 0x33
	.4byte	0x3228
	.4byte	.LBI505
	.2byte	.LVU458
	.4byte	.Ldebug_ranges0+0x640
	.byte	0x1
	.byte	0x22
	.byte	0x2
	.4byte	0x2984
	.uleb128 0x34
	.4byte	0x3236
	.4byte	.LLST116
	.4byte	.LVUS116
	.byte	0
	.uleb128 0x3c
	.4byte	0x30c8
	.4byte	.LBI510
	.2byte	.LVU463
	.4byte	.LBB510
	.4byte	.LBE510-.LBB510
	.byte	0x1
	.byte	0x25
	.byte	0x2
	.4byte	0x29d3
	.uleb128 0x34
	.4byte	0x30fa
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x34
	.4byte	0x30ee
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x34
	.4byte	0x30e2
	.4byte	.LLST119
	.4byte	.LVUS119
	.uleb128 0x34
	.4byte	0x30d6
	.4byte	.LLST119
	.4byte	.LVUS119
	.byte	0
	.uleb128 0x33
	.4byte	0x3107
	.4byte	.LBI512
	.2byte	.LVU469
	.4byte	.Ldebug_ranges0+0x658
	.byte	0x1
	.byte	0x2a
	.byte	0x2
	.4byte	0x29f7
	.uleb128 0x34
	.4byte	0x3115
	.4byte	.LLST121
	.4byte	.LVUS121
	.byte	0
	.uleb128 0x33
	.4byte	0x2f5c
	.4byte	.LBI515
	.2byte	.LVU480
	.4byte	.Ldebug_ranges0+0x670
	.byte	0x1
	.byte	0x2c
	.byte	0x2
	.4byte	0x2cf6
	.uleb128 0x34
	.4byte	0x2f6a
	.4byte	.LLST122
	.4byte	.LVUS122
	.uleb128 0x34
	.4byte	0x2f77
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x34
	.4byte	0x2f84
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x34
	.4byte	0x2f91
	.4byte	.LLST125
	.4byte	.LVUS125
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x670
	.uleb128 0x3f
	.4byte	0x2f9e
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x3f
	.4byte	0x2fab
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x3f
	.4byte	0x2fb8
	.4byte	.LLST128
	.4byte	.LVUS128
	.uleb128 0x3f
	.4byte	0x2fc5
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x40
	.4byte	0x3288
	.4byte	.LBI517
	.2byte	.LVU484
	.4byte	.Ldebug_ranges0+0x6a0
	.byte	0x2
	.2byte	0x47f
	.byte	0x9
	.4byte	0x2abf
	.uleb128 0x34
	.4byte	0x32a3
	.4byte	.LLST130
	.4byte	.LVUS130
	.uleb128 0x34
	.4byte	0x3299
	.4byte	.LLST131
	.4byte	.LVUS131
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x6a0
	.uleb128 0x3f
	.4byte	0x32ad
	.4byte	.LLST132
	.4byte	.LVUS132
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x3288
	.4byte	.LBI521
	.2byte	.LVU496
	.4byte	.LBB521
	.4byte	.LBE521-.LBB521
	.byte	0x2
	.2byte	0x482
	.byte	0x9
	.4byte	0x2b0c
	.uleb128 0x34
	.4byte	0x32a3
	.4byte	.LLST133
	.4byte	.LVUS133
	.uleb128 0x34
	.4byte	0x3299
	.4byte	.LLST134
	.4byte	.LVUS134
	.uleb128 0x42
	.4byte	.LBB522
	.4byte	.LBE522-.LBB522
	.uleb128 0x3f
	.4byte	0x32ad
	.4byte	.LLST135
	.4byte	.LVUS135
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	0x3288
	.4byte	.LBI523
	.2byte	.LVU505
	.4byte	.Ldebug_ranges0+0x6b8
	.byte	0x2
	.2byte	0x483
	.byte	0x9
	.4byte	0x2b49
	.uleb128 0x34
	.4byte	0x32a3
	.4byte	.LLST136
	.4byte	.LVUS136
	.uleb128 0x34
	.4byte	0x3299
	.4byte	.LLST137
	.4byte	.LVUS137
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x6b8
	.uleb128 0x43
	.4byte	0x32ad
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	0x2fd3
	.4byte	.LBI526
	.2byte	.LVU513
	.4byte	.Ldebug_ranges0+0x6d0
	.byte	0x2
	.2byte	0x485
	.byte	0x2
	.4byte	0x2ce3
	.uleb128 0x34
	.4byte	0x3015
	.4byte	.LLST138
	.4byte	.LVUS138
	.uleb128 0x34
	.4byte	0x3022
	.4byte	.LLST139
	.4byte	.LVUS139
	.uleb128 0x34
	.4byte	0x3008
	.4byte	.LLST140
	.4byte	.LVUS140
	.uleb128 0x34
	.4byte	0x2ffb
	.4byte	.LLST141
	.4byte	.LVUS141
	.uleb128 0x34
	.4byte	0x2fee
	.4byte	.LLST142
	.4byte	.LVUS142
	.uleb128 0x34
	.4byte	0x2fe1
	.4byte	.LLST143
	.4byte	.LVUS143
	.uleb128 0x40
	.4byte	0x32ba
	.4byte	.LBI528
	.2byte	.LVU517
	.4byte	.Ldebug_ranges0+0x700
	.byte	0x2
	.2byte	0x460
	.byte	0x1a
	.4byte	0x2be0
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST144
	.4byte	.LVUS144
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST145
	.4byte	.LVUS145
	.byte	0
	.uleb128 0x40
	.4byte	0x32ba
	.4byte	.LBI534
	.2byte	.LVU549
	.4byte	.Ldebug_ranges0+0x720
	.byte	0x2
	.2byte	0x466
	.byte	0x1a
	.4byte	0x2c12
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST146
	.4byte	.LVUS146
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST147
	.4byte	.LVUS147
	.byte	0
	.uleb128 0x41
	.4byte	0x32ba
	.4byte	.LBI540
	.2byte	.LVU578
	.4byte	.LBB540
	.4byte	.LBE540-.LBB540
	.byte	0x2
	.2byte	0x46a
	.byte	0x1a
	.4byte	0x2c48
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST148
	.4byte	.LVUS148
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST149
	.4byte	.LVUS149
	.byte	0
	.uleb128 0x41
	.4byte	0x32ba
	.4byte	.LBI542
	.2byte	.LVU602
	.4byte	.LBB542
	.4byte	.LBE542-.LBB542
	.byte	0x2
	.2byte	0x46b
	.byte	0x1a
	.4byte	0x2c7e
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST150
	.4byte	.LVUS150
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST151
	.4byte	.LVUS151
	.byte	0
	.uleb128 0x41
	.4byte	0x32ba
	.4byte	.LBI544
	.2byte	.LVU625
	.4byte	.LBB544
	.4byte	.LBE544-.LBB544
	.byte	0x2
	.2byte	0x46c
	.byte	0x1b
	.4byte	0x2cb4
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST152
	.4byte	.LVUS152
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST153
	.4byte	.LVUS153
	.byte	0
	.uleb128 0x36
	.4byte	0x32ba
	.4byte	.LBI546
	.2byte	.LVU660
	.4byte	.Ldebug_ranges0+0x740
	.byte	0x2
	.2byte	0x471
	.byte	0x1b
	.uleb128 0x34
	.4byte	0x32d7
	.4byte	.LLST154
	.4byte	.LVUS154
	.uleb128 0x34
	.4byte	0x32cb
	.4byte	.LLST155
	.4byte	.LVUS155
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL87
	.4byte	0x338c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc71
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0x3123
	.4byte	.LBI564
	.2byte	.LVU476
	.4byte	.LBB564
	.4byte	.LBE564-.LBB564
	.byte	0x1
	.byte	0x2b
	.byte	0x2
	.uleb128 0x3c
	.4byte	0x3068
	.4byte	.LBI570
	.2byte	.LVU696
	.4byte	.LBB570
	.4byte	.LBE570-.LBB570
	.byte	0x1
	.byte	0x32
	.byte	0x2
	.4byte	0x2d4c
	.uleb128 0x42
	.4byte	.LBB571
	.4byte	.LBE571-.LBB571
	.uleb128 0x45
	.4byte	0x3076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x43
	.4byte	0x3083
	.uleb128 0x3f
	.4byte	0x3090
	.4byte	.LLST156
	.4byte	.LVUS156
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x3149
	.4byte	.LBI572
	.2byte	.LVU713
	.4byte	.Ldebug_ranges0+0x758
	.byte	0x1
	.byte	0x35
	.byte	0x2
	.4byte	0x2da4
	.uleb128 0x34
	.4byte	0x3186
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x34
	.4byte	0x317b
	.4byte	.LLST158
	.4byte	.LVUS158
	.uleb128 0x34
	.4byte	0x3170
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x34
	.4byte	0x3163
	.4byte	.LLST160
	.4byte	.LVUS160
	.uleb128 0x34
	.4byte	0x3157
	.4byte	.LLST157
	.4byte	.LVUS157
	.byte	0
	.uleb128 0x33
	.4byte	0x3107
	.4byte	.LBI576
	.2byte	.LVU724
	.4byte	.Ldebug_ranges0+0x770
	.byte	0x1
	.byte	0x37
	.byte	0x2
	.4byte	0x2dc1
	.uleb128 0x46
	.4byte	0x3115
	.byte	0x2
	.byte	0
	.uleb128 0x3c
	.4byte	0x30ac
	.4byte	.LBI580
	.2byte	.LVU734
	.4byte	.LBB580
	.4byte	.LBE580-.LBB580
	.byte	0x1
	.byte	0x3d
	.byte	0x3
	.4byte	0x2de9
	.uleb128 0x34
	.4byte	0x30ba
	.4byte	.LLST162
	.4byte	.LVUS162
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL72
	.4byte	0x3398
	.uleb128 0x37
	.4byte	.LVL73
	.4byte	0x33a4
	.4byte	0x2e09
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL84
	.4byte	0x272b
	.uleb128 0x37
	.4byte	.LVL110
	.4byte	0x33b1
	.4byte	0x2e2c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4210
	.byte	0
	.uleb128 0x37
	.4byte	.LVL111
	.4byte	0x33b1
	.4byte	0x2e46
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0xa108
	.byte	0
	.uleb128 0x37
	.4byte	.LVL112
	.4byte	0x33b1
	.4byte	0x2e60
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4210
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL118
	.4byte	0x1b05
	.uleb128 0x3d
	.4byte	.LVL119
	.4byte	0x33be
	.uleb128 0x3d
	.4byte	.LVL121
	.4byte	0x33ca
	.uleb128 0x3d
	.4byte	.LVL122
	.4byte	0x33d6
	.uleb128 0x3d
	.4byte	.LVL123
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL124
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL125
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL126
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL127
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL128
	.4byte	0x33e2
	.uleb128 0x3d
	.4byte	.LVL129
	.4byte	0x33e2
	.byte	0
	.uleb128 0x47
	.4byte	.LASF436
	.byte	0x2
	.2byte	0x5a4
	.byte	0x6
	.byte	0x3
	.4byte	0x2ef4
	.uleb128 0x48
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x5a4
	.byte	0x17
	.4byte	0x14d
	.uleb128 0x48
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x5a4
	.byte	0x20
	.4byte	0x14d
	.uleb128 0x48
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x5a4
	.byte	0x29
	.4byte	0x14d
	.byte	0
	.uleb128 0x47
	.4byte	.LASF437
	.byte	0x2
	.2byte	0x52c
	.byte	0x6
	.byte	0x3
	.4byte	0x2f0f
	.uleb128 0x48
	.ascii	"ID\000"
	.byte	0x2
	.2byte	0x52c
	.byte	0x1a
	.4byte	0x105
	.byte	0
	.uleb128 0x47
	.4byte	.LASF438
	.byte	0x2
	.2byte	0x524
	.byte	0x6
	.byte	0x3
	.4byte	0x2f52
	.uleb128 0x48
	.ascii	"red\000"
	.byte	0x2
	.2byte	0x524
	.byte	0x19
	.4byte	0x105
	.uleb128 0x49
	.4byte	.LASF439
	.byte	0x2
	.2byte	0x524
	.byte	0x24
	.4byte	0x105
	.uleb128 0x49
	.4byte	.LASF440
	.byte	0x2
	.2byte	0x524
	.byte	0x31
	.4byte	0x105
	.uleb128 0x49
	.4byte	.LASF441
	.byte	0x2
	.2byte	0x524
	.byte	0x3d
	.4byte	0x105
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF507
	.byte	0x2
	.2byte	0x519
	.byte	0x6
	.byte	0x3
	.uleb128 0x47
	.4byte	.LASF442
	.byte	0x2
	.2byte	0x47c
	.byte	0x6
	.byte	0x3
	.4byte	0x2fd3
	.uleb128 0x49
	.4byte	.LASF443
	.byte	0x2
	.2byte	0x47c
	.byte	0x1c
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF444
	.byte	0x2
	.2byte	0x47c
	.byte	0x26
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF445
	.byte	0x2
	.2byte	0x47c
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF446
	.byte	0x2
	.2byte	0x47c
	.byte	0x3d
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF448
	.byte	0x2
	.2byte	0x47d
	.byte	0x6
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF449
	.byte	0x2
	.2byte	0x47d
	.byte	0xc
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF450
	.byte	0x2
	.2byte	0x47d
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF451
	.byte	0x2
	.2byte	0x47d
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.uleb128 0x47
	.4byte	.LASF452
	.byte	0x2
	.2byte	0x45e
	.byte	0x6
	.byte	0x3
	.4byte	0x3030
	.uleb128 0x49
	.4byte	.LASF453
	.byte	0x2
	.2byte	0x45e
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF454
	.byte	0x2
	.2byte	0x45e
	.byte	0x21
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF455
	.byte	0x2
	.2byte	0x45e
	.byte	0x2c
	.4byte	0x2c
	.uleb128 0x48
	.ascii	"top\000"
	.byte	0x2
	.2byte	0x45e
	.byte	0x38
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF456
	.byte	0x2
	.2byte	0x45e
	.byte	0x41
	.4byte	0x2c
	.uleb128 0x48
	.ascii	"far\000"
	.byte	0x2
	.2byte	0x45e
	.byte	0x4b
	.4byte	0x2c
	.byte	0
	.uleb128 0x47
	.4byte	.LASF457
	.byte	0x2
	.2byte	0x315
	.byte	0x6
	.byte	0x3
	.4byte	0x304c
	.uleb128 0x49
	.4byte	.LASF458
	.byte	0x2
	.2byte	0x315
	.byte	0x13
	.4byte	0x2c
	.byte	0
	.uleb128 0x47
	.4byte	.LASF459
	.byte	0x2
	.2byte	0x30d
	.byte	0x6
	.byte	0x3
	.4byte	0x3068
	.uleb128 0x49
	.4byte	.LASF460
	.byte	0x2
	.2byte	0x30d
	.byte	0x14
	.4byte	0x199
	.byte	0
	.uleb128 0x47
	.4byte	.LASF461
	.byte	0x2
	.2byte	0x2e0
	.byte	0x6
	.byte	0x3
	.4byte	0x309c
	.uleb128 0x2b
	.4byte	.LASF462
	.byte	0x2
	.2byte	0x2e1
	.byte	0x6
	.4byte	0x309c
	.uleb128 0x2b
	.4byte	.LASF463
	.byte	0x2
	.2byte	0x2e2
	.byte	0x6
	.4byte	0x22c
	.uleb128 0x4b
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x2e4
	.byte	0x6
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.4byte	0x199
	.4byte	0x30ac
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1f
	.byte	0
	.uleb128 0x47
	.4byte	.LASF464
	.byte	0x2
	.2byte	0x2db
	.byte	0x6
	.byte	0x3
	.4byte	0x30c8
	.uleb128 0x49
	.4byte	.LASF465
	.byte	0x2
	.2byte	0x2db
	.byte	0x12
	.4byte	0x199
	.byte	0
	.uleb128 0x47
	.4byte	.LASF466
	.byte	0x2
	.2byte	0x2d4
	.byte	0x7
	.byte	0x3
	.4byte	0x3107
	.uleb128 0x48
	.ascii	"x1\000"
	.byte	0x2
	.2byte	0x2d4
	.byte	0x18
	.4byte	0x105
	.uleb128 0x48
	.ascii	"y1\000"
	.byte	0x2
	.2byte	0x2d4
	.byte	0x22
	.4byte	0x105
	.uleb128 0x48
	.ascii	"x2\000"
	.byte	0x2
	.2byte	0x2d4
	.byte	0x2c
	.4byte	0x105
	.uleb128 0x48
	.ascii	"y2\000"
	.byte	0x2
	.2byte	0x2d4
	.byte	0x36
	.4byte	0x105
	.byte	0
	.uleb128 0x47
	.4byte	.LASF467
	.byte	0x2
	.2byte	0x2ca
	.byte	0x7
	.byte	0x3
	.4byte	0x3123
	.uleb128 0x49
	.4byte	.LASF465
	.byte	0x2
	.2byte	0x2ca
	.byte	0x28
	.4byte	0x102e
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF477
	.byte	0x2
	.2byte	0x2c3
	.byte	0x7
	.byte	0x3
	.uleb128 0x47
	.4byte	.LASF468
	.byte	0x2
	.2byte	0x2be
	.byte	0x7
	.byte	0x3
	.4byte	0x3149
	.uleb128 0x49
	.4byte	.LASF469
	.byte	0x2
	.2byte	0x2be
	.byte	0x14
	.4byte	0x199
	.byte	0
	.uleb128 0x47
	.4byte	.LASF470
	.byte	0x2
	.2byte	0x2b2
	.byte	0x7
	.byte	0x3
	.4byte	0x3192
	.uleb128 0x48
	.ascii	"id\000"
	.byte	0x2
	.2byte	0x2b2
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF471
	.byte	0x2
	.2byte	0x2b2
	.byte	0x1b
	.4byte	0xfbc
	.uleb128 0x48
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x2b2
	.byte	0x26
	.4byte	0xfb0
	.uleb128 0x48
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x2b2
	.byte	0x2d
	.4byte	0xfb0
	.uleb128 0x48
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x2b2
	.byte	0x34
	.4byte	0xfb0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF472
	.byte	0x2
	.2byte	0x296
	.byte	0x7
	.byte	0x3
	.4byte	0x31c2
	.uleb128 0x48
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x296
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x48
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x296
	.byte	0x21
	.4byte	0x2c
	.uleb128 0x48
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x296
	.byte	0x28
	.4byte	0x2c
	.byte	0
	.uleb128 0x47
	.4byte	.LASF473
	.byte	0x2
	.2byte	0x24e
	.byte	0x6
	.byte	0x3
	.4byte	0x31f2
	.uleb128 0x48
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x24e
	.byte	0x17
	.4byte	0xfa4
	.uleb128 0x48
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x24e
	.byte	0x1e
	.4byte	0xfa4
	.uleb128 0x48
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x24e
	.byte	0x25
	.4byte	0xfa4
	.byte	0
	.uleb128 0x47
	.4byte	.LASF474
	.byte	0x2
	.2byte	0x240
	.byte	0x7
	.byte	0x3
	.4byte	0x3228
	.uleb128 0x48
	.ascii	"red\000"
	.byte	0x2
	.2byte	0x240
	.byte	0x17
	.4byte	0x105
	.uleb128 0x49
	.4byte	.LASF439
	.byte	0x2
	.2byte	0x240
	.byte	0x22
	.4byte	0x105
	.uleb128 0x49
	.4byte	.LASF440
	.byte	0x2
	.2byte	0x240
	.byte	0x2f
	.4byte	0x105
	.byte	0
	.uleb128 0x47
	.4byte	.LASF475
	.byte	0x2
	.2byte	0x238
	.byte	0x7
	.byte	0x3
	.4byte	0x3244
	.uleb128 0x49
	.4byte	.LASF476
	.byte	0x2
	.2byte	0x238
	.byte	0x1e
	.4byte	0xf98
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF478
	.byte	0x2
	.2byte	0x231
	.byte	0x7
	.byte	0x3
	.uleb128 0x47
	.4byte	.LASF479
	.byte	0x2
	.2byte	0x22c
	.byte	0x7
	.byte	0x3
	.4byte	0x326a
	.uleb128 0x49
	.4byte	.LASF465
	.byte	0x2
	.2byte	0x22c
	.byte	0x1f
	.4byte	0xffb
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF480
	.byte	0x2
	.2byte	0x21e
	.byte	0x6
	.4byte	0x199
	.byte	0x3
	.4byte	0x3288
	.uleb128 0x48
	.ascii	"n\000"
	.byte	0x2
	.2byte	0x21e
	.byte	0x15
	.4byte	0x199
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF481
	.byte	0x4
	.byte	0x6a
	.byte	0x7
	.4byte	0x135
	.byte	0x3
	.4byte	0x32ba
	.uleb128 0x4f
	.ascii	"a\000"
	.byte	0x4
	.byte	0x6a
	.byte	0x14
	.4byte	0x135
	.uleb128 0x4f
	.ascii	"b\000"
	.byte	0x4
	.byte	0x6a
	.byte	0x1d
	.4byte	0x135
	.uleb128 0x50
	.4byte	.LASF482
	.byte	0x4
	.byte	0x6c
	.byte	0xc
	.4byte	0xa5
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF483
	.byte	0x4
	.byte	0x55
	.byte	0x7
	.4byte	0x135
	.byte	0x3
	.4byte	0x32e4
	.uleb128 0x4f
	.ascii	"num\000"
	.byte	0x4
	.byte	0x55
	.byte	0x14
	.4byte	0x135
	.uleb128 0x4f
	.ascii	"den\000"
	.byte	0x4
	.byte	0x55
	.byte	0x1f
	.4byte	0x135
	.byte	0
	.uleb128 0x47
	.4byte	.LASF484
	.byte	0x3
	.2byte	0x21c
	.byte	0x6
	.byte	0x3
	.4byte	0x3300
	.uleb128 0x49
	.4byte	.LASF465
	.byte	0x3
	.2byte	0x21c
	.byte	0x18
	.4byte	0x199
	.byte	0
	.uleb128 0x47
	.4byte	.LASF485
	.byte	0x3
	.2byte	0x179
	.byte	0x6
	.byte	0x3
	.4byte	0x331a
	.uleb128 0x48
	.ascii	"a\000"
	.byte	0x3
	.2byte	0x179
	.byte	0x1f
	.4byte	0xd06
	.byte	0
	.uleb128 0x51
	.4byte	.LASF486
	.4byte	.LASF486
	.byte	0x2
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x51
	.4byte	.LASF487
	.4byte	.LASF487
	.byte	0x2
	.2byte	0x1e6
	.byte	0x6
	.uleb128 0x51
	.4byte	.LASF488
	.4byte	.LASF488
	.byte	0x2
	.2byte	0x206
	.byte	0x6
	.uleb128 0x52
	.4byte	.LASF489
	.4byte	.LASF489
	.byte	0x18
	.byte	0x40
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF490
	.4byte	.LASF490
	.byte	0x14
	.byte	0x51
	.byte	0x6
	.uleb128 0x51
	.4byte	.LASF491
	.4byte	.LASF491
	.byte	0x2
	.2byte	0x1ec
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF492
	.4byte	.LASF492
	.byte	0x2
	.2byte	0x1b1
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF493
	.4byte	.LASF493
	.byte	0x14
	.byte	0x5c
	.byte	0x6
	.uleb128 0x51
	.4byte	.LASF494
	.4byte	.LASF494
	.byte	0x2
	.2byte	0x20e
	.byte	0x6
	.uleb128 0x52
	.4byte	.LASF495
	.4byte	.LASF495
	.byte	0x19
	.byte	0x79
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF496
	.4byte	.LASF496
	.byte	0x1a
	.byte	0xe4
	.byte	0xf
	.uleb128 0x51
	.4byte	.LASF497
	.4byte	.LASF497
	.byte	0x1b
	.2byte	0x12a
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF498
	.4byte	.LASF498
	.byte	0x2
	.2byte	0x20b
	.byte	0x6
	.uleb128 0x52
	.4byte	.LASF499
	.4byte	.LASF499
	.byte	0x8
	.byte	0xe5
	.byte	0x6
	.uleb128 0x52
	.4byte	.LASF500
	.4byte	.LASF500
	.byte	0x1c
	.byte	0x3b
	.byte	0x6
	.uleb128 0x52
	.4byte	.LASF501
	.4byte	.LASF501
	.byte	0x1c
	.byte	0x46
	.byte	0x8
	.uleb128 0x52
	.4byte	.LASF502
	.4byte	.LASF502
	.byte	0x1c
	.byte	0x43
	.byte	0x8
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU14
	.uleb128 .LVU21
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU31
	.uleb128 .LVU40
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU31
	.uleb128 .LVU40
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU62
	.uleb128 .LVU69
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU62
	.uleb128 .LVU69
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU64
	.uleb128 .LVU69
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xc
	.4byte	0x1ff00000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0xc
	.4byte	0x1f00c1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU55
	.uleb128 .LVU60
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU74
	.uleb128 .LVU80
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU74
	.uleb128 .LVU80
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU83
	.uleb128 .LVU91
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU83
	.uleb128 .LVU91
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU94
	.uleb128 .LVU102
.LLST18:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU105
	.uleb128 .LVU113
.LLST21:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU105
	.uleb128 .LVU113
.LLST23:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU115
	.uleb128 .LVU121
.LLST24:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbf800000
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU115
	.uleb128 .LVU121
.LLST25:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU117
	.uleb128 .LVU121
.LLST27:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x40
	.byte	0x49
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU124
	.uleb128 .LVU131
.LLST28:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU134
	.uleb128 .LVU141
.LLST31:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU134
	.uleb128 .LVU141
.LLST32:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU144
	.uleb128 .LVU151
.LLST34:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU144
	.uleb128 .LVU151
.LLST35:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU154
	.uleb128 .LVU163
.LLST37:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU154
	.uleb128 .LVU163
.LLST39:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU165
	.uleb128 .LVU170
.LLST40:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU165
	.uleb128 .LVU170
.LLST41:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU167
	.uleb128 .LVU170
.LLST43:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fc00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU173
	.uleb128 .LVU180
.LLST44:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU173
	.uleb128 .LVU180
.LLST45:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU183
	.uleb128 .LVU190
.LLST47:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU183
	.uleb128 .LVU190
.LLST49:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU193
	.uleb128 .LVU201
.LLST50:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU204
	.uleb128 .LVU212
.LLST53:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU204
	.uleb128 .LVU212
.LLST54:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU214
	.uleb128 .LVU220
.LLST56:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU214
	.uleb128 .LVU220
.LLST57:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbf800000
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU216
	.uleb128 .LVU220
.LLST59:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU223
	.uleb128 .LVU231
.LLST60:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU234
	.uleb128 .LVU242
.LLST63:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU234
	.uleb128 .LVU242
.LLST65:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU245
	.uleb128 .LVU253
.LLST66:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU245
	.uleb128 .LVU253
.LLST67:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU256
	.uleb128 .LVU265
.LLST69:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 .LVU256
	.uleb128 .LVU265
.LLST70:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 .LVU267
	.uleb128 .LVU272
.LLST72:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS74:
	.uleb128 .LVU267
	.uleb128 .LVU272
.LLST74:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 .LVU269
	.uleb128 .LVU272
.LLST75:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xa
	.2byte	0x1ff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 .LVU275
	.uleb128 .LVU283
.LLST76:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU275
	.uleb128 .LVU283
.LLST78:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU286
	.uleb128 .LVU293
.LLST79:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS80:
	.uleb128 .LVU286
	.uleb128 .LVU293
.LLST80:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS82:
	.uleb128 .LVU296
	.uleb128 .LVU303
.LLST82:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS85:
	.uleb128 .LVU306
	.uleb128 .LVU314
.LLST85:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS86:
	.uleb128 .LVU306
	.uleb128 .LVU314
.LLST86:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS88:
	.uleb128 .LVU321
	.uleb128 .LVU327
.LLST88:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0xc
	.4byte	0xf0081
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS89:
	.uleb128 .LVU329
	.uleb128 .LVU334
.LLST89:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS90:
	.uleb128 .LVU336
	.uleb128 .LVU341
.LLST90:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS92:
	.uleb128 .LVU336
	.uleb128 .LVU341
.LLST92:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbf800000
	.4byte	0
	.4byte	0
.LVUS93:
	.uleb128 .LVU338
	.uleb128 .LVU341
.LLST93:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS94:
	.uleb128 .LVU344
	.uleb128 .LVU352
.LLST94:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS97:
	.uleb128 .LVU355
	.uleb128 .LVU363
.LLST97:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS98:
	.uleb128 .LVU355
	.uleb128 .LVU363
.LLST98:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS100:
	.uleb128 .LVU366
	.uleb128 .LVU374
.LLST100:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS102:
	.uleb128 .LVU366
	.uleb128 .LVU374
.LLST102:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS103:
	.uleb128 .LVU377
	.uleb128 .LVU386
.LLST103:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xb
	.2byte	0xf000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS104:
	.uleb128 .LVU377
	.uleb128 .LVU386
.LLST104:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS106:
	.uleb128 .LVU409
	.uleb128 .LVU412
.LLST106:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x6
	.byte	0xc
	.4byte	0x10108
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS107:
	.uleb128 .LVU414
	.uleb128 .LVU417
.LLST107:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS108:
	.uleb128 .LVU422
	.uleb128 .LVU427
.LLST108:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS109:
	.uleb128 .LVU439
	.uleb128 .LVU448
.LLST109:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS110:
	.uleb128 .LVU439
	.uleb128 .LVU448
.LLST110:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS113:
	.uleb128 .LVU429
	.uleb128 .LVU432
.LLST113:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS114:
	.uleb128 .LVU434
	.uleb128 .LVU437
.LLST114:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS115:
	.uleb128 .LVU450
	.uleb128 .LVU456
.LLST115:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS116:
	.uleb128 .LVU458
	.uleb128 .LVU461
.LLST116:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xa
	.2byte	0x7fff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS117:
	.uleb128 .LVU463
	.uleb128 .LVU466
.LLST117:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x9
	.byte	0xbf
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS118:
	.uleb128 .LVU463
	.uleb128 .LVU466
.LLST118:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS119:
	.uleb128 .LVU463
	.uleb128 .LVU466
.LLST119:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS121:
	.uleb128 .LVU469
	.uleb128 .LVU474
.LLST121:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS122:
	.uleb128 .LVU481
	.uleb128 .LVU691
.LLST122:
	.4byte	.LVL86
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xa
	.2byte	0x18e3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS123:
	.uleb128 .LVU481
	.uleb128 .LVU691
.LLST123:
	.4byte	.LVL86
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xa
	.2byte	0x1555
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS124:
	.uleb128 .LVU481
	.uleb128 .LVU691
.LLST124:
	.4byte	.LVL86
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xa
	.2byte	0x19a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS125:
	.uleb128 .LVU481
	.uleb128 .LVU691
.LLST125:
	.4byte	.LVL86
	.4byte	.LVL109
	.2byte	0x4
	.byte	0x49
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS126:
	.uleb128 .LVU503
	.uleb128 .LVU570
.LLST126:
	.4byte	.LVL91
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS127:
	.uleb128 .LVU511
	.uleb128 .LVU599
.LLST127:
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS128:
	.uleb128 .LVU495
	.uleb128 .LVU502
	.uleb128 .LVU502
	.uleb128 .LVU552
.LLST128:
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS129:
	.uleb128 .LVU493
	.uleb128 .LVU552
.LLST129:
	.4byte	.LVL89
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS130:
	.uleb128 .LVU484
	.uleb128 .LVU490
.LLST130:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS131:
	.uleb128 .LVU484
	.uleb128 .LVU493
.LLST131:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xa
	.2byte	0x19a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS132:
	.uleb128 .LVU486
	.uleb128 .LVU490
.LLST132:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0xd
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0x19a
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS133:
	.uleb128 .LVU496
	.uleb128 .LVU503
.LLST133:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xa
	.2byte	0x1555
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS134:
	.uleb128 .LVU496
	.uleb128 .LVU502
	.uleb128 .LVU502
	.uleb128 .LVU503
.LLST134:
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-1
	.4byte	.LVL91
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS135:
	.uleb128 .LVU498
	.uleb128 .LVU503
.LLST135:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0x1555
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS136:
	.uleb128 .LVU505
	.uleb128 .LVU511
.LLST136:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xa
	.2byte	0x1555
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS137:
	.uleb128 .LVU505
	.uleb128 .LVU511
.LLST137:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS138:
	.uleb128 .LVU514
	.uleb128 .LVU691
.LLST138:
	.4byte	.LVL93
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xa
	.2byte	0x19a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS139:
	.uleb128 .LVU514
	.uleb128 .LVU691
.LLST139:
	.4byte	.LVL93
	.4byte	.LVL109
	.2byte	0x4
	.byte	0x49
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS140:
	.uleb128 .LVU513
	.uleb128 .LVU552
.LLST140:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS141:
	.uleb128 .LVU513
	.uleb128 .LVU552
.LLST141:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS142:
	.uleb128 .LVU513
	.uleb128 .LVU599
.LLST142:
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS143:
	.uleb128 .LVU513
	.uleb128 .LVU570
.LLST143:
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS144:
	.uleb128 .LVU517
	.uleb128 .LVU536
.LLST144:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS145:
	.uleb128 .LVU517
	.uleb128 .LVU536
.LLST145:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xa
	.2byte	0x334
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS146:
	.uleb128 .LVU549
	.uleb128 .LVU571
.LLST146:
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS147:
	.uleb128 .LVU549
	.uleb128 .LVU571
.LLST147:
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xa
	.2byte	0x334
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS148:
	.uleb128 .LVU578
	.uleb128 .LVU594
	.uleb128 .LVU594
	.uleb128 .LVU599
.LLST148:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x5
	.byte	0xc
	.4byte	0x4000298
	.4byte	0
	.4byte	0
.LVUS149:
	.uleb128 .LVU578
	.uleb128 .LVU599
.LLST149:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS150:
	.uleb128 .LVU602
	.uleb128 .LVU622
.LLST150:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS151:
	.uleb128 .LVU602
	.uleb128 .LVU622
.LLST151:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS152:
	.uleb128 .LVU625
	.uleb128 .LVU646
.LLST152:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x6
	.byte	0xc
	.4byte	0x63e66
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS153:
	.uleb128 .LVU625
	.uleb128 .LVU646
.LLST153:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x6
	.byte	0xc
	.4byte	0x6419a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS154:
	.uleb128 .LVU660
	.uleb128 .LVU683
.LLST154:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0xc
	.4byte	0x63e66
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS155:
	.uleb128 .LVU660
	.uleb128 .LVU683
.LLST155:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0xc
	.4byte	0x14050
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS156:
	.uleb128 .LVU697
	.uleb128 .LVU700
	.uleb128 .LVU700
	.uleb128 .LVU706
.LLST156:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS157:
	.uleb128 .LVU713
	.uleb128 .LVU722
.LLST157:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS158:
	.uleb128 .LVU713
	.uleb128 .LVU722
.LLST158:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xb
	.2byte	0xfe00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS160:
	.uleb128 .LVU713
	.uleb128 .LVU722
.LLST160:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xa
	.2byte	0x7fff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS162:
	.uleb128 .LVU734
	.uleb128 .LVU738
.LLST162:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB170
	.4byte	.LBE170
	.4byte	.LBB178
	.4byte	.LBE178
	.4byte	.LBB179
	.4byte	.LBE179
	.4byte	0
	.4byte	0
	.4byte	.LBB174
	.4byte	.LBE174
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	.LBB181
	.4byte	.LBE181
	.4byte	0
	.4byte	0
	.4byte	.LBB182
	.4byte	.LBE182
	.4byte	.LBB194
	.4byte	.LBE194
	.4byte	0
	.4byte	0
	.4byte	.LBB185
	.4byte	.LBE185
	.4byte	.LBB199
	.4byte	.LBE199
	.4byte	.LBB209
	.4byte	.LBE209
	.4byte	.LBB210
	.4byte	.LBE210
	.4byte	.LBB211
	.4byte	.LBE211
	.4byte	0
	.4byte	0
	.4byte	.LBB186
	.4byte	.LBE186
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	.LBB192
	.4byte	.LBE192
	.4byte	.LBB193
	.4byte	.LBE193
	.4byte	0
	.4byte	0
	.4byte	.LBB195
	.4byte	.LBE195
	.4byte	.LBB198
	.4byte	.LBE198
	.4byte	0
	.4byte	0
	.4byte	.LBB200
	.4byte	.LBE200
	.4byte	.LBB208
	.4byte	.LBE208
	.4byte	0
	.4byte	0
	.4byte	.LBB203
	.4byte	.LBE203
	.4byte	.LBB212
	.4byte	.LBE212
	.4byte	.LBB213
	.4byte	.LBE213
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	0
	.4byte	0
	.4byte	.LBB215
	.4byte	.LBE215
	.4byte	.LBB219
	.4byte	.LBE219
	.4byte	.LBB220
	.4byte	.LBE220
	.4byte	0
	.4byte	0
	.4byte	.LBB221
	.4byte	.LBE221
	.4byte	.LBB225
	.4byte	.LBE225
	.4byte	.LBB226
	.4byte	.LBE226
	.4byte	0
	.4byte	0
	.4byte	.LBB227
	.4byte	.LBE227
	.4byte	.LBB240
	.4byte	.LBE240
	.4byte	.LBB242
	.4byte	.LBE242
	.4byte	0
	.4byte	0
	.4byte	.LBB231
	.4byte	.LBE231
	.4byte	.LBB241
	.4byte	.LBE241
	.4byte	.LBB243
	.4byte	.LBE243
	.4byte	.LBB244
	.4byte	.LBE244
	.4byte	.LBB245
	.4byte	.LBE245
	.4byte	0
	.4byte	0
	.4byte	.LBB232
	.4byte	.LBE232
	.4byte	.LBB237
	.4byte	.LBE237
	.4byte	.LBB238
	.4byte	.LBE238
	.4byte	.LBB239
	.4byte	.LBE239
	.4byte	0
	.4byte	0
	.4byte	.LBB246
	.4byte	.LBE246
	.4byte	.LBB249
	.4byte	.LBE249
	.4byte	0
	.4byte	0
	.4byte	.LBB250
	.4byte	.LBE250
	.4byte	.LBB253
	.4byte	.LBE253
	.4byte	0
	.4byte	0
	.4byte	.LBB254
	.4byte	.LBE254
	.4byte	.LBB257
	.4byte	.LBE257
	.4byte	0
	.4byte	0
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	.LBB272
	.4byte	.LBE272
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	0
	.4byte	0
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	.LBB271
	.4byte	.LBE271
	.4byte	.LBB274
	.4byte	.LBE274
	.4byte	.LBB275
	.4byte	.LBE275
	.4byte	0
	.4byte	0
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	.LBB269
	.4byte	.LBE269
	.4byte	0
	.4byte	0
	.4byte	.LBB276
	.4byte	.LBE276
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	0
	.4byte	0
	.4byte	.LBB280
	.4byte	.LBE280
	.4byte	.LBB283
	.4byte	.LBE283
	.4byte	0
	.4byte	0
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	.LBB288
	.4byte	.LBE288
	.4byte	.LBB289
	.4byte	.LBE289
	.4byte	0
	.4byte	0
	.4byte	.LBB290
	.4byte	.LBE290
	.4byte	.LBB303
	.4byte	.LBE303
	.4byte	.LBB305
	.4byte	.LBE305
	.4byte	0
	.4byte	0
	.4byte	.LBB294
	.4byte	.LBE294
	.4byte	.LBB304
	.4byte	.LBE304
	.4byte	.LBB306
	.4byte	.LBE306
	.4byte	.LBB307
	.4byte	.LBE307
	.4byte	.LBB308
	.4byte	.LBE308
	.4byte	0
	.4byte	0
	.4byte	.LBB295
	.4byte	.LBE295
	.4byte	.LBB300
	.4byte	.LBE300
	.4byte	.LBB301
	.4byte	.LBE301
	.4byte	.LBB302
	.4byte	.LBE302
	.4byte	0
	.4byte	0
	.4byte	.LBB309
	.4byte	.LBE309
	.4byte	.LBB313
	.4byte	.LBE313
	.4byte	.LBB314
	.4byte	.LBE314
	.4byte	0
	.4byte	0
	.4byte	.LBB315
	.4byte	.LBE315
	.4byte	.LBB319
	.4byte	.LBE319
	.4byte	.LBB320
	.4byte	.LBE320
	.4byte	0
	.4byte	0
	.4byte	.LBB321
	.4byte	.LBE321
	.4byte	.LBB325
	.4byte	.LBE325
	.4byte	.LBB326
	.4byte	.LBE326
	.4byte	0
	.4byte	0
	.4byte	.LBB327
	.4byte	.LBE327
	.4byte	.LBB339
	.4byte	.LBE339
	.4byte	.LBB340
	.4byte	.LBE340
	.4byte	.LBB342
	.4byte	.LBE342
	.4byte	0
	.4byte	0
	.4byte	.LBB332
	.4byte	.LBE332
	.4byte	.LBB341
	.4byte	.LBE341
	.4byte	.LBB343
	.4byte	.LBE343
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	0
	.4byte	0
	.4byte	.LBB333
	.4byte	.LBE333
	.4byte	.LBB337
	.4byte	.LBE337
	.4byte	.LBB338
	.4byte	.LBE338
	.4byte	0
	.4byte	0
	.4byte	.LBB345
	.4byte	.LBE345
	.4byte	.LBB349
	.4byte	.LBE349
	.4byte	.LBB350
	.4byte	.LBE350
	.4byte	0
	.4byte	0
	.4byte	.LBB351
	.4byte	.LBE351
	.4byte	.LBB354
	.4byte	.LBE354
	.4byte	0
	.4byte	0
	.4byte	.LBB355
	.4byte	.LBE355
	.4byte	.LBB358
	.4byte	.LBE358
	.4byte	0
	.4byte	0
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	.LBB369
	.4byte	.LBE369
	.4byte	0
	.4byte	0
	.4byte	.LBB363
	.4byte	.LBE363
	.4byte	.LBB368
	.4byte	.LBE368
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	0
	.4byte	0
	.4byte	.LBB371
	.4byte	.LBE371
	.4byte	.LBB379
	.4byte	.LBE379
	.4byte	.LBB380
	.4byte	.LBE380
	.4byte	0
	.4byte	0
	.4byte	.LBB375
	.4byte	.LBE375
	.4byte	.LBB381
	.4byte	.LBE381
	.4byte	.LBB387
	.4byte	.LBE387
	.4byte	0
	.4byte	0
	.4byte	.LBB382
	.4byte	.LBE382
	.4byte	.LBB388
	.4byte	.LBE388
	.4byte	.LBB389
	.4byte	.LBE389
	.4byte	0
	.4byte	0
	.4byte	.LBB383
	.4byte	.LBE383
	.4byte	.LBB386
	.4byte	.LBE386
	.4byte	0
	.4byte	0
	.4byte	.LBB390
	.4byte	.LBE390
	.4byte	.LBB394
	.4byte	.LBE394
	.4byte	.LBB395
	.4byte	.LBE395
	.4byte	0
	.4byte	0
	.4byte	.LBB396
	.4byte	.LBE396
	.4byte	.LBB400
	.4byte	.LBE400
	.4byte	.LBB401
	.4byte	.LBE401
	.4byte	0
	.4byte	0
	.4byte	.LBB402
	.4byte	.LBE402
	.4byte	.LBB406
	.4byte	.LBE406
	.4byte	.LBB407
	.4byte	.LBE407
	.4byte	0
	.4byte	0
	.4byte	.LBB408
	.4byte	.LBE408
	.4byte	.LBB416
	.4byte	.LBE416
	.4byte	.LBB417
	.4byte	.LBE417
	.4byte	0
	.4byte	0
	.4byte	.LBB412
	.4byte	.LBE412
	.4byte	.LBB418
	.4byte	.LBE418
	.4byte	.LBB419
	.4byte	.LBE419
	.4byte	0
	.4byte	0
	.4byte	.LBB482
	.4byte	.LBE482
	.4byte	.LBB489
	.4byte	.LBE489
	.4byte	.LBB494
	.4byte	.LBE494
	.4byte	0
	.4byte	0
	.4byte	.LBB486
	.4byte	.LBE486
	.4byte	.LBB501
	.4byte	.LBE501
	.4byte	0
	.4byte	0
	.4byte	.LBB490
	.4byte	.LBE490
	.4byte	.LBB495
	.4byte	.LBE495
	.4byte	.LBB499
	.4byte	.LBE499
	.4byte	0
	.4byte	0
	.4byte	.LBB496
	.4byte	.LBE496
	.4byte	.LBB500
	.4byte	.LBE500
	.4byte	0
	.4byte	0
	.4byte	.LBB502
	.4byte	.LBE502
	.4byte	.LBB508
	.4byte	.LBE508
	.4byte	0
	.4byte	0
	.4byte	.LBB505
	.4byte	.LBE505
	.4byte	.LBB509
	.4byte	.LBE509
	.4byte	0
	.4byte	0
	.4byte	.LBB512
	.4byte	.LBE512
	.4byte	.LBB563
	.4byte	.LBE563
	.4byte	0
	.4byte	0
	.4byte	.LBB515
	.4byte	.LBE515
	.4byte	.LBB566
	.4byte	.LBE566
	.4byte	.LBB567
	.4byte	.LBE567
	.4byte	.LBB568
	.4byte	.LBE568
	.4byte	.LBB569
	.4byte	.LBE569
	.4byte	0
	.4byte	0
	.4byte	.LBB517
	.4byte	.LBE517
	.4byte	.LBB520
	.4byte	.LBE520
	.4byte	0
	.4byte	0
	.4byte	.LBB523
	.4byte	.LBE523
	.4byte	.LBB554
	.4byte	.LBE554
	.4byte	0
	.4byte	0
	.4byte	.LBB526
	.4byte	.LBE526
	.4byte	.LBB555
	.4byte	.LBE555
	.4byte	.LBB556
	.4byte	.LBE556
	.4byte	.LBB557
	.4byte	.LBE557
	.4byte	.LBB558
	.4byte	.LBE558
	.4byte	0
	.4byte	0
	.4byte	.LBB528
	.4byte	.LBE528
	.4byte	.LBB532
	.4byte	.LBE532
	.4byte	.LBB533
	.4byte	.LBE533
	.4byte	0
	.4byte	0
	.4byte	.LBB534
	.4byte	.LBE534
	.4byte	.LBB538
	.4byte	.LBE538
	.4byte	.LBB539
	.4byte	.LBE539
	.4byte	0
	.4byte	0
	.4byte	.LBB546
	.4byte	.LBE546
	.4byte	.LBB549
	.4byte	.LBE549
	.4byte	0
	.4byte	0
	.4byte	.LBB572
	.4byte	.LBE572
	.4byte	.LBB575
	.4byte	.LBE575
	.4byte	0
	.4byte	0
	.4byte	.LBB576
	.4byte	.LBE576
	.4byte	.LBB579
	.4byte	.LBE579
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB191
	.4byte	.LFE191
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF338:
	.ascii	"clearColor\000"
.LASF237:
	.ascii	"GL_TRIANGLE_STRIP\000"
.LASF235:
	.ascii	"GL_TRIANGLES\000"
.LASF198:
	.ascii	"MODE_1_2D\000"
.LASF317:
	.ascii	"lastExamined\000"
.LASF506:
	.ascii	"__locale_t\000"
.LASF74:
	.ascii	"__value\000"
.LASF314:
	.ascii	"firstBlock\000"
.LASF345:
	.ascii	"data16\000"
.LASF42:
	.ascii	"prefetch_abort\000"
.LASF200:
	.ascii	"MODE_3_2D\000"
.LASF109:
	.ascii	"_read\000"
.LASF332:
	.ascii	"deallocTexSize\000"
.LASF447:
	.ascii	"glGlob\000"
.LASF250:
	.ascii	"GL_SPECULAR\000"
.LASF110:
	.ascii	"_write\000"
.LASF372:
	.ascii	"OBJPRIORITY_2\000"
.LASF365:
	.ascii	"OBJSIZE_64\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF154:
	.ascii	"_asctime_buf\000"
.LASF136:
	.ascii	"_cvtlen\000"
.LASF500:
	.ascii	"scanKeys\000"
.LASF26:
	.ascii	"int64\000"
.LASF205:
	.ascii	"MODE_1_3D\000"
.LASF23:
	.ascii	"uint32\000"
.LASF244:
	.ascii	"GL_MODELVIEW\000"
.LASF412:
	.ascii	"firstFree\000"
.LASF173:
	.ascii	"_unused\000"
.LASF207:
	.ascii	"MODE_3_3D\000"
.LASF83:
	.ascii	"__tm\000"
.LASF169:
	.ascii	"_wcsrtombs_state\000"
.LASF114:
	.ascii	"_nbuf\000"
.LASF84:
	.ascii	"__tm_sec\000"
.LASF467:
	.ascii	"glMatrixMode\000"
.LASF162:
	.ascii	"_l64a_buf\000"
.LASF100:
	.ascii	"_fns\000"
.LASF217:
	.ascii	"bg_transform\000"
.LASF182:
	.ascii	"VRAM_A_LCD\000"
.LASF209:
	.ascii	"MODE_5_3D\000"
.LASF392:
	.ascii	"filler1\000"
.LASF307:
	.ascii	"indexOut\000"
.LASF394:
	.ascii	"filler3\000"
.LASF395:
	.ascii	"filler4\000"
.LASF495:
	.ascii	"tanLerp\000"
.LASF437:
	.ascii	"glClearPolyID\000"
.LASF385:
	.ascii	"gfxIndex\000"
.LASF459:
	.ascii	"glPolyFmt\000"
.LASF289:
	.ascii	"GL_RGB256\000"
.LASF118:
	.ascii	"_lock\000"
.LASF442:
	.ascii	"gluPerspectivef32\000"
.LASF378:
	.ascii	"blendMode\000"
.LASF382:
	.ascii	"hFlip\000"
.LASF346:
	.ascii	"data32\000"
.LASF262:
	.ascii	"POLY_SHADOW\000"
.LASF227:
	.ascii	"type\000"
.LASF150:
	.ascii	"_mult\000"
.LASF319:
	.ascii	"lastExaminedSize\000"
.LASF308:
	.ascii	"AddrSet\000"
.LASF390:
	.ascii	"SpriteEntry\000"
.LASF374:
	.ascii	"ObjPriority\000"
.LASF306:
	.ascii	"s_SingleBlock\000"
.LASF425:
	.ascii	"Peanut_pcx\000"
.LASF493:
	.ascii	"imageDestroy\000"
.LASF468:
	.ascii	"glNormal\000"
.LASF367:
	.ascii	"OBJCOLOR_16\000"
.LASF322:
	.ascii	"blockCount\000"
.LASF71:
	.ascii	"__wch\000"
.LASF221:
	.ascii	"centerY\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF456:
	.ascii	"near\000"
.LASF469:
	.ascii	"normal\000"
.LASF441:
	.ascii	"alpha\000"
.LASF106:
	.ascii	"_file\000"
.LASF482:
	.ascii	"result\000"
.LASF93:
	.ascii	"_on_exit_args\000"
.LASF283:
	.ascii	"TEXGEN_NORMAL\000"
.LASF428:
	.ascii	"yRotation\000"
.LASF436:
	.ascii	"glNormal3f\000"
.LASF246:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF165:
	.ascii	"_mbrlen_state\000"
.LASF9:
	.ascii	"long int\000"
.LASF174:
	.ascii	"_impure_ptr\000"
.LASF133:
	.ascii	"_result_k\000"
.LASF103:
	.ascii	"_size\000"
.LASF492:
	.ascii	"glTexImage2D\000"
.LASF155:
	.ascii	"_localtime_buf\000"
.LASF264:
	.ascii	"POLY_CULL_BACK\000"
.LASF435:
	.ascii	"main\000"
.LASF270:
	.ascii	"TEXTURE_SIZE_32\000"
.LASF88:
	.ascii	"__tm_mon\000"
.LASF229:
	.ascii	"_Bool\000"
.LASF303:
	.ascii	"GL_COLOR_UNDERFLOW\000"
.LASF299:
	.ascii	"GL_ANTIALIAS\000"
.LASF461:
	.ascii	"glMaterialShinyness\000"
.LASF434:
	.ascii	"loadTextures\000"
.LASF353:
	.ascii	"OBJMODE_BLENDED\000"
.LASF31:
	.ascii	"vu16\000"
.LASF291:
	.ascii	"GL_RGB8_A5\000"
.LASF152:
	.ascii	"_unused_rand\000"
.LASF1:
	.ascii	"signed char\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF449:
	.ascii	"xmax\000"
.LASF330:
	.ascii	"deallocTex\000"
.LASF124:
	.ascii	"_stdout\000"
.LASF463:
	.ascii	"shiny8\000"
.LASF497:
	.ascii	"iprintf\000"
.LASF440:
	.ascii	"blue\000"
.LASF498:
	.ascii	"glMaterialf\000"
.LASF396:
	.ascii	"SpriteMapping_1D_32\000"
.LASF502:
	.ascii	"keysHeld\000"
.LASF439:
	.ascii	"green\000"
.LASF278:
	.ascii	"GL_TEXTURE_FLIP_S\000"
.LASF279:
	.ascii	"GL_TEXTURE_FLIP_T\000"
.LASF204:
	.ascii	"MODE_0_3D\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF383:
	.ascii	"vFlip\000"
.LASF29:
	.ascii	"vuint16\000"
.LASF128:
	.ascii	"_unspecified_locale_info\000"
.LASF416:
	.ascii	"oamMain\000"
.LASF121:
	.ascii	"_reent\000"
.LASF175:
	.ascii	"_global_impure_ptr\000"
.LASF389:
	.ascii	"filler\000"
.LASF183:
	.ascii	"VRAM_A_MAIN_BG\000"
.LASF58:
	.ascii	"KEY_TOUCH\000"
.LASF274:
	.ascii	"TEXTURE_SIZE_512\000"
.LASF311:
	.ascii	"s_vramBlock\000"
.LASF32:
	.ascii	"vu32\000"
.LASF39:
	.ascii	"char\000"
.LASF218:
	.ascii	"BgState\000"
.LASF331:
	.ascii	"deallocPal\000"
.LASF318:
	.ascii	"lastExaminedAddr\000"
.LASF112:
	.ascii	"_close\000"
.LASF411:
	.ascii	"gfxOffsetStep\000"
.LASF296:
	.ascii	"GL_TOON_HIGHLIGHT\000"
.LASF429:
	.ascii	"xSpeed\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF184:
	.ascii	"VRAM_A_MAIN_BG_0x06000000\000"
.LASF230:
	.ascii	"bgControl\000"
.LASF255:
	.ascii	"POLY_FORMAT_LIGHT0\000"
.LASF377:
	.ascii	"isSizeDouble\000"
.LASF310:
	.ascii	"blockSize\000"
.LASF123:
	.ascii	"_stdin\000"
.LASF30:
	.ascii	"vuint32\000"
.LASF457:
	.ascii	"glEnable\000"
.LASF251:
	.ascii	"GL_SHININESS\000"
.LASF340:
	.ascii	"glGlobalData\000"
.LASF403:
	.ascii	"SpriteMapping_Bmp_2D_128\000"
.LASF243:
	.ascii	"GL_POSITION\000"
.LASF423:
	.ascii	"optreset\000"
.LASF494:
	.ascii	"glInit_C\000"
.LASF44:
	.ascii	"sysVectors\000"
.LASF309:
	.ascii	"node\000"
.LASF53:
	.ascii	"KEY_DOWN\000"
.LASF380:
	.ascii	"colorMode\000"
.LASF180:
	.ascii	"mosaicShadow\000"
.LASF300:
	.ascii	"GL_OUTLINE\000"
.LASF426:
	.ascii	"Peanut_pcx_size\000"
.LASF188:
	.ascii	"VRAM_A_MAIN_SPRITE\000"
.LASF351:
	.ascii	"image\000"
.LASF276:
	.ascii	"GL_TEXTURE_WRAP_S\000"
.LASF277:
	.ascii	"GL_TEXTURE_WRAP_T\000"
.LASF337:
	.ascii	"palCount\000"
.LASF59:
	.ascii	"KEY_LID\000"
.LASF301:
	.ascii	"GL_FOG_ONLY_ALPHA\000"
.LASF234:
	.ascii	"fixed12d3\000"
.LASF360:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF446:
	.ascii	"zFar\000"
.LASF485:
	.ascii	"vramSetBankA\000"
.LASF187:
	.ascii	"VRAM_A_MAIN_BG_0x06060000\000"
.LASF285:
	.ascii	"GL_NOTEXTURE\000"
.LASF490:
	.ascii	"image8to16\000"
.LASF108:
	.ascii	"_cookie\000"
.LASF292:
	.ascii	"GL_RGBA\000"
.LASF82:
	.ascii	"_wds\000"
.LASF298:
	.ascii	"GL_BLEND\000"
.LASF354:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF453:
	.ascii	"left\000"
.LASF140:
	.ascii	"_sig_func\000"
.LASF212:
	.ascii	"MODE_FB0\000"
.LASF213:
	.ascii	"MODE_FB1\000"
.LASF214:
	.ascii	"MODE_FB2\000"
.LASF215:
	.ascii	"MODE_FB3\000"
.LASF294:
	.ascii	"DISP3DCNT_ENUM\000"
.LASF116:
	.ascii	"_offset\000"
.LASF137:
	.ascii	"_cvtbuf\000"
.LASF474:
	.ascii	"glColor3b\000"
.LASF252:
	.ascii	"GL_EMISSION\000"
.LASF65:
	.ascii	"__lock_t\000"
.LASF368:
	.ascii	"OBJCOLOR_256\000"
.LASF304:
	.ascii	"GL_POLY_OVERFLOW\000"
.LASF323:
	.ascii	"deallocCount\000"
.LASF496:
	.ascii	"consoleDemoInit\000"
.LASF479:
	.ascii	"glBegin\000"
.LASF177:
	.ascii	"DynamicArray\000"
.LASF420:
	.ascii	"optind\000"
.LASF49:
	.ascii	"KEY_START\000"
.LASF265:
	.ascii	"POLY_CULL_NONE\000"
.LASF432:
	.ascii	"texture\000"
.LASF366:
	.ascii	"ObjSize\000"
.LASF134:
	.ascii	"_p5s\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF352:
	.ascii	"OBJMODE_NORMAL\000"
.LASF480:
	.ascii	"POLY_ALPHA\000"
.LASF104:
	.ascii	"__sFILE\000"
.LASF130:
	.ascii	"__sdidinit\000"
.LASF120:
	.ascii	"_flags2\000"
.LASF358:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF43:
	.ascii	"data_abort\000"
.LASF280:
	.ascii	"GL_TEXTURE_COLOR0_TRANSPARENT\000"
.LASF69:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF36:
	.ascii	"__irq_vector\000"
.LASF491:
	.ascii	"glGenTextures\000"
.LASF122:
	.ascii	"_errno\000"
.LASF302:
	.ascii	"GL_FOG\000"
.LASF163:
	.ascii	"_signal_buf\000"
.LASF261:
	.ascii	"POLY_TOON_HIGHLIGHT\000"
.LASF219:
	.ascii	"angle\000"
.LASF484:
	.ascii	"videoSetMode\000"
.LASF464:
	.ascii	"glFlush\000"
.LASF481:
	.ascii	"mulf32\000"
.LASF325:
	.ascii	"matrixMode\000"
.LASF379:
	.ascii	"isMosaic\000"
.LASF78:
	.ascii	"_Bigint\000"
.LASF236:
	.ascii	"GL_QUADS\000"
.LASF448:
	.ascii	"xmin\000"
.LASF342:
	.ascii	"exceptionStack\000"
.LASF80:
	.ascii	"_maxwds\000"
.LASF131:
	.ascii	"__cleanup\000"
.LASF139:
	.ascii	"_atexit0\000"
.LASF406:
	.ascii	"AllocHeader\000"
.LASF272:
	.ascii	"TEXTURE_SIZE_128\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF127:
	.ascii	"_emergency\000"
.LASF454:
	.ascii	"right\000"
.LASF295:
	.ascii	"GL_TEXTURE_2D\000"
.LASF13:
	.ascii	"long long int\000"
.LASF242:
	.ascii	"GL_PROJECTION\000"
.LASF281:
	.ascii	"TEXGEN_OFF\000"
.LASF68:
	.ascii	"counter\000"
.LASF248:
	.ascii	"GL_DIFFUSE\000"
.LASF349:
	.ascii	"width\000"
.LASF146:
	.ascii	"_niobs\000"
.LASF232:
	.ascii	"bgTransform\000"
.LASF197:
	.ascii	"MODE_0_2D\000"
.LASF339:
	.ascii	"isActive\000"
.LASF455:
	.ascii	"bottom\000"
.LASF141:
	.ascii	"__sglue\000"
.LASF233:
	.ascii	"bgState\000"
.LASF64:
	.ascii	"sysVectors_t\000"
.LASF499:
	.ascii	"swiWaitForVBlank\000"
.LASF224:
	.ascii	"scrollX\000"
.LASF172:
	.ascii	"_nmalloc\000"
.LASF444:
	.ascii	"aspect\000"
.LASF199:
	.ascii	"MODE_2_2D\000"
.LASF28:
	.ascii	"double\000"
.LASF156:
	.ascii	"_gamma_signgam\000"
.LASF216:
	.ascii	"bg_scroll\000"
.LASF266:
	.ascii	"POLY_FOG\000"
.LASF476:
	.ascii	"depth\000"
.LASF201:
	.ascii	"MODE_4_2D\000"
.LASF52:
	.ascii	"KEY_UP\000"
.LASF135:
	.ascii	"_freelist\000"
.LASF147:
	.ascii	"_iobs\000"
.LASF145:
	.ascii	"_glue\000"
.LASF81:
	.ascii	"_sign\000"
.LASF203:
	.ascii	"MODE_6_2D\000"
.LASF503:
	.ascii	"GNU C17 8.1.0 -mtune=arm946e-s -mthumb -mthumb-inte"
	.ascii	"rwork -march=armv5te -g -O3 -fomit-frame-pointer -f"
	.ascii	"fast-math\000"
.LASF142:
	.ascii	"__sf\000"
.LASF312:
	.ascii	"startAddr\000"
.LASF473:
	.ascii	"glVertex3v16\000"
.LASF27:
	.ascii	"float\000"
.LASF507:
	.ascii	"glInit\000"
.LASF206:
	.ascii	"MODE_2_3D\000"
.LASF143:
	.ascii	"deviceData\000"
.LASF190:
	.ascii	"VRAM_A_MAIN_SPRITE_0x06420000\000"
.LASF287:
	.ascii	"GL_RGB4\000"
.LASF401:
	.ascii	"SpriteMapping_Bmp_1D_128\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF361:
	.ascii	"ObjShape\000"
.LASF359:
	.ascii	"OBJSHAPE_TALL\000"
.LASF409:
	.ascii	"oamRotationMemory\000"
.LASF399:
	.ascii	"SpriteMapping_1D_256\000"
.LASF210:
	.ascii	"MODE_6_3D\000"
.LASF170:
	.ascii	"_h_errno\000"
.LASF260:
	.ascii	"POLY_DECAL\000"
.LASF333:
	.ascii	"deallocPalSize\000"
.LASF168:
	.ascii	"_wcrtomb_state\000"
.LASF87:
	.ascii	"__tm_mday\000"
.LASF245:
	.ascii	"GL_TEXTURE\000"
.LASF458:
	.ascii	"bits\000"
.LASF239:
	.ascii	"GL_TRIANGLE\000"
.LASF501:
	.ascii	"keysDown\000"
.LASF138:
	.ascii	"_new\000"
.LASF113:
	.ascii	"_ubuf\000"
.LASF125:
	.ascii	"_stderr\000"
.LASF119:
	.ascii	"_mbstate\000"
.LASF293:
	.ascii	"GL_RGB\000"
.LASF157:
	.ascii	"_rand_next\000"
.LASF105:
	.ascii	"_flags\000"
.LASF475:
	.ascii	"glClearDepth\000"
.LASF343:
	.ascii	"exceptionRegisters\000"
.LASF191:
	.ascii	"VRAM_A_TEXTURE\000"
.LASF269:
	.ascii	"TEXTURE_SIZE_16\000"
.LASF253:
	.ascii	"KEYPAD_BITS\000"
.LASF241:
	.ascii	"GL_GLBEGIN_ENUM\000"
.LASF98:
	.ascii	"_atexit\000"
.LASF489:
	.ascii	"loadPCX\000"
.LASF404:
	.ascii	"SpriteMapping_Bmp_2D_256\000"
.LASF405:
	.ascii	"SpriteMapping\000"
.LASF196:
	.ascii	"VRAM_A_TYPE\000"
.LASF73:
	.ascii	"__count\000"
.LASF313:
	.ascii	"endAddr\000"
.LASF321:
	.ascii	"deallocBlocks\000"
.LASF397:
	.ascii	"SpriteMapping_1D_64\000"
.LASF334:
	.ascii	"activeTexture\000"
.LASF181:
	.ascii	"mosaicShadowSub\000"
.LASF90:
	.ascii	"__tm_wday\000"
.LASF60:
	.ascii	"long double\000"
.LASF256:
	.ascii	"POLY_FORMAT_LIGHT1\000"
.LASF257:
	.ascii	"POLY_FORMAT_LIGHT2\000"
.LASF258:
	.ascii	"POLY_FORMAT_LIGHT3\000"
.LASF91:
	.ascii	"__tm_yday\000"
.LASF350:
	.ascii	"palette\000"
.LASF284:
	.ascii	"TEXGEN_POSITION\000"
.LASF240:
	.ascii	"GL_QUAD\000"
.LASF48:
	.ascii	"KEY_SELECT\000"
.LASF305:
	.ascii	"GL_CLEAR_BMP\000"
.LASF149:
	.ascii	"_seed\000"
.LASF466:
	.ascii	"glViewport\000"
.LASF344:
	.ascii	"data8\000"
.LASF111:
	.ascii	"_seek\000"
.LASF398:
	.ascii	"SpriteMapping_1D_128\000"
.LASF186:
	.ascii	"VRAM_A_MAIN_BG_0x06040000\000"
.LASF62:
	.ascii	"_fpos_t\000"
.LASF72:
	.ascii	"__wchb\000"
.LASF355:
	.ascii	"OBJMODE_BITMAP\000"
.LASF160:
	.ascii	"_mbtowc_state\000"
.LASF422:
	.ascii	"optopt\000"
.LASF226:
	.ascii	"size\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF460:
	.ascii	"params\000"
.LASF505:
	.ascii	"B:\\\\GbaDev\\\\NDSProjects\\\\NDS-3D-engine\\\\arm"
	.ascii	"9\\\\build\000"
.LASF290:
	.ascii	"GL_COMPRESSED\000"
.LASF35:
	.ascii	"VoidFn\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF388:
	.ascii	"attribute\000"
.LASF161:
	.ascii	"_wctomb_state\000"
.LASF95:
	.ascii	"_dso_handle\000"
.LASF414:
	.ascii	"allocBufferSize\000"
.LASF487:
	.ascii	"glBindTexture\000"
.LASF504:
	.ascii	"B:/GbaDev/NDSProjects/NDS-3D-engine/arm9/source/Mai"
	.ascii	"n.c\000"
.LASF249:
	.ascii	"GL_AMBIENT_AND_DIFFUSE\000"
.LASF148:
	.ascii	"_rand48\000"
.LASF67:
	.ascii	"thread_tag\000"
.LASF451:
	.ascii	"ymax\000"
.LASF433:
	.ascii	"drawScene\000"
.LASF115:
	.ascii	"_blksize\000"
.LASF102:
	.ascii	"_base\000"
.LASF478:
	.ascii	"glEnd\000"
.LASF421:
	.ascii	"opterr\000"
.LASF153:
	.ascii	"_strtok_last\000"
.LASF166:
	.ascii	"_mbrtowc_state\000"
.LASF192:
	.ascii	"VRAM_A_TEXTURE_SLOT0\000"
.LASF193:
	.ascii	"VRAM_A_TEXTURE_SLOT1\000"
.LASF194:
	.ascii	"VRAM_A_TEXTURE_SLOT2\000"
.LASF195:
	.ascii	"VRAM_A_TEXTURE_SLOT3\000"
.LASF179:
	.ascii	"cur_size\000"
.LASF320:
	.ascii	"blockPtrs\000"
.LASF76:
	.ascii	"_flock_t\000"
.LASF407:
	.ascii	"nextFree\000"
.LASF144:
	.ascii	"__FILE\000"
.LASF393:
	.ascii	"filler2\000"
.LASF4:
	.ascii	"__int16_t\000"
.LASF75:
	.ascii	"_mbstate_t\000"
.LASF254:
	.ascii	"GL_POLY_FORMAT_ENUM\000"
.LASF158:
	.ascii	"_r48\000"
.LASF225:
	.ascii	"scrollY\000"
.LASF384:
	.ascii	"rotationIndex\000"
.LASF70:
	.ascii	"wint_t\000"
.LASF471:
	.ascii	"color\000"
.LASF79:
	.ascii	"_next\000"
.LASF117:
	.ascii	"_data\000"
.LASF271:
	.ascii	"TEXTURE_SIZE_64\000"
.LASF268:
	.ascii	"TEXTURE_SIZE_8\000"
.LASF336:
	.ascii	"texCount\000"
.LASF362:
	.ascii	"OBJSIZE_8\000"
.LASF387:
	.ascii	"attribute3\000"
.LASF273:
	.ascii	"TEXTURE_SIZE_256\000"
.LASF37:
	.ascii	"__irq_flags\000"
.LASF400:
	.ascii	"SpriteMapping_2D\000"
.LASF376:
	.ascii	"isRotateScale\000"
.LASF335:
	.ascii	"activePalette\000"
.LASF40:
	.ascii	"reset\000"
.LASF51:
	.ascii	"KEY_LEFT\000"
.LASF288:
	.ascii	"GL_RGB16\000"
.LASF21:
	.ascii	"uint8\000"
.LASF424:
	.ascii	"Peanut_pcx_end\000"
.LASF282:
	.ascii	"TEXGEN_TEXCOORD\000"
.LASF159:
	.ascii	"_mblen_state\000"
.LASF259:
	.ascii	"POLY_MODULATION\000"
.LASF5:
	.ascii	"short int\000"
.LASF465:
	.ascii	"mode\000"
.LASF315:
	.ascii	"firstEmpty\000"
.LASF386:
	.ascii	"priority\000"
.LASF327:
	.ascii	"vramLock\000"
.LASF16:
	.ascii	"int16_t\000"
.LASF176:
	.ascii	"suboptarg\000"
.LASF470:
	.ascii	"glLight\000"
.LASF370:
	.ascii	"OBJPRIORITY_0\000"
.LASF371:
	.ascii	"OBJPRIORITY_1\000"
.LASF96:
	.ascii	"_fntypes\000"
.LASF373:
	.ascii	"OBJPRIORITY_3\000"
.LASF391:
	.ascii	"SpriteRotation\000"
.LASF438:
	.ascii	"glClearColor\000"
.LASF89:
	.ascii	"__tm_year\000"
.LASF208:
	.ascii	"MODE_4_3D\000"
.LASF356:
	.ascii	"ObjBlendMode\000"
.LASF347:
	.ascii	"sImage\000"
.LASF328:
	.ascii	"texturePtrs\000"
.LASF231:
	.ascii	"bgScrollTable\000"
.LASF462:
	.ascii	"shiny32\000"
.LASF418:
	.ascii	"environ\000"
.LASF483:
	.ascii	"divf32\000"
.LASF33:
	.ascii	"vs32\000"
.LASF238:
	.ascii	"GL_QUAD_STRIP\000"
.LASF189:
	.ascii	"VRAM_A_MAIN_SPRITE_0x06400000\000"
.LASF107:
	.ascii	"_lbfsize\000"
.LASF126:
	.ascii	"_inc\000"
.LASF99:
	.ascii	"_ind\000"
.LASF472:
	.ascii	"glTranslatef32\000"
.LASF363:
	.ascii	"OBJSIZE_16\000"
.LASF12:
	.ascii	"__int64_t\000"
.LASF410:
	.ascii	"OamState\000"
.LASF415:
	.ascii	"spriteMapping\000"
.LASF24:
	.ascii	"int16\000"
.LASF220:
	.ascii	"centerX\000"
.LASF101:
	.ascii	"__sbuf\000"
.LASF381:
	.ascii	"shape\000"
.LASF97:
	.ascii	"_is_cxa\000"
.LASF63:
	.ascii	"_LOCK_T\000"
.LASF50:
	.ascii	"KEY_RIGHT\000"
.LASF171:
	.ascii	"_nextf\000"
.LASF443:
	.ascii	"fovy\000"
.LASF46:
	.ascii	"KEY_A\000"
.LASF47:
	.ascii	"KEY_B\000"
.LASF275:
	.ascii	"TEXTURE_SIZE_1024\000"
.LASF247:
	.ascii	"GL_AMBIENT\000"
.LASF375:
	.ascii	"isHidden\000"
.LASF45:
	.ascii	"SystemVectors\000"
.LASF55:
	.ascii	"KEY_L\000"
.LASF129:
	.ascii	"_locale\000"
.LASF77:
	.ascii	"__ULong\000"
.LASF54:
	.ascii	"KEY_R\000"
.LASF430:
	.ascii	"ySpeed\000"
.LASF56:
	.ascii	"KEY_X\000"
.LASF57:
	.ascii	"KEY_Y\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF38:
	.ascii	"__irq_flagsaux\000"
.LASF222:
	.ascii	"scaleX\000"
.LASF223:
	.ascii	"scaleY\000"
.LASF431:
	.ascii	"zPosition\000"
.LASF132:
	.ascii	"_result\000"
.LASF477:
	.ascii	"glLoadIdentity\000"
.LASF341:
	.ascii	"exceptionC\000"
.LASF427:
	.ascii	"xRotation\000"
.LASF419:
	.ascii	"optarg\000"
.LASF61:
	.ascii	"_off_t\000"
.LASF326:
	.ascii	"vramBlocks\000"
.LASF151:
	.ascii	"_add\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"__tm_hour\000"
.LASF324:
	.ascii	"gl_hidden_globals\000"
.LASF364:
	.ascii	"OBJSIZE_32\000"
.LASF202:
	.ascii	"MODE_5_2D\000"
.LASF297:
	.ascii	"GL_ALPHA_TEST\000"
.LASF369:
	.ascii	"ObjColMode\000"
.LASF25:
	.ascii	"int32\000"
.LASF452:
	.ascii	"glFrustumf32\000"
.LASF488:
	.ascii	"glTexCoord2f32\000"
.LASF167:
	.ascii	"_mbsrtowcs_state\000"
.LASF263:
	.ascii	"POLY_CULL_FRONT\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF20:
	.ascii	"int64_t\000"
.LASF408:
	.ascii	"oamMemory\000"
.LASF316:
	.ascii	"firstAlloc\000"
.LASF228:
	.ascii	"dirty\000"
.LASF34:
	.ascii	"vs64\000"
.LASF486:
	.ascii	"glRotatef32i\000"
.LASF357:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF94:
	.ascii	"_fnargs\000"
.LASF450:
	.ascii	"ymin\000"
.LASF92:
	.ascii	"__tm_isdst\000"
.LASF413:
	.ascii	"allocBuffer\000"
.LASF178:
	.ascii	"data\000"
.LASF185:
	.ascii	"VRAM_A_MAIN_BG_0x06020000\000"
.LASF41:
	.ascii	"undefined\000"
.LASF286:
	.ascii	"GL_RGB32_A3\000"
.LASF445:
	.ascii	"zNear\000"
.LASF417:
	.ascii	"oamSub\000"
.LASF211:
	.ascii	"MODE_FIFO\000"
.LASF85:
	.ascii	"__tm_min\000"
.LASF22:
	.ascii	"uint16\000"
.LASF164:
	.ascii	"_getdate_err\000"
.LASF329:
	.ascii	"palettePtrs\000"
.LASF66:
	.ascii	"lock\000"
.LASF267:
	.ascii	"GL_TEXTURE_SIZE_ENUM\000"
.LASF348:
	.ascii	"height\000"
.LASF402:
	.ascii	"SpriteMapping_Bmp_1D_256\000"
	.ident	"GCC: (devkitARM release 49) 8.1.0"
