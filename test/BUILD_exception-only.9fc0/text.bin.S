
BUILD_exception-only.9fc0/.obj/main.elf:     file format elf32-tradlittlemips


Disassembly of section .text:

9fc00000 <_ftext>:
9fc00000:	2408ffff 	li	t0,-1
9fc00004:	2408ffff 	li	t0,-1
9fc00008:	2408ffff 	li	t0,-1
9fc0000c:	100001b2 	b	9fc006d8 <locate>
9fc00010:	00000000 	nop
9fc00014:	3c088000 	lui	t0,0x8000
9fc00018:	25290001 	addiu	t1,t1,1
9fc0001c:	01005025 	move	t2,t0
9fc00020:	01ae5821 	addu	t3,t5,t6
9fc00024:	8d0c0000 	lw	t4,0(t0)
9fc00028:	00000000 	nop
9fc0002c:	00000000 	nop
9fc00030:	00000000 	nop
9fc00034:	00000000 	nop
9fc00038:	00000000 	nop
9fc0003c:	00000000 	nop
9fc00040:	00000000 	nop
9fc00044:	00000000 	nop
9fc00048:	00000000 	nop
9fc0004c:	00000000 	nop
9fc00050:	00000000 	nop
9fc00054:	00000000 	nop
9fc00058:	00000000 	nop
9fc0005c:	00000000 	nop
9fc00060:	00000000 	nop
9fc00064:	00000000 	nop
9fc00068:	00000000 	nop
9fc0006c:	00000000 	nop
9fc00070:	00000000 	nop
9fc00074:	00000000 	nop
9fc00078:	00000000 	nop
9fc0007c:	00000000 	nop
9fc00080:	00000000 	nop
9fc00084:	00000000 	nop
9fc00088:	00000000 	nop
9fc0008c:	00000000 	nop
9fc00090:	00000000 	nop
9fc00094:	00000000 	nop
9fc00098:	00000000 	nop
9fc0009c:	00000000 	nop
9fc000a0:	00000000 	nop
9fc000a4:	00000000 	nop
9fc000a8:	00000000 	nop
9fc000ac:	00000000 	nop
9fc000b0:	00000000 	nop
9fc000b4:	00000000 	nop
9fc000b8:	00000000 	nop
9fc000bc:	00000000 	nop
9fc000c0:	00000000 	nop
9fc000c4:	00000000 	nop
9fc000c8:	00000000 	nop
9fc000cc:	00000000 	nop
9fc000d0:	00000000 	nop
9fc000d4:	00000000 	nop
9fc000d8:	00000000 	nop
9fc000dc:	00000000 	nop
9fc000e0:	00000000 	nop
9fc000e4:	00000000 	nop
9fc000e8:	00000000 	nop

9fc000ec <cpu_error_handler>:
9fc000ec:	3c088000 	lui	t0,0x8000
9fc000f0:	25290001 	addiu	t1,t1,1
9fc000f4:	01005025 	move	t2,t0
9fc000f8:	01ae5821 	addu	t3,t5,t6
9fc000fc:	8d0c0000 	lw	t4,0(t0)

9fc00100 <test_finish>:
9fc00100:	25080001 	addiu	t0,t0,1
9fc00104:	240900ff 	li	t1,255
9fc00108:	3c0abfb0 	lui	t2,0xbfb0
9fc0010c:	254afff0 	addiu	t2,t2,-16
9fc00110:	ad490000 	sw	t1,0(t2)
9fc00114:	1000fffa 	b	9fc00100 <test_finish>
9fc00118:	00000000 	nop
9fc0011c:	3c088000 	lui	t0,0x8000
9fc00120:	25290001 	addiu	t1,t1,1
9fc00124:	01005025 	move	t2,t0
9fc00128:	01ae5821 	addu	t3,t5,t6
9fc0012c:	8d0c0000 	lw	t4,0(t0)
9fc00130:	00000000 	nop
9fc00134:	00000000 	nop
9fc00138:	00000000 	nop
9fc0013c:	00000000 	nop
9fc00140:	00000000 	nop
9fc00144:	00000000 	nop
9fc00148:	00000000 	nop
9fc0014c:	00000000 	nop
9fc00150:	00000000 	nop
9fc00154:	00000000 	nop
9fc00158:	00000000 	nop
9fc0015c:	00000000 	nop
9fc00160:	00000000 	nop
9fc00164:	00000000 	nop
9fc00168:	00000000 	nop
9fc0016c:	00000000 	nop
9fc00170:	00000000 	nop
9fc00174:	00000000 	nop
9fc00178:	00000000 	nop
9fc0017c:	00000000 	nop
9fc00180:	00000000 	nop
9fc00184:	00000000 	nop
9fc00188:	00000000 	nop
9fc0018c:	00000000 	nop
9fc00190:	00000000 	nop
9fc00194:	00000000 	nop
9fc00198:	00000000 	nop
9fc0019c:	00000000 	nop
9fc001a0:	00000000 	nop
9fc001a4:	00000000 	nop
9fc001a8:	00000000 	nop
9fc001ac:	00000000 	nop
9fc001b0:	00000000 	nop
9fc001b4:	00000000 	nop
9fc001b8:	00000000 	nop
9fc001bc:	00000000 	nop
9fc001c0:	00000000 	nop
9fc001c4:	00000000 	nop
9fc001c8:	00000000 	nop
9fc001cc:	00000000 	nop
9fc001d0:	00000000 	nop
9fc001d4:	00000000 	nop
9fc001d8:	00000000 	nop
9fc001dc:	00000000 	nop
9fc001e0:	00000000 	nop
9fc001e4:	00000000 	nop
9fc001e8:	00000000 	nop
9fc001ec:	00000000 	nop
9fc001f0:	00000000 	nop
9fc001f4:	00000000 	nop
9fc001f8:	00000000 	nop
9fc001fc:	00000000 	nop

9fc00200 <tlb_ex_handler>:
9fc00200:	1000008c 	b	9fc00434 <exception_failure>
9fc00204:	00000000 	nop
9fc00208:	00000000 	nop
9fc0020c:	00000000 	nop
9fc00210:	00000000 	nop
9fc00214:	00000000 	nop
9fc00218:	00000000 	nop
9fc0021c:	00000000 	nop
9fc00220:	00000000 	nop
9fc00224:	00000000 	nop
9fc00228:	00000000 	nop
9fc0022c:	00000000 	nop
9fc00230:	00000000 	nop
9fc00234:	00000000 	nop
9fc00238:	00000000 	nop
9fc0023c:	00000000 	nop
9fc00240:	00000000 	nop
9fc00244:	00000000 	nop
9fc00248:	00000000 	nop
9fc0024c:	00000000 	nop
9fc00250:	00000000 	nop
9fc00254:	00000000 	nop
9fc00258:	00000000 	nop
9fc0025c:	00000000 	nop
9fc00260:	00000000 	nop
9fc00264:	00000000 	nop
9fc00268:	00000000 	nop
9fc0026c:	00000000 	nop
9fc00270:	00000000 	nop
9fc00274:	00000000 	nop
9fc00278:	00000000 	nop
9fc0027c:	00000000 	nop
9fc00280:	00000000 	nop
9fc00284:	00000000 	nop
9fc00288:	00000000 	nop
9fc0028c:	00000000 	nop
9fc00290:	00000000 	nop
9fc00294:	00000000 	nop
9fc00298:	00000000 	nop
9fc0029c:	00000000 	nop
9fc002a0:	00000000 	nop
9fc002a4:	00000000 	nop
9fc002a8:	00000000 	nop
9fc002ac:	00000000 	nop
9fc002b0:	00000000 	nop
9fc002b4:	00000000 	nop
9fc002b8:	00000000 	nop
9fc002bc:	00000000 	nop
9fc002c0:	00000000 	nop
9fc002c4:	00000000 	nop
9fc002c8:	00000000 	nop
9fc002cc:	00000000 	nop
9fc002d0:	00000000 	nop
9fc002d4:	00000000 	nop
9fc002d8:	00000000 	nop
9fc002dc:	00000000 	nop
9fc002e0:	00000000 	nop
9fc002e4:	00000000 	nop
9fc002e8:	00000000 	nop
9fc002ec:	00000000 	nop
9fc002f0:	00000000 	nop
9fc002f4:	00000000 	nop
9fc002f8:	00000000 	nop
9fc002fc:	00000000 	nop
9fc00300:	00000000 	nop
9fc00304:	00000000 	nop
9fc00308:	00000000 	nop
9fc0030c:	00000000 	nop
9fc00310:	00000000 	nop
9fc00314:	00000000 	nop
9fc00318:	00000000 	nop
9fc0031c:	00000000 	nop
9fc00320:	00000000 	nop
9fc00324:	00000000 	nop
9fc00328:	00000000 	nop
9fc0032c:	00000000 	nop
9fc00330:	00000000 	nop
9fc00334:	00000000 	nop
9fc00338:	00000000 	nop
9fc0033c:	00000000 	nop
9fc00340:	00000000 	nop
9fc00344:	00000000 	nop
9fc00348:	00000000 	nop
9fc0034c:	00000000 	nop
9fc00350:	00000000 	nop
9fc00354:	00000000 	nop
9fc00358:	00000000 	nop
9fc0035c:	00000000 	nop
9fc00360:	00000000 	nop
9fc00364:	00000000 	nop
9fc00368:	00000000 	nop
9fc0036c:	00000000 	nop
9fc00370:	00000000 	nop
9fc00374:	00000000 	nop
9fc00378:	00000000 	nop
9fc0037c:	00000000 	nop

9fc00380 <exception_dispatch>:
9fc00380:	0000d010 	mfhi	k0
9fc00384:	0000d812 	mflo	k1
9fc00388:	3c1a800d 	lui	k0,0x800d
9fc0038c:	935b0000 	lbu	k1,0(k0)
9fc00390:	241a0001 	li	k0,1
9fc00394:	137a002e 	beq	k1,k0,9fc00450 <syscall_ex>
9fc00398:	00000000 	nop
9fc0039c:	241a0002 	li	k0,2
9fc003a0:	137a003c 	beq	k1,k0,9fc00494 <break_ex>
9fc003a4:	00000000 	nop
9fc003a8:	241a0003 	li	k0,3
9fc003ac:	137a004a 	beq	k1,k0,9fc004d8 <overflow_ex>
9fc003b0:	00000000 	nop
9fc003b4:	241a0004 	li	k0,4
9fc003b8:	137a0057 	beq	k1,k0,9fc00518 <adel_load_ex>
9fc003bc:	00000000 	nop
9fc003c0:	241a0005 	li	k0,5
9fc003c4:	137a0065 	beq	k1,k0,9fc0055c <ades_ex>
9fc003c8:	00000000 	nop
9fc003cc:	241a0006 	li	k0,6
9fc003d0:	137a0073 	beq	k1,k0,9fc005a0 <adel_if_ex>
9fc003d4:	00000000 	nop
9fc003d8:	241a0007 	li	k0,7
9fc003dc:	137a0082 	beq	k1,k0,9fc005e8 <reserved_inst_ex>
9fc003e0:	00000000 	nop
9fc003e4:	241a0008 	li	k0,8
9fc003e8:	137a0090 	beq	k1,k0,9fc0062c <int_ex>
9fc003ec:	00000000 	nop
9fc003f0:	10000010 	b	9fc00434 <exception_failure>
9fc003f4:	00000000 	nop

9fc003f8 <exception_finish>:
9fc003f8:	401a6800 	mfc0	k0,c0_cause
9fc003fc:	3c1b8000 	lui	k1,0x8000
9fc00400:	035bd024 	and	k0,k0,k1
9fc00404:	401b7000 	mfc0	k1,c0_epc
9fc00408:	277b0004 	addiu	k1,k1,4
9fc0040c:	13400002 	beqz	k0,9fc00418 <exception_finish+0x20>
9fc00410:	00000000 	nop
9fc00414:	277b0004 	addiu	k1,k1,4
9fc00418:	409b7000 	mtc0	k1,c0_epc
9fc0041c:	00000000 	nop
9fc00420:	16400002 	bnez	s2,9fc0042c <exception_return>
9fc00424:	00000000 	nop
9fc00428:	3c12ffff 	lui	s2,0xffff

9fc0042c <exception_return>:
9fc0042c:	42000018 	c0	0x18
9fc00430:	00000000 	nop

9fc00434 <exception_failure>:
9fc00434:	00104e00 	sll	t1,s0,0x18
9fc00438:	01334025 	or	t0,t1,s3
9fc0043c:	ae280000 	sw	t0,0(s1)
9fc00440:	03e00008 	jr	ra
9fc00444:	00000000 	nop
9fc00448:	1000ffeb 	b	9fc003f8 <exception_finish>
9fc0044c:	00000000 	nop

9fc00450 <syscall_ex>:
9fc00450:	00009021 	move	s2,zero
9fc00454:	401a7000 	mfc0	k0,c0_epc
9fc00458:	1754ffe7 	bne	k0,s4,9fc003f8 <exception_finish>
9fc0045c:	00000000 	nop
9fc00460:	401a6800 	mfc0	k0,c0_cause
9fc00464:	335a007c 	andi	k0,k0,0x7c
9fc00468:	241b0020 	li	k1,32
9fc0046c:	175bffe2 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00470:	00000000 	nop
9fc00474:	401a6000 	mfc0	k0,c0_sr
9fc00478:	335a0002 	andi	k0,k0,0x2
9fc0047c:	241b0002 	li	k1,2
9fc00480:	175bffdd 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00484:	00000000 	nop
9fc00488:	3c120001 	lui	s2,0x1
9fc0048c:	1000ffda 	b	9fc003f8 <exception_finish>
9fc00490:	00000000 	nop

9fc00494 <break_ex>:
9fc00494:	00009021 	move	s2,zero
9fc00498:	401a7000 	mfc0	k0,c0_epc
9fc0049c:	1754ffd6 	bne	k0,s4,9fc003f8 <exception_finish>
9fc004a0:	00000000 	nop
9fc004a4:	401a6800 	mfc0	k0,c0_cause
9fc004a8:	335a007c 	andi	k0,k0,0x7c
9fc004ac:	241b0024 	li	k1,36
9fc004b0:	175bffd1 	bne	k0,k1,9fc003f8 <exception_finish>
9fc004b4:	00000000 	nop
9fc004b8:	401a6000 	mfc0	k0,c0_sr
9fc004bc:	335a0002 	andi	k0,k0,0x2
9fc004c0:	241b0002 	li	k1,2
9fc004c4:	175bffcc 	bne	k0,k1,9fc003f8 <exception_finish>
9fc004c8:	00000000 	nop
9fc004cc:	3c120002 	lui	s2,0x2
9fc004d0:	1000ffc9 	b	9fc003f8 <exception_finish>
9fc004d4:	00000000 	nop

9fc004d8 <overflow_ex>:
9fc004d8:	00009021 	move	s2,zero
9fc004dc:	401a7000 	mfc0	k0,c0_epc
9fc004e0:	1754ffc5 	bne	k0,s4,9fc003f8 <exception_finish>
9fc004e4:	401a6800 	mfc0	k0,c0_cause
9fc004e8:	335a007c 	andi	k0,k0,0x7c
9fc004ec:	241b0030 	li	k1,48
9fc004f0:	175bffc1 	bne	k0,k1,9fc003f8 <exception_finish>
9fc004f4:	00000000 	nop
9fc004f8:	401a6000 	mfc0	k0,c0_sr
9fc004fc:	335a0002 	andi	k0,k0,0x2
9fc00500:	241b0002 	li	k1,2
9fc00504:	175bffbc 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00508:	00000000 	nop
9fc0050c:	3c120003 	lui	s2,0x3
9fc00510:	1000ffb9 	b	9fc003f8 <exception_finish>
9fc00514:	00000000 	nop

9fc00518 <adel_load_ex>:
9fc00518:	00009021 	move	s2,zero
9fc0051c:	401a7000 	mfc0	k0,c0_epc
9fc00520:	1754ffb5 	bne	k0,s4,9fc003f8 <exception_finish>
9fc00524:	00000000 	nop
9fc00528:	401a6800 	mfc0	k0,c0_cause
9fc0052c:	335a007c 	andi	k0,k0,0x7c
9fc00530:	241b0010 	li	k1,16
9fc00534:	175bffb0 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00538:	00000000 	nop
9fc0053c:	401a6000 	mfc0	k0,c0_sr
9fc00540:	335a0002 	andi	k0,k0,0x2
9fc00544:	241b0002 	li	k1,2
9fc00548:	175bffab 	bne	k0,k1,9fc003f8 <exception_finish>
9fc0054c:	00000000 	nop
9fc00550:	3c120004 	lui	s2,0x4
9fc00554:	1000ffa8 	b	9fc003f8 <exception_finish>
9fc00558:	00000000 	nop

9fc0055c <ades_ex>:
9fc0055c:	00009021 	move	s2,zero
9fc00560:	401a7000 	mfc0	k0,c0_epc
9fc00564:	1754ffa4 	bne	k0,s4,9fc003f8 <exception_finish>
9fc00568:	00000000 	nop
9fc0056c:	401a6800 	mfc0	k0,c0_cause
9fc00570:	335a007c 	andi	k0,k0,0x7c
9fc00574:	241b0014 	li	k1,20
9fc00578:	175bff9f 	bne	k0,k1,9fc003f8 <exception_finish>
9fc0057c:	00000000 	nop
9fc00580:	401a6000 	mfc0	k0,c0_sr
9fc00584:	335a0002 	andi	k0,k0,0x2
9fc00588:	241b0002 	li	k1,2
9fc0058c:	175bff9a 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00590:	00000000 	nop
9fc00594:	3c120005 	lui	s2,0x5
9fc00598:	1000ff97 	b	9fc003f8 <exception_finish>
9fc0059c:	00000000 	nop

9fc005a0 <adel_if_ex>:
9fc005a0:	00009021 	move	s2,zero
9fc005a4:	401a7000 	mfc0	k0,c0_epc
9fc005a8:	1754ff93 	bne	k0,s4,9fc003f8 <exception_finish>
9fc005ac:	00000000 	nop
9fc005b0:	40957000 	mtc0	s5,c0_epc
9fc005b4:	401a6800 	mfc0	k0,c0_cause
9fc005b8:	335a007c 	andi	k0,k0,0x7c
9fc005bc:	241b0010 	li	k1,16
9fc005c0:	175bff8d 	bne	k0,k1,9fc003f8 <exception_finish>
9fc005c4:	00000000 	nop
9fc005c8:	401a6000 	mfc0	k0,c0_sr
9fc005cc:	335a0002 	andi	k0,k0,0x2
9fc005d0:	241b0002 	li	k1,2
9fc005d4:	175bff88 	bne	k0,k1,9fc003f8 <exception_finish>
9fc005d8:	00000000 	nop
9fc005dc:	3c120006 	lui	s2,0x6
9fc005e0:	1000ff85 	b	9fc003f8 <exception_finish>
9fc005e4:	00000000 	nop

9fc005e8 <reserved_inst_ex>:
9fc005e8:	00009021 	move	s2,zero
9fc005ec:	401a7000 	mfc0	k0,c0_epc
9fc005f0:	1754ff81 	bne	k0,s4,9fc003f8 <exception_finish>
9fc005f4:	00000000 	nop
9fc005f8:	401a6800 	mfc0	k0,c0_cause
9fc005fc:	335a007c 	andi	k0,k0,0x7c
9fc00600:	241b0028 	li	k1,40
9fc00604:	175bff7c 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00608:	00000000 	nop
9fc0060c:	401a6000 	mfc0	k0,c0_sr
9fc00610:	335a0002 	andi	k0,k0,0x2
9fc00614:	241b0002 	li	k1,2
9fc00618:	175bff77 	bne	k0,k1,9fc003f8 <exception_finish>
9fc0061c:	00000000 	nop
9fc00620:	3c120007 	lui	s2,0x7
9fc00624:	1000ff74 	b	9fc003f8 <exception_finish>
9fc00628:	00000000 	nop

9fc0062c <int_ex>:
9fc0062c:	00009021 	move	s2,zero
9fc00630:	401a7000 	mfc0	k0,c0_epc
9fc00634:	1754ff70 	bne	k0,s4,9fc003f8 <exception_finish>
9fc00638:	00000000 	nop
9fc0063c:	275a0008 	addiu	k0,k0,8
9fc00640:	409a7000 	mtc0	k0,c0_epc
9fc00644:	3c1bbfb0 	lui	k1,0xbfb0
9fc00648:	af608ffc 	sw	zero,-28676(k1)
9fc0064c:	af608ffc 	sw	zero,-28676(k1)
9fc00650:	af60fff8 	sw	zero,-8(k1)
9fc00654:	af608ffc 	sw	zero,-28676(k1)
9fc00658:	af608ffc 	sw	zero,-28676(k1)
9fc0065c:	8f608ffc 	lw	zero,-28676(k1)
9fc00660:	8f7bfff8 	lw	k1,-8(k1)
9fc00664:	401a6800 	mfc0	k0,c0_cause
9fc00668:	3c1bbfb0 	lui	k1,0xbfb0
9fc0066c:	af608ffc 	sw	zero,-28676(k1)
9fc00670:	af608ffc 	sw	zero,-28676(k1)
9fc00674:	af7bfff8 	sw	k1,-8(k1)
9fc00678:	af608ffc 	sw	zero,-28676(k1)
9fc0067c:	af608ffc 	sw	zero,-28676(k1)
9fc00680:	8f608ffc 	lw	zero,-28676(k1)
9fc00684:	8f7bfff8 	lw	k1,-8(k1)
9fc00688:	335a007c 	andi	k0,k0,0x7c
9fc0068c:	241b0000 	li	k1,0
9fc00690:	175bff59 	bne	k0,k1,9fc003f8 <exception_finish>
9fc00694:	00000000 	nop
9fc00698:	00000000 	nop
9fc0069c:	401a6000 	mfc0	k0,c0_sr
9fc006a0:	00000000 	nop
9fc006a4:	335a0002 	andi	k0,k0,0x2
9fc006a8:	241b0002 	li	k1,2
9fc006ac:	175bff52 	bne	k0,k1,9fc003f8 <exception_finish>
9fc006b0:	00000000 	nop
9fc006b4:	00000000 	nop
9fc006b8:	241affff 	li	k0,-1
9fc006bc:	241b0000 	li	k1,0
9fc006c0:	409a5800 	mtc0	k0,$11
9fc006c4:	00000000 	nop
9fc006c8:	409b6800 	mtc0	k1,c0_cause
9fc006cc:	1000ff57 	b	9fc0042c <exception_return>
9fc006d0:	3c120008 	lui	s2,0x8
9fc006d4:	00000000 	nop

9fc006d8 <locate>:
9fc006d8:	3c04bfb0 	lui	a0,0xbfb0
9fc006dc:	2484f008 	addiu	a0,a0,-4088
9fc006e0:	3c05bfb0 	lui	a1,0xbfb0
9fc006e4:	24a5f004 	addiu	a1,a1,-4092
9fc006e8:	3c06bfb0 	lui	a2,0xbfb0
9fc006ec:	24c6f000 	addiu	a2,a2,-4096
9fc006f0:	3c11bfb0 	lui	s1,0xbfb0
9fc006f4:	2631f010 	addiu	s1,s1,-4080
9fc006f8:	3c090000 	lui	t1,0x0
9fc006fc:	25290002 	addiu	t1,t1,2
9fc00700:	3c0a0000 	lui	t2,0x0
9fc00704:	254a0001 	addiu	t2,t2,1
9fc00708:	3c0b0001 	lui	t3,0x1
9fc0070c:	256bffff 	addiu	t3,t3,-1
9fc00710:	3c130000 	lui	s3,0x0
9fc00714:	ac890000 	sw	t1,0(a0)
9fc00718:	acaa0000 	sw	t2,0(a1)
9fc0071c:	accb0000 	sw	t3,0(a2)
9fc00720:	ae330000 	sw	s3,0(s1)
9fc00724:	3c100000 	lui	s0,0x0
9fc00728:	3c199fc0 	lui	t9,0x9fc0
9fc0072c:	2739073c 	addiu	t9,t9,1852
9fc00730:	03200008 	jr	t9
9fc00734:	00000000 	nop
9fc00738:	00000000 	nop

9fc0073c <inst_test>:
9fc0073c:	0ff00240 	jal	9fc00900 <n69_syscall_ex_test>
9fc00740:	00000000 	nop
9fc00744:	0ff00290 	jal	9fc00a40 <n70_break_ex_test>
9fc00748:	00000000 	nop
9fc0074c:	0ff002e0 	jal	9fc00b80 <n71_add_ov_ex_test>
9fc00750:	00000000 	nop
9fc00754:	0ff00374 	jal	9fc00dd0 <n72_addi_ov_ex_test>
9fc00758:	00000000 	nop
9fc0075c:	0ff00400 	jal	9fc01000 <n73_sub_ov_ex_test>
9fc00760:	00000000 	nop
9fc00764:	0ff00494 	jal	9fc01250 <n74_lw_adel_ex_test>
9fc00768:	00000000 	nop
9fc0076c:	0ff00554 	jal	9fc01550 <n75_lh_adel_ex_test>
9fc00770:	00000000 	nop
9fc00774:	0ff00614 	jal	9fc01850 <n76_lhu_adel_ex_test>
9fc00778:	00000000 	nop
9fc0077c:	0ff006d4 	jal	9fc01b50 <n77_sw_ades_ex_test>
9fc00780:	00000000 	nop
9fc00784:	0ff00794 	jal	9fc01e50 <n78_sh_ades_ex_test>
9fc00788:	00000000 	nop
9fc0078c:	0ff00854 	jal	9fc02150 <n79_ft_adel_ex_test>
9fc00790:	00000000 	nop
9fc00794:	0ff008e0 	jal	9fc02380 <n80_ri_ex_test>
9fc00798:	00000000 	nop
9fc0079c:	0ff00934 	jal	9fc024d0 <n81_ti_ex_test>
9fc007a0:	00000000 	nop
9fc007a4:	0ff009dc 	jal	9fc02770 <n82_soft_int_ex_test>
9fc007a8:	00000000 	nop
9fc007ac:	0ff00a74 	jal	9fc029d0 <n83_beq_ds_ex_test>
9fc007b0:	00000000 	nop
9fc007b4:	0ff00b34 	jal	9fc02cd0 <n84_bne_ds_ex_test>
9fc007b8:	00000000 	nop
9fc007bc:	0ff00bf4 	jal	9fc02fd0 <n85_bgez_ds_ex_test>
9fc007c0:	00000000 	nop
9fc007c4:	0ff00cb4 	jal	9fc032d0 <n86_bgtz_ds_ex_test>
9fc007c8:	00000000 	nop
9fc007cc:	0ff00d74 	jal	9fc035d0 <n87_blez_ds_ex_test>
9fc007d0:	00000000 	nop
9fc007d4:	0ff00e34 	jal	9fc038d0 <n88_bltz_ds_ex_test>
9fc007d8:	00000000 	nop
9fc007dc:	0ff00ef4 	jal	9fc03bd0 <n89_bltzal_ds_ex_test>
9fc007e0:	00000000 	nop
9fc007e4:	0ff00fb8 	jal	9fc03ee0 <n90_bgezal_ds_ex_test>
9fc007e8:	00000000 	nop
9fc007ec:	0ff0107c 	jal	9fc041f0 <n91_j_ds_ex_test>
9fc007f0:	00000000 	nop
9fc007f4:	0ff0113c 	jal	9fc044f0 <n92_jal_ds_ex_test>
9fc007f8:	00000000 	nop
9fc007fc:	0ff01200 	jal	9fc04800 <n93_jr_ds_ex_test>
9fc00800:	00000000 	nop
9fc00804:	0ff012d8 	jal	9fc04b60 <n94_jalr_ds_ex_test>
9fc00808:	00000000 	nop
9fc0080c:	00000000 	nop
9fc00810:	3c099fc0 	lui	t1,0x9fc0
9fc00814:	2529082c 	addiu	t1,t1,2092
9fc00818:	3c0a2000 	lui	t2,0x2000
9fc0081c:	012ac821 	addu	t9,t1,t2
9fc00820:	03200008 	jr	t9
9fc00824:	00000000 	nop
9fc00828:	00000000 	nop

9fc0082c <kseg0_to_kseg1>:
9fc0082c:	3c100000 	lui	s0,0x0
9fc00830:	2610007f 	addiu	s0,s0,127
9fc00834:	1213000f 	beq	s0,s3,9fc00874 <kseg0_to_kseg1+0x48>
9fc00838:	00000000 	nop
9fc0083c:	00000000 	nop
9fc00840:	3c04bfb0 	lui	a0,0xbfb0
9fc00844:	2484f000 	addiu	a0,a0,-4096
9fc00848:	3c05bfb0 	lui	a1,0xbfb0
9fc0084c:	24a5f000 	addiu	a1,a1,-4096
9fc00850:	3c06bfb0 	lui	a2,0xbfb0
9fc00854:	24c6f000 	addiu	a2,a2,-4096
9fc00858:	3c090000 	lui	t1,0x0
9fc0085c:	25290002 	addiu	t1,t1,2
9fc00860:	ac800000 	sw	zero,0(a0)
9fc00864:	aca90000 	sw	t1,0(a1)
9fc00868:	1000000a 	b	9fc00894 <kseg0_to_kseg1+0x68>
9fc0086c:	acc90000 	sw	t1,0(a2)
9fc00870:	00000000 	nop
9fc00874:	3c090000 	lui	t1,0x0
9fc00878:	25290001 	addiu	t1,t1,1
9fc0087c:	3c04bfb0 	lui	a0,0xbfb0
9fc00880:	2484f008 	addiu	a0,a0,-4088
9fc00884:	3c05bfb0 	lui	a1,0xbfb0
9fc00888:	24a5f004 	addiu	a1,a1,-4092
9fc0088c:	ac890000 	sw	t1,0(a0)
9fc00890:	aca90000 	sw	t1,0(a1)
9fc00894:	0ff00040 	jal	9fc00100 <test_finish>
9fc00898:	00000000 	nop
9fc0089c:	00000000 	nop

9fc008a0 <wait_1s>:
9fc008a0:	3c08bfb0 	lui	t0,0xbfb0
9fc008a4:	2508f02c 	addiu	t0,t0,-4052
9fc008a8:	3c090001 	lui	t1,0x1
9fc008ac:	2529aaaa 	addiu	t1,t1,-21846
9fc008b0:	8d0a0000 	lw	t2,0(t0)
9fc008b4:	00000000 	nop
9fc008b8:	01495026 	xor	t2,t2,t1
9fc008bc:	000a5a40 	sll	t3,t2,0x9
9fc008c0:	256b0001 	addiu	t3,t3,1

9fc008c4 <sub1>:
9fc008c4:	256bffff 	addiu	t3,t3,-1
9fc008c8:	8d0a0000 	lw	t2,0(t0)
9fc008cc:	00000000 	nop
9fc008d0:	01495026 	xor	t2,t2,t1
9fc008d4:	000a5240 	sll	t2,t2,0x9
9fc008d8:	016a602b 	sltu	t4,t3,t2
9fc008dc:	15800003 	bnez	t4,9fc008ec <sub1+0x28>
9fc008e0:	00000000 	nop
9fc008e4:	00000000 	nop
9fc008e8:	254b0000 	addiu	t3,t2,0
9fc008ec:	1560fff5 	bnez	t3,9fc008c4 <sub1>
9fc008f0:	00000000 	nop
9fc008f4:	03e00008 	jr	ra
9fc008f8:	00000000 	nop
9fc008fc:	00000000 	nop

9fc00900 <n69_syscall_ex_test>:
9fc00900:	26100001 	addiu	s0,s0,1
9fc00904:	3c08800d 	lui	t0,0x800d
9fc00908:	24120001 	li	s2,1
9fc0090c:	ad120000 	sw	s2,0(t0)
9fc00910:	40805800 	mtc0	zero,$11
9fc00914:	3c170040 	lui	s7,0x40
9fc00918:	40976000 	mtc0	s7,c0_sr
9fc0091c:	00000000 	nop
9fc00920:	3c170001 	lui	s7,0x1
9fc00924:	3c149fc0 	lui	s4,0x9fc0
9fc00928:	2694092c 	addiu	s4,s4,2348

9fc0092c <syscall_pc1>:
9fc0092c:	0000000c 	syscall
9fc00930:	1657003c 	bne	s2,s7,9fc00a24 <inst_error>
9fc00934:	00000000 	nop
9fc00938:	24120001 	li	s2,1
9fc0093c:	3c149fc0 	lui	s4,0x9fc0
9fc00940:	2694094c 	addiu	s4,s4,2380
9fc00944:	ad080004 	sw	t0,4(t0)
9fc00948:	ad140004 	sw	s4,4(t0)

9fc0094c <syscall_pc2>:
9fc0094c:	0000000c 	syscall
9fc00950:	ad140000 	sw	s4,0(t0)
9fc00954:	8d090004 	lw	t1,4(t0)
9fc00958:	15340032 	bne	t1,s4,9fc00a24 <inst_error>
9fc0095c:	00000000 	nop
9fc00960:	16570030 	bne	s2,s7,9fc00a24 <inst_error>
9fc00964:	00000000 	nop
9fc00968:	24120001 	li	s2,1
9fc0096c:	ad120000 	sw	s2,0(t0)
9fc00970:	24120001 	li	s2,1
9fc00974:	3c149fc0 	lui	s4,0x9fc0
9fc00978:	26940984 	addiu	s4,s4,2436
9fc0097c:	01000011 	mthi	t0
9fc00980:	0110001b 	divu	zero,t0,s0

9fc00984 <syscall_pc3>:
9fc00984:	0000000c 	syscall
9fc00988:	00004810 	mfhi	t1
9fc0098c:	11280025 	beq	t1,t0,9fc00a24 <inst_error>
9fc00990:	00000000 	nop
9fc00994:	16570023 	bne	s2,s7,9fc00a24 <inst_error>
9fc00998:	00000000 	nop
9fc0099c:	24120001 	li	s2,1
9fc009a0:	3c149fc0 	lui	s4,0x9fc0
9fc009a4:	269409a8 	addiu	s4,s4,2472

9fc009a8 <syscall_pc4>:
9fc009a8:	0000000c 	syscall
9fc009ac:	0208001b 	divu	zero,s0,t0
9fc009b0:	1657001c 	bne	s2,s7,9fc00a24 <inst_error>
9fc009b4:	00000000 	nop
9fc009b8:	24120001 	li	s2,1
9fc009bc:	3c149fc0 	lui	s4,0x9fc0
9fc009c0:	269409cc 	addiu	s4,s4,2508
9fc009c4:	01000013 	mtlo	t0
9fc009c8:	01100019 	multu	t0,s0

9fc009cc <syscall_pc5>:
9fc009cc:	0000000c 	syscall
9fc009d0:	00004810 	mfhi	t1
9fc009d4:	11280013 	beq	t1,t0,9fc00a24 <inst_error>
9fc009d8:	00000000 	nop
9fc009dc:	16570011 	bne	s2,s7,9fc00a24 <inst_error>
9fc009e0:	00000000 	nop
9fc009e4:	24120001 	li	s2,1
9fc009e8:	3c149fc0 	lui	s4,0x9fc0
9fc009ec:	269409f0 	addiu	s4,s4,2544

9fc009f0 <syscall_pc6>:
9fc009f0:	0000000c 	syscall
9fc009f4:	01120019 	multu	t0,s2
9fc009f8:	1657000a 	bne	s2,s7,9fc00a24 <inst_error>
9fc009fc:	00000000 	nop
9fc00a00:	24120001 	li	s2,1
9fc00a04:	3c149fc0 	lui	s4,0x9fc0
9fc00a08:	26940a10 	addiu	s4,s4,2576
9fc00a0c:	40927000 	mtc0	s2,c0_epc

9fc00a10 <syscall_pc7>:
9fc00a10:	0000000c 	syscall
9fc00a14:	40887000 	mtc0	t0,c0_epc
9fc00a18:	16570002 	bne	s2,s7,9fc00a24 <inst_error>
9fc00a1c:	00000000 	nop
9fc00a20:	26730001 	addiu	s3,s3,1

9fc00a24 <inst_error>:
9fc00a24:	00104e00 	sll	t1,s0,0x18
9fc00a28:	01334025 	or	t0,t1,s3
9fc00a2c:	ae280000 	sw	t0,0(s1)
9fc00a30:	03e00008 	jr	ra
9fc00a34:	00000000 	nop
9fc00a38:	00000000 	nop
9fc00a3c:	00000000 	nop

9fc00a40 <n70_break_ex_test>:
9fc00a40:	26100001 	addiu	s0,s0,1
9fc00a44:	3c08800d 	lui	t0,0x800d
9fc00a48:	24120002 	li	s2,2
9fc00a4c:	ad120000 	sw	s2,0(t0)
9fc00a50:	40805800 	mtc0	zero,$11
9fc00a54:	3c170040 	lui	s7,0x40
9fc00a58:	40976000 	mtc0	s7,c0_sr
9fc00a5c:	00000000 	nop
9fc00a60:	3c170002 	lui	s7,0x2
9fc00a64:	3c149fc0 	lui	s4,0x9fc0
9fc00a68:	26940a6c 	addiu	s4,s4,2668

9fc00a6c <break_pc1>:
9fc00a6c:	0000000d 	break
9fc00a70:	1657003c 	bne	s2,s7,9fc00b64 <inst_error>
9fc00a74:	00000000 	nop
9fc00a78:	24120002 	li	s2,2
9fc00a7c:	3c149fc0 	lui	s4,0x9fc0
9fc00a80:	26940a8c 	addiu	s4,s4,2700
9fc00a84:	ad080004 	sw	t0,4(t0)
9fc00a88:	ad140004 	sw	s4,4(t0)

9fc00a8c <break_pc2>:
9fc00a8c:	0000000d 	break
9fc00a90:	ad140000 	sw	s4,0(t0)
9fc00a94:	8d090004 	lw	t1,4(t0)
9fc00a98:	15340032 	bne	t1,s4,9fc00b64 <inst_error>
9fc00a9c:	00000000 	nop
9fc00aa0:	16570030 	bne	s2,s7,9fc00b64 <inst_error>
9fc00aa4:	00000000 	nop
9fc00aa8:	24120002 	li	s2,2
9fc00aac:	ad120000 	sw	s2,0(t0)
9fc00ab0:	24120002 	li	s2,2
9fc00ab4:	3c149fc0 	lui	s4,0x9fc0
9fc00ab8:	26940ac4 	addiu	s4,s4,2756
9fc00abc:	01000011 	mthi	t0
9fc00ac0:	0110001b 	divu	zero,t0,s0

9fc00ac4 <break_pc3>:
9fc00ac4:	0000000d 	break
9fc00ac8:	00004810 	mfhi	t1
9fc00acc:	11280025 	beq	t1,t0,9fc00b64 <inst_error>
9fc00ad0:	00000000 	nop
9fc00ad4:	16570023 	bne	s2,s7,9fc00b64 <inst_error>
9fc00ad8:	00000000 	nop
9fc00adc:	24120002 	li	s2,2
9fc00ae0:	3c149fc0 	lui	s4,0x9fc0
9fc00ae4:	26940ae8 	addiu	s4,s4,2792

9fc00ae8 <break_pc4>:
9fc00ae8:	0000000d 	break
9fc00aec:	0208001b 	divu	zero,s0,t0
9fc00af0:	1657001c 	bne	s2,s7,9fc00b64 <inst_error>
9fc00af4:	00000000 	nop
9fc00af8:	24120002 	li	s2,2
9fc00afc:	3c149fc0 	lui	s4,0x9fc0
9fc00b00:	26940b0c 	addiu	s4,s4,2828
9fc00b04:	01000013 	mtlo	t0
9fc00b08:	01100019 	multu	t0,s0

9fc00b0c <break_pc5>:
9fc00b0c:	0000000d 	break
9fc00b10:	00004810 	mfhi	t1
9fc00b14:	11280013 	beq	t1,t0,9fc00b64 <inst_error>
9fc00b18:	00000000 	nop
9fc00b1c:	16570011 	bne	s2,s7,9fc00b64 <inst_error>
9fc00b20:	00000000 	nop
9fc00b24:	24120002 	li	s2,2
9fc00b28:	3c149fc0 	lui	s4,0x9fc0
9fc00b2c:	26940b30 	addiu	s4,s4,2864

9fc00b30 <break_pc6>:
9fc00b30:	0000000d 	break
9fc00b34:	01120019 	multu	t0,s2
9fc00b38:	1657000a 	bne	s2,s7,9fc00b64 <inst_error>
9fc00b3c:	00000000 	nop
9fc00b40:	24120002 	li	s2,2
9fc00b44:	3c149fc0 	lui	s4,0x9fc0
9fc00b48:	26940b50 	addiu	s4,s4,2896
9fc00b4c:	40927000 	mtc0	s2,c0_epc

9fc00b50 <break_pc7>:
9fc00b50:	0000000d 	break
9fc00b54:	40887000 	mtc0	t0,c0_epc
9fc00b58:	16570002 	bne	s2,s7,9fc00b64 <inst_error>
9fc00b5c:	00000000 	nop
9fc00b60:	26730001 	addiu	s3,s3,1

9fc00b64 <inst_error>:
9fc00b64:	00104e00 	sll	t1,s0,0x18
9fc00b68:	01334025 	or	t0,t1,s3
9fc00b6c:	ae280000 	sw	t0,0(s1)
9fc00b70:	03e00008 	jr	ra
9fc00b74:	00000000 	nop
9fc00b78:	00000000 	nop
9fc00b7c:	00000000 	nop

9fc00b80 <n71_add_ov_ex_test>:
9fc00b80:	26100001 	addiu	s0,s0,1
9fc00b84:	3c08800d 	lui	t0,0x800d
9fc00b88:	24120003 	li	s2,3
9fc00b8c:	ad120000 	sw	s2,0(t0)
9fc00b90:	40805800 	mtc0	zero,$11
9fc00b94:	3c170040 	lui	s7,0x40
9fc00b98:	40976000 	mtc0	s7,c0_sr
9fc00b9c:	00000000 	nop
9fc00ba0:	3c170003 	lui	s7,0x3
9fc00ba4:	3c0273b2 	lui	v0,0x73b2
9fc00ba8:	3442cf92 	ori	v0,v0,0xcf92
9fc00bac:	3c0373b2 	lui	v1,0x73b2
9fc00bb0:	3463cf92 	ori	v1,v1,0xcf92
9fc00bb4:	3c0490a5 	lui	a0,0x90a5
9fc00bb8:	3484f39c 	ori	a0,a0,0xf39c
9fc00bbc:	3c05d421 	lui	a1,0xd421
9fc00bc0:	34a579e0 	ori	a1,a1,0x79e0
9fc00bc4:	3c149fc0 	lui	s4,0x9fc0
9fc00bc8:	26940bcc 	addiu	s4,s4,3020
9fc00bcc:	00851020 	add	v0,a0,a1
9fc00bd0:	1657007a 	bne	s2,s7,9fc00dbc <inst_error>
9fc00bd4:	00000000 	nop
9fc00bd8:	14430078 	bne	v0,v1,9fc00dbc <inst_error>
9fc00bdc:	00000000 	nop
9fc00be0:	24120003 	li	s2,3
9fc00be4:	3c021a37 	lui	v0,0x1a37
9fc00be8:	34426500 	ori	v0,v0,0x6500
9fc00bec:	3c031a37 	lui	v1,0x1a37
9fc00bf0:	34636500 	ori	v1,v1,0x6500
9fc00bf4:	3c042a3c 	lui	a0,0x2a3c
9fc00bf8:	3484a166 	ori	a0,a0,0xa166
9fc00bfc:	3c05797f 	lui	a1,0x797f
9fc00c00:	34a530b9 	ori	a1,a1,0x30b9
9fc00c04:	3c149fc0 	lui	s4,0x9fc0
9fc00c08:	26940c14 	addiu	s4,s4,3092
9fc00c0c:	ad080004 	sw	t0,4(t0)
9fc00c10:	ad140004 	sw	s4,4(t0)
9fc00c14:	00851020 	add	v0,a0,a1
9fc00c18:	ad140000 	sw	s4,0(t0)
9fc00c1c:	8d090004 	lw	t1,4(t0)
9fc00c20:	15340066 	bne	t1,s4,9fc00dbc <inst_error>
9fc00c24:	00000000 	nop
9fc00c28:	16570064 	bne	s2,s7,9fc00dbc <inst_error>
9fc00c2c:	00000000 	nop
9fc00c30:	14430062 	bne	v0,v1,9fc00dbc <inst_error>
9fc00c34:	00000000 	nop
9fc00c38:	24120003 	li	s2,3
9fc00c3c:	ad120000 	sw	s2,0(t0)
9fc00c40:	24120003 	li	s2,3
9fc00c44:	3c149fc0 	lui	s4,0x9fc0
9fc00c48:	26940c74 	addiu	s4,s4,3188
9fc00c4c:	01000011 	mthi	t0
9fc00c50:	3c0257b9 	lui	v0,0x57b9
9fc00c54:	3442e040 	ori	v0,v0,0xe040
9fc00c58:	3c0357b9 	lui	v1,0x57b9
9fc00c5c:	3463e040 	ori	v1,v1,0xe040
9fc00c60:	3c048054 	lui	a0,0x8054
9fc00c64:	348413c0 	ori	a0,a0,0x13c0
9fc00c68:	3c05dea0 	lui	a1,0xdea0
9fc00c6c:	34a5e60a 	ori	a1,a1,0xe60a
9fc00c70:	0110001b 	divu	zero,t0,s0
9fc00c74:	00851020 	add	v0,a0,a1
9fc00c78:	00004810 	mfhi	t1
9fc00c7c:	1128004f 	beq	t1,t0,9fc00dbc <inst_error>
9fc00c80:	00000000 	nop
9fc00c84:	1657004d 	bne	s2,s7,9fc00dbc <inst_error>
9fc00c88:	00000000 	nop
9fc00c8c:	1443004b 	bne	v0,v1,9fc00dbc <inst_error>
9fc00c90:	00000000 	nop
9fc00c94:	24120003 	li	s2,3
9fc00c98:	3c0289a0 	lui	v0,0x89a0
9fc00c9c:	3442a980 	ori	v0,v0,0xa980
9fc00ca0:	3c0389a0 	lui	v1,0x89a0
9fc00ca4:	3463a980 	ori	v1,v1,0xa980
9fc00ca8:	3c04474d 	lui	a0,0x474d
9fc00cac:	3484b690 	ori	a0,a0,0xb690
9fc00cb0:	3c054d4c 	lui	a1,0x4d4c
9fc00cb4:	34a5bef8 	ori	a1,a1,0xbef8
9fc00cb8:	3c149fc0 	lui	s4,0x9fc0
9fc00cbc:	26940cc0 	addiu	s4,s4,3264
9fc00cc0:	00851020 	add	v0,a0,a1
9fc00cc4:	0208001b 	divu	zero,s0,t0
9fc00cc8:	1657003c 	bne	s2,s7,9fc00dbc <inst_error>
9fc00ccc:	00000000 	nop
9fc00cd0:	1443003a 	bne	v0,v1,9fc00dbc <inst_error>
9fc00cd4:	00000000 	nop
9fc00cd8:	24120003 	li	s2,3
9fc00cdc:	3c020f29 	lui	v0,0xf29
9fc00ce0:	3442c5e0 	ori	v0,v0,0xc5e0
9fc00ce4:	3c030f29 	lui	v1,0xf29
9fc00ce8:	3463c5e0 	ori	v1,v1,0xc5e0
9fc00cec:	3c046818 	lui	a0,0x6818
9fc00cf0:	3484e272 	ori	a0,a0,0xe272
9fc00cf4:	3c056f6d 	lui	a1,0x6f6d
9fc00cf8:	34a52620 	ori	a1,a1,0x2620
9fc00cfc:	3c149fc0 	lui	s4,0x9fc0
9fc00d00:	26940d0c 	addiu	s4,s4,3340
9fc00d04:	01000013 	mtlo	t0
9fc00d08:	01100019 	multu	t0,s0
9fc00d0c:	00851020 	add	v0,a0,a1
9fc00d10:	00004810 	mfhi	t1
9fc00d14:	11280029 	beq	t1,t0,9fc00dbc <inst_error>
9fc00d18:	00000000 	nop
9fc00d1c:	16570027 	bne	s2,s7,9fc00dbc <inst_error>
9fc00d20:	00000000 	nop
9fc00d24:	14430025 	bne	v0,v1,9fc00dbc <inst_error>
9fc00d28:	00000000 	nop
9fc00d2c:	24120003 	li	s2,3
9fc00d30:	3c029f1c 	lui	v0,0x9f1c
9fc00d34:	34425870 	ori	v0,v0,0x5870
9fc00d38:	3c039f1c 	lui	v1,0x9f1c
9fc00d3c:	34635870 	ori	v1,v1,0x5870
9fc00d40:	3c04a7b7 	lui	a0,0xa7b7
9fc00d44:	3484a764 	ori	a0,a0,0xa764
9fc00d48:	3c05c2d6 	lui	a1,0xc2d6
9fc00d4c:	34a51d9c 	ori	a1,a1,0x1d9c
9fc00d50:	3c149fc0 	lui	s4,0x9fc0
9fc00d54:	26940d58 	addiu	s4,s4,3416
9fc00d58:	00851020 	add	v0,a0,a1
9fc00d5c:	01120019 	multu	t0,s2
9fc00d60:	16570016 	bne	s2,s7,9fc00dbc <inst_error>
9fc00d64:	00000000 	nop
9fc00d68:	14430014 	bne	v0,v1,9fc00dbc <inst_error>
9fc00d6c:	00000000 	nop
9fc00d70:	24120003 	li	s2,3
9fc00d74:	3c0231e6 	lui	v0,0x31e6
9fc00d78:	3442699f 	ori	v0,v0,0x699f
9fc00d7c:	3c0331e6 	lui	v1,0x31e6
9fc00d80:	3463699f 	ori	v1,v1,0x699f
9fc00d84:	3c048a78 	lui	a0,0x8a78
9fc00d88:	3484cc40 	ori	a0,a0,0xcc40
9fc00d8c:	3c05ab72 	lui	a1,0xab72
9fc00d90:	34a584da 	ori	a1,a1,0x84da
9fc00d94:	3c149fc0 	lui	s4,0x9fc0
9fc00d98:	26940da0 	addiu	s4,s4,3488
9fc00d9c:	40927000 	mtc0	s2,c0_epc
9fc00da0:	00851020 	add	v0,a0,a1
9fc00da4:	40887000 	mtc0	t0,c0_epc
9fc00da8:	16570004 	bne	s2,s7,9fc00dbc <inst_error>
9fc00dac:	00000000 	nop
9fc00db0:	14430002 	bne	v0,v1,9fc00dbc <inst_error>
9fc00db4:	00000000 	nop
9fc00db8:	26730001 	addiu	s3,s3,1

9fc00dbc <inst_error>:
9fc00dbc:	00104e00 	sll	t1,s0,0x18
9fc00dc0:	01334025 	or	t0,t1,s3
9fc00dc4:	ae280000 	sw	t0,0(s1)
9fc00dc8:	03e00008 	jr	ra
9fc00dcc:	00000000 	nop

9fc00dd0 <n72_addi_ov_ex_test>:
9fc00dd0:	26100001 	addiu	s0,s0,1
9fc00dd4:	3c08800d 	lui	t0,0x800d
9fc00dd8:	24120003 	li	s2,3
9fc00ddc:	ad120000 	sw	s2,0(t0)
9fc00de0:	40805800 	mtc0	zero,$11
9fc00de4:	3c170040 	lui	s7,0x40
9fc00de8:	40976000 	mtc0	s7,c0_sr
9fc00dec:	00000000 	nop
9fc00df0:	3c170003 	lui	s7,0x3
9fc00df4:	3c02deb0 	lui	v0,0xdeb0
9fc00df8:	34426fd0 	ori	v0,v0,0x6fd0
9fc00dfc:	3c03deb0 	lui	v1,0xdeb0
9fc00e00:	34636fd0 	ori	v1,v1,0x6fd0
9fc00e04:	24042c26 	li	a0,11302
9fc00e08:	3c047fff 	lui	a0,0x7fff
9fc00e0c:	3484f84b 	ori	a0,a0,0xf84b
9fc00e10:	3c149fc0 	lui	s4,0x9fc0
9fc00e14:	26940e18 	addiu	s4,s4,3608
9fc00e18:	20822c26 	addi	v0,a0,11302
9fc00e1c:	16570072 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00e20:	00000000 	nop
9fc00e24:	24120003 	li	s2,3
9fc00e28:	3c026c53 	lui	v0,0x6c53
9fc00e2c:	344292aa 	ori	v0,v0,0x92aa
9fc00e30:	3c036c53 	lui	v1,0x6c53
9fc00e34:	346392aa 	ori	v1,v1,0x92aa
9fc00e38:	240454b0 	li	a0,21680
9fc00e3c:	3c047fff 	lui	a0,0x7fff
9fc00e40:	3484f480 	ori	a0,a0,0xf480
9fc00e44:	3c149fc0 	lui	s4,0x9fc0
9fc00e48:	26940e54 	addiu	s4,s4,3668
9fc00e4c:	ad080004 	sw	t0,4(t0)
9fc00e50:	ad140004 	sw	s4,4(t0)
9fc00e54:	208254b0 	addi	v0,a0,21680
9fc00e58:	ad140000 	sw	s4,0(t0)
9fc00e5c:	8d090004 	lw	t1,4(t0)
9fc00e60:	15340061 	bne	t1,s4,9fc00fe8 <inst_error>
9fc00e64:	00000000 	nop
9fc00e68:	1657005f 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00e6c:	00000000 	nop
9fc00e70:	1443005d 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00e74:	00000000 	nop
9fc00e78:	24120003 	li	s2,3
9fc00e7c:	ad120000 	sw	s2,0(t0)
9fc00e80:	24120003 	li	s2,3
9fc00e84:	3c0260a7 	lui	v0,0x60a7
9fc00e88:	34421e30 	ori	v0,v0,0x1e30
9fc00e8c:	3c0360a7 	lui	v1,0x60a7
9fc00e90:	34631e30 	ori	v1,v1,0x1e30
9fc00e94:	240471db 	li	a0,29147
9fc00e98:	3c047fff 	lui	a0,0x7fff
9fc00e9c:	34849b21 	ori	a0,a0,0x9b21
9fc00ea0:	3c149fc0 	lui	s4,0x9fc0
9fc00ea4:	26940eb0 	addiu	s4,s4,3760
9fc00ea8:	01000011 	mthi	t0
9fc00eac:	0110001b 	divu	zero,t0,s0
9fc00eb0:	208271db 	addi	v0,a0,29147
9fc00eb4:	00004810 	mfhi	t1
9fc00eb8:	1128004b 	beq	t1,t0,9fc00fe8 <inst_error>
9fc00ebc:	00000000 	nop
9fc00ec0:	16570049 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00ec4:	00000000 	nop
9fc00ec8:	14430047 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00ecc:	00000000 	nop
9fc00ed0:	24120003 	li	s2,3
9fc00ed4:	3c02e607 	lui	v0,0xe607
9fc00ed8:	34425700 	ori	v0,v0,0x5700
9fc00edc:	3c03e607 	lui	v1,0xe607
9fc00ee0:	34635700 	ori	v1,v1,0x5700
9fc00ee4:	3404be07 	li	a0,0xbe07
9fc00ee8:	3c048000 	lui	a0,0x8000
9fc00eec:	34843a57 	ori	a0,a0,0x3a57
9fc00ef0:	3c149fc0 	lui	s4,0x9fc0
9fc00ef4:	26940ef8 	addiu	s4,s4,3832
9fc00ef8:	2082be07 	addi	v0,a0,-16889
9fc00efc:	0208001b 	divu	zero,s0,t0
9fc00f00:	16570039 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00f04:	00000000 	nop
9fc00f08:	14430037 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00f0c:	00000000 	nop
9fc00f10:	24120003 	li	s2,3
9fc00f14:	3c028f7e 	lui	v0,0x8f7e
9fc00f18:	3442e6c0 	ori	v0,v0,0xe6c0
9fc00f1c:	3c038f7e 	lui	v1,0x8f7e
9fc00f20:	3463e6c0 	ori	v1,v1,0xe6c0
9fc00f24:	3404845d 	li	a0,0x845d
9fc00f28:	3c048000 	lui	a0,0x8000
9fc00f2c:	34842c93 	ori	a0,a0,0x2c93
9fc00f30:	3c149fc0 	lui	s4,0x9fc0
9fc00f34:	26940f40 	addiu	s4,s4,3904
9fc00f38:	01000013 	mtlo	t0
9fc00f3c:	01100019 	multu	t0,s0
9fc00f40:	2082845d 	addi	v0,a0,-31651
9fc00f44:	00004810 	mfhi	t1
9fc00f48:	11280027 	beq	t1,t0,9fc00fe8 <inst_error>
9fc00f4c:	00000000 	nop
9fc00f50:	16570025 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00f54:	00000000 	nop
9fc00f58:	14430023 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00f5c:	00000000 	nop
9fc00f60:	24120003 	li	s2,3
9fc00f64:	3c02bd3e 	lui	v0,0xbd3e
9fc00f68:	3442a700 	ori	v0,v0,0xa700
9fc00f6c:	3c03bd3e 	lui	v1,0xbd3e
9fc00f70:	3463a700 	ori	v1,v1,0xa700
9fc00f74:	340481f4 	li	a0,0x81f4
9fc00f78:	3c048000 	lui	a0,0x8000
9fc00f7c:	34844016 	ori	a0,a0,0x4016
9fc00f80:	3c149fc0 	lui	s4,0x9fc0
9fc00f84:	26940f88 	addiu	s4,s4,3976
9fc00f88:	208281f4 	addi	v0,a0,-32268
9fc00f8c:	01120019 	multu	t0,s2
9fc00f90:	16570015 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00f94:	00000000 	nop
9fc00f98:	14430013 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00f9c:	00000000 	nop
9fc00fa0:	24120003 	li	s2,3
9fc00fa4:	3c020615 	lui	v0,0x615
9fc00fa8:	34422570 	ori	v0,v0,0x2570
9fc00fac:	3c030615 	lui	v1,0x615
9fc00fb0:	34632570 	ori	v1,v1,0x2570
9fc00fb4:	3404baa6 	li	a0,0xbaa6
9fc00fb8:	3c048000 	lui	a0,0x8000
9fc00fbc:	34843510 	ori	a0,a0,0x3510
9fc00fc0:	3c149fc0 	lui	s4,0x9fc0
9fc00fc4:	26940fcc 	addiu	s4,s4,4044
9fc00fc8:	40927000 	mtc0	s2,c0_epc
9fc00fcc:	2082baa6 	addi	v0,a0,-17754
9fc00fd0:	40887000 	mtc0	t0,c0_epc
9fc00fd4:	16570004 	bne	s2,s7,9fc00fe8 <inst_error>
9fc00fd8:	00000000 	nop
9fc00fdc:	14430002 	bne	v0,v1,9fc00fe8 <inst_error>
9fc00fe0:	00000000 	nop
9fc00fe4:	26730001 	addiu	s3,s3,1

9fc00fe8 <inst_error>:
9fc00fe8:	00104e00 	sll	t1,s0,0x18
9fc00fec:	01334025 	or	t0,t1,s3
9fc00ff0:	ae280000 	sw	t0,0(s1)
9fc00ff4:	03e00008 	jr	ra
9fc00ff8:	00000000 	nop
9fc00ffc:	00000000 	nop

9fc01000 <n73_sub_ov_ex_test>:
9fc01000:	26100001 	addiu	s0,s0,1
9fc01004:	3c08800d 	lui	t0,0x800d
9fc01008:	24120003 	li	s2,3
9fc0100c:	ad120000 	sw	s2,0(t0)
9fc01010:	40805800 	mtc0	zero,$11
9fc01014:	3c170040 	lui	s7,0x40
9fc01018:	40976000 	mtc0	s7,c0_sr
9fc0101c:	00000000 	nop
9fc01020:	3c170003 	lui	s7,0x3
9fc01024:	3c023f06 	lui	v0,0x3f06
9fc01028:	344237b6 	ori	v0,v0,0x37b6
9fc0102c:	3c033f06 	lui	v1,0x3f06
9fc01030:	346337b6 	ori	v1,v1,0x37b6
9fc01034:	3c0463d3 	lui	a0,0x63d3
9fc01038:	3484fd1e 	ori	a0,a0,0xfd1e
9fc0103c:	3c05d037 	lui	a1,0xd037
9fc01040:	34a58bea 	ori	a1,a1,0x8bea
9fc01044:	3c149fc0 	lui	s4,0x9fc0
9fc01048:	2694104c 	addiu	s4,s4,4172
9fc0104c:	00851022 	sub	v0,a0,a1
9fc01050:	1657007a 	bne	s2,s7,9fc0123c <inst_error>
9fc01054:	00000000 	nop
9fc01058:	14430078 	bne	v0,v1,9fc0123c <inst_error>
9fc0105c:	00000000 	nop
9fc01060:	24120003 	li	s2,3
9fc01064:	3c028754 	lui	v0,0x8754
9fc01068:	3442eb0d 	ori	v0,v0,0xeb0d
9fc0106c:	3c038754 	lui	v1,0x8754
9fc01070:	3463eb0d 	ori	v1,v1,0xeb0d
9fc01074:	3c046f8c 	lui	a0,0x6f8c
9fc01078:	34841169 	ori	a0,a0,0x1169
9fc0107c:	3c059edd 	lui	a1,0x9edd
9fc01080:	34a5bba4 	ori	a1,a1,0xbba4
9fc01084:	3c149fc0 	lui	s4,0x9fc0
9fc01088:	26941094 	addiu	s4,s4,4244
9fc0108c:	ad080004 	sw	t0,4(t0)
9fc01090:	ad140004 	sw	s4,4(t0)
9fc01094:	00851022 	sub	v0,a0,a1
9fc01098:	ad140000 	sw	s4,0(t0)
9fc0109c:	8d090004 	lw	t1,4(t0)
9fc010a0:	15340066 	bne	t1,s4,9fc0123c <inst_error>
9fc010a4:	00000000 	nop
9fc010a8:	16570064 	bne	s2,s7,9fc0123c <inst_error>
9fc010ac:	00000000 	nop
9fc010b0:	14430062 	bne	v0,v1,9fc0123c <inst_error>
9fc010b4:	00000000 	nop
9fc010b8:	24120003 	li	s2,3
9fc010bc:	ad120000 	sw	s2,0(t0)
9fc010c0:	24120003 	li	s2,3
9fc010c4:	3c02f4e0 	lui	v0,0xf4e0
9fc010c8:	34421aa8 	ori	v0,v0,0x1aa8
9fc010cc:	3c03f4e0 	lui	v1,0xf4e0
9fc010d0:	34631aa8 	ori	v1,v1,0x1aa8
9fc010d4:	3c04734a 	lui	a0,0x734a
9fc010d8:	3484367f 	ori	a0,a0,0x367f
9fc010dc:	3c05e173 	lui	a1,0xe173
9fc010e0:	34a554f8 	ori	a1,a1,0x54f8
9fc010e4:	3c149fc0 	lui	s4,0x9fc0
9fc010e8:	269410f4 	addiu	s4,s4,4340
9fc010ec:	01000011 	mthi	t0
9fc010f0:	0110001b 	divu	zero,t0,s0
9fc010f4:	00851022 	sub	v0,a0,a1
9fc010f8:	00004810 	mfhi	t1
9fc010fc:	1128004f 	beq	t1,t0,9fc0123c <inst_error>
9fc01100:	00000000 	nop
9fc01104:	1657004d 	bne	s2,s7,9fc0123c <inst_error>
9fc01108:	00000000 	nop
9fc0110c:	1443004b 	bne	v0,v1,9fc0123c <inst_error>
9fc01110:	00000000 	nop
9fc01114:	24120003 	li	s2,3
9fc01118:	3c02dc37 	lui	v0,0xdc37
9fc0111c:	34423c00 	ori	v0,v0,0x3c00
9fc01120:	3c03dc37 	lui	v1,0xdc37
9fc01124:	34633c00 	ori	v1,v1,0x3c00
9fc01128:	3c0421cc 	lui	a0,0x21cc
9fc0112c:	3484bee8 	ori	a0,a0,0xbee8
9fc01130:	3c059a01 	lui	a1,0x9a01
9fc01134:	34a5fac4 	ori	a1,a1,0xfac4
9fc01138:	3c149fc0 	lui	s4,0x9fc0
9fc0113c:	26941140 	addiu	s4,s4,4416
9fc01140:	00851022 	sub	v0,a0,a1
9fc01144:	0208001b 	divu	zero,s0,t0
9fc01148:	1657003c 	bne	s2,s7,9fc0123c <inst_error>
9fc0114c:	00000000 	nop
9fc01150:	1443003a 	bne	v0,v1,9fc0123c <inst_error>
9fc01154:	00000000 	nop
9fc01158:	24120003 	li	s2,3
9fc0115c:	3c02b226 	lui	v0,0xb226
9fc01160:	3442ec94 	ori	v0,v0,0xec94
9fc01164:	3c03b226 	lui	v1,0xb226
9fc01168:	3463ec94 	ori	v1,v1,0xec94
9fc0116c:	3c04b196 	lui	a0,0xb196
9fc01170:	3484dd00 	ori	a0,a0,0xdd00
9fc01174:	3c057dfd 	lui	a1,0x7dfd
9fc01178:	34a59ab0 	ori	a1,a1,0x9ab0
9fc0117c:	3c149fc0 	lui	s4,0x9fc0
9fc01180:	2694118c 	addiu	s4,s4,4492
9fc01184:	01000013 	mtlo	t0
9fc01188:	01100019 	multu	t0,s0
9fc0118c:	00851022 	sub	v0,a0,a1
9fc01190:	00004810 	mfhi	t1
9fc01194:	11280029 	beq	t1,t0,9fc0123c <inst_error>
9fc01198:	00000000 	nop
9fc0119c:	16570027 	bne	s2,s7,9fc0123c <inst_error>
9fc011a0:	00000000 	nop
9fc011a4:	14430025 	bne	v0,v1,9fc0123c <inst_error>
9fc011a8:	00000000 	nop
9fc011ac:	24120003 	li	s2,3
9fc011b0:	3c021625 	lui	v0,0x1625
9fc011b4:	3442bcc8 	ori	v0,v0,0xbcc8
9fc011b8:	3c031625 	lui	v1,0x1625
9fc011bc:	3463bcc8 	ori	v1,v1,0xbcc8
9fc011c0:	3c04b53c 	lui	a0,0xb53c
9fc011c4:	3484d464 	ori	a0,a0,0xd464
9fc011c8:	3c05421d 	lui	a1,0x421d
9fc011cc:	34a5020a 	ori	a1,a1,0x20a
9fc011d0:	3c149fc0 	lui	s4,0x9fc0
9fc011d4:	269411d8 	addiu	s4,s4,4568
9fc011d8:	00851022 	sub	v0,a0,a1
9fc011dc:	01120019 	multu	t0,s2
9fc011e0:	16570016 	bne	s2,s7,9fc0123c <inst_error>
9fc011e4:	00000000 	nop
9fc011e8:	14430014 	bne	v0,v1,9fc0123c <inst_error>
9fc011ec:	00000000 	nop
9fc011f0:	24120003 	li	s2,3
9fc011f4:	3c029f76 	lui	v0,0x9f76
9fc011f8:	34427750 	ori	v0,v0,0x7750
9fc011fc:	3c039f76 	lui	v1,0x9f76
9fc01200:	34637750 	ori	v1,v1,0x7750
9fc01204:	3c047041 	lui	a0,0x7041
9fc01208:	34840c7a 	ori	a0,a0,0xc7a
9fc0120c:	3c058ddc 	lui	a1,0x8ddc
9fc01210:	34a520c0 	ori	a1,a1,0x20c0
9fc01214:	3c149fc0 	lui	s4,0x9fc0
9fc01218:	26941220 	addiu	s4,s4,4640
9fc0121c:	40927000 	mtc0	s2,c0_epc
9fc01220:	00851022 	sub	v0,a0,a1
9fc01224:	40887000 	mtc0	t0,c0_epc
9fc01228:	16570004 	bne	s2,s7,9fc0123c <inst_error>
9fc0122c:	00000000 	nop
9fc01230:	14430002 	bne	v0,v1,9fc0123c <inst_error>
9fc01234:	00000000 	nop
9fc01238:	26730001 	addiu	s3,s3,1

9fc0123c <inst_error>:
9fc0123c:	00104e00 	sll	t1,s0,0x18
9fc01240:	01334025 	or	t0,t1,s3
9fc01244:	ae280000 	sw	t0,0(s1)
9fc01248:	03e00008 	jr	ra
9fc0124c:	00000000 	nop

9fc01250 <n74_lw_adel_ex_test>:
9fc01250:	26100001 	addiu	s0,s0,1
9fc01254:	3c08800d 	lui	t0,0x800d
9fc01258:	24120004 	li	s2,4
9fc0125c:	ad120000 	sw	s2,0(t0)
9fc01260:	40805800 	mtc0	zero,$11
9fc01264:	3c170040 	lui	s7,0x40
9fc01268:	40976000 	mtc0	s7,c0_sr
9fc0126c:	00000000 	nop
9fc01270:	3c170004 	lui	s7,0x4
9fc01274:	3c023958 	lui	v0,0x3958
9fc01278:	3442f252 	ori	v0,v0,0xf252
9fc0127c:	3c033958 	lui	v1,0x3958
9fc01280:	3463f252 	ori	v1,v1,0xf252
9fc01284:	3c04800d 	lui	a0,0x800d
9fc01288:	3484759c 	ori	a0,a0,0x759c
9fc0128c:	3c05b27f 	lui	a1,0xb27f
9fc01290:	34a59788 	ori	a1,a1,0x9788
9fc01294:	24878845 	addiu	a3,a0,-30651
9fc01298:	3c010001 	lui	at,0x1
9fc0129c:	00240821 	addu	at,at,a0
9fc012a0:	ac258844 	sw	a1,-30652(at)
9fc012a4:	3c149fc0 	lui	s4,0x9fc0
9fc012a8:	269412ac 	addiu	s4,s4,4780
9fc012ac:	8c828845 	lw	v0,-30651(a0)
9fc012b0:	1657009f 	bne	s2,s7,9fc01530 <inst_error>
9fc012b4:	00000000 	nop
9fc012b8:	1443009d 	bne	v0,v1,9fc01530 <inst_error>
9fc012bc:	00000000 	nop
9fc012c0:	40164000 	mfc0	s6,c0_badvaddr
9fc012c4:	14f6009a 	bne	a3,s6,9fc01530 <inst_error>
9fc012c8:	00000000 	nop
9fc012cc:	24120004 	li	s2,4
9fc012d0:	3c02c044 	lui	v0,0xc044
9fc012d4:	34422bd0 	ori	v0,v0,0x2bd0
9fc012d8:	3c03c044 	lui	v1,0xc044
9fc012dc:	34632bd0 	ori	v1,v1,0x2bd0
9fc012e0:	3c04800d 	lui	a0,0x800d
9fc012e4:	34847748 	ori	a0,a0,0x7748
9fc012e8:	3c053101 	lui	a1,0x3101
9fc012ec:	34a5bbec 	ori	a1,a1,0xbbec
9fc012f0:	24870ea2 	addiu	a3,a0,3746
9fc012f4:	ac850ea0 	sw	a1,3744(a0)
9fc012f8:	3c149fc0 	lui	s4,0x9fc0
9fc012fc:	26941308 	addiu	s4,s4,4872
9fc01300:	ad080004 	sw	t0,4(t0)
9fc01304:	ad140004 	sw	s4,4(t0)
9fc01308:	8c820ea2 	lw	v0,3746(a0)
9fc0130c:	ad140000 	sw	s4,0(t0)
9fc01310:	8d090004 	lw	t1,4(t0)
9fc01314:	15340086 	bne	t1,s4,9fc01530 <inst_error>
9fc01318:	00000000 	nop
9fc0131c:	16570084 	bne	s2,s7,9fc01530 <inst_error>
9fc01320:	00000000 	nop
9fc01324:	14430082 	bne	v0,v1,9fc01530 <inst_error>
9fc01328:	00000000 	nop
9fc0132c:	40164000 	mfc0	s6,c0_badvaddr
9fc01330:	14f6007f 	bne	a3,s6,9fc01530 <inst_error>
9fc01334:	00000000 	nop
9fc01338:	24120004 	li	s2,4
9fc0133c:	ad120000 	sw	s2,0(t0)
9fc01340:	24120004 	li	s2,4
9fc01344:	3c026892 	lui	v0,0x6892
9fc01348:	34429b5c 	ori	v0,v0,0x9b5c
9fc0134c:	3c036892 	lui	v1,0x6892
9fc01350:	34639b5c 	ori	v1,v1,0x9b5c
9fc01354:	3c04800d 	lui	a0,0x800d
9fc01358:	348459dc 	ori	a0,a0,0x59dc
9fc0135c:	3c0594a1 	lui	a1,0x94a1
9fc01360:	34a5ade4 	ori	a1,a1,0xade4
9fc01364:	24877cee 	addiu	a3,a0,31982
9fc01368:	ac857cec 	sw	a1,31980(a0)
9fc0136c:	3c149fc0 	lui	s4,0x9fc0
9fc01370:	2694137c 	addiu	s4,s4,4988
9fc01374:	01000011 	mthi	t0
9fc01378:	0110001b 	divu	zero,t0,s0
9fc0137c:	8c827cee 	lw	v0,31982(a0)
9fc01380:	00004810 	mfhi	t1
9fc01384:	1128006a 	beq	t1,t0,9fc01530 <inst_error>
9fc01388:	00000000 	nop
9fc0138c:	16570068 	bne	s2,s7,9fc01530 <inst_error>
9fc01390:	00000000 	nop
9fc01394:	14430066 	bne	v0,v1,9fc01530 <inst_error>
9fc01398:	00000000 	nop
9fc0139c:	40164000 	mfc0	s6,c0_badvaddr
9fc013a0:	14f60063 	bne	a3,s6,9fc01530 <inst_error>
9fc013a4:	00000000 	nop
9fc013a8:	24120004 	li	s2,4
9fc013ac:	3c027423 	lui	v0,0x7423
9fc013b0:	3442d85f 	ori	v0,v0,0xd85f
9fc013b4:	3c037423 	lui	v1,0x7423
9fc013b8:	3463d85f 	ori	v1,v1,0xd85f
9fc013bc:	3c04800d 	lui	a0,0x800d
9fc013c0:	34847748 	ori	a0,a0,0x7748
9fc013c4:	3c05e2b0 	lui	a1,0xe2b0
9fc013c8:	34a5a2c0 	ori	a1,a1,0xa2c0
9fc013cc:	24874973 	addiu	a3,a0,18803
9fc013d0:	ac854970 	sw	a1,18800(a0)
9fc013d4:	3c149fc0 	lui	s4,0x9fc0
9fc013d8:	269413dc 	addiu	s4,s4,5084
9fc013dc:	8c824973 	lw	v0,18803(a0)
9fc013e0:	0208001b 	divu	zero,s0,t0
9fc013e4:	16570052 	bne	s2,s7,9fc01530 <inst_error>
9fc013e8:	00000000 	nop
9fc013ec:	14430050 	bne	v0,v1,9fc01530 <inst_error>
9fc013f0:	00000000 	nop
9fc013f4:	40164000 	mfc0	s6,c0_badvaddr
9fc013f8:	14f6004d 	bne	a3,s6,9fc01530 <inst_error>
9fc013fc:	00000000 	nop
9fc01400:	24120004 	li	s2,4
9fc01404:	3c02dd06 	lui	v0,0xdd06
9fc01408:	34424458 	ori	v0,v0,0x4458
9fc0140c:	3c03dd06 	lui	v1,0xdd06
9fc01410:	34634458 	ori	v1,v1,0x4458
9fc01414:	3c04800d 	lui	a0,0x800d
9fc01418:	34845bac 	ori	a0,a0,0x5bac
9fc0141c:	3c050f9e 	lui	a1,0xf9e
9fc01420:	34a5dafa 	ori	a1,a1,0xdafa
9fc01424:	2487003e 	addiu	a3,a0,62
9fc01428:	ac85003c 	sw	a1,60(a0)
9fc0142c:	3c149fc0 	lui	s4,0x9fc0
9fc01430:	2694143c 	addiu	s4,s4,5180
9fc01434:	01000013 	mtlo	t0
9fc01438:	01100019 	multu	t0,s0
9fc0143c:	8c82003e 	lw	v0,62(a0)
9fc01440:	00004810 	mfhi	t1
9fc01444:	1128003a 	beq	t1,t0,9fc01530 <inst_error>
9fc01448:	00000000 	nop
9fc0144c:	16570038 	bne	s2,s7,9fc01530 <inst_error>
9fc01450:	00000000 	nop
9fc01454:	14430036 	bne	v0,v1,9fc01530 <inst_error>
9fc01458:	00000000 	nop
9fc0145c:	40164000 	mfc0	s6,c0_badvaddr
9fc01460:	14f60033 	bne	a3,s6,9fc01530 <inst_error>
9fc01464:	00000000 	nop
9fc01468:	24120004 	li	s2,4
9fc0146c:	3c021514 	lui	v0,0x1514
9fc01470:	34428b6c 	ori	v0,v0,0x8b6c
9fc01474:	3c031514 	lui	v1,0x1514
9fc01478:	34638b6c 	ori	v1,v1,0x8b6c
9fc0147c:	3c04800d 	lui	a0,0x800d
9fc01480:	34840704 	ori	a0,a0,0x704
9fc01484:	3c055077 	lui	a1,0x5077
9fc01488:	34a5f320 	ori	a1,a1,0xf320
9fc0148c:	2487e53f 	addiu	a3,a0,-6849
9fc01490:	3c010001 	lui	at,0x1
9fc01494:	00240821 	addu	at,at,a0
9fc01498:	ac25e53c 	sw	a1,-6852(at)
9fc0149c:	3c149fc0 	lui	s4,0x9fc0
9fc014a0:	269414a4 	addiu	s4,s4,5284
9fc014a4:	8c82e53f 	lw	v0,-6849(a0)
9fc014a8:	01120019 	multu	t0,s2
9fc014ac:	16570020 	bne	s2,s7,9fc01530 <inst_error>
9fc014b0:	00000000 	nop
9fc014b4:	1443001e 	bne	v0,v1,9fc01530 <inst_error>
9fc014b8:	00000000 	nop
9fc014bc:	40164000 	mfc0	s6,c0_badvaddr
9fc014c0:	14f6001b 	bne	a3,s6,9fc01530 <inst_error>
9fc014c4:	00000000 	nop
9fc014c8:	24120004 	li	s2,4
9fc014cc:	3c023958 	lui	v0,0x3958
9fc014d0:	3442f252 	ori	v0,v0,0xf252
9fc014d4:	3c033958 	lui	v1,0x3958
9fc014d8:	3463f252 	ori	v1,v1,0xf252
9fc014dc:	3c04800d 	lui	a0,0x800d
9fc014e0:	3484759c 	ori	a0,a0,0x759c
9fc014e4:	3c05b27f 	lui	a1,0xb27f
9fc014e8:	34a59788 	ori	a1,a1,0x9788
9fc014ec:	24878845 	addiu	a3,a0,-30651
9fc014f0:	3c010001 	lui	at,0x1
9fc014f4:	00240821 	addu	at,at,a0
9fc014f8:	ac258844 	sw	a1,-30652(at)
9fc014fc:	3c149fc0 	lui	s4,0x9fc0
9fc01500:	26941508 	addiu	s4,s4,5384
9fc01504:	40927000 	mtc0	s2,c0_epc
9fc01508:	8c828845 	lw	v0,-30651(a0)
9fc0150c:	40887000 	mtc0	t0,c0_epc
9fc01510:	16570007 	bne	s2,s7,9fc01530 <inst_error>
9fc01514:	00000000 	nop
9fc01518:	14430005 	bne	v0,v1,9fc01530 <inst_error>
9fc0151c:	00000000 	nop
9fc01520:	40164000 	mfc0	s6,c0_badvaddr
9fc01524:	14f60002 	bne	a3,s6,9fc01530 <inst_error>
9fc01528:	00000000 	nop
9fc0152c:	26730001 	addiu	s3,s3,1

9fc01530 <inst_error>:
9fc01530:	00104e00 	sll	t1,s0,0x18
9fc01534:	01334025 	or	t0,t1,s3
9fc01538:	ae280000 	sw	t0,0(s1)
9fc0153c:	03e00008 	jr	ra
9fc01540:	00000000 	nop
9fc01544:	00000000 	nop
9fc01548:	00000000 	nop
9fc0154c:	00000000 	nop

9fc01550 <n75_lh_adel_ex_test>:
9fc01550:	26100001 	addiu	s0,s0,1
9fc01554:	3c08800d 	lui	t0,0x800d
9fc01558:	24120004 	li	s2,4
9fc0155c:	ad120000 	sw	s2,0(t0)
9fc01560:	40805800 	mtc0	zero,$11
9fc01564:	3c170040 	lui	s7,0x40
9fc01568:	40976000 	mtc0	s7,c0_sr
9fc0156c:	00000000 	nop
9fc01570:	3c170004 	lui	s7,0x4
9fc01574:	3c029325 	lui	v0,0x9325
9fc01578:	34422910 	ori	v0,v0,0x2910
9fc0157c:	3c039325 	lui	v1,0x9325
9fc01580:	34632910 	ori	v1,v1,0x2910
9fc01584:	3c04800d 	lui	a0,0x800d
9fc01588:	34841348 	ori	a0,a0,0x1348
9fc0158c:	3c050233 	lui	a1,0x233
9fc01590:	34a5e52c 	ori	a1,a1,0xe52c
9fc01594:	24879a19 	addiu	a3,a0,-26087
9fc01598:	3c010001 	lui	at,0x1
9fc0159c:	00240821 	addu	at,at,a0
9fc015a0:	ac259a18 	sw	a1,-26088(at)
9fc015a4:	3c149fc0 	lui	s4,0x9fc0
9fc015a8:	269415ac 	addiu	s4,s4,5548
9fc015ac:	84829a19 	lh	v0,-26087(a0)
9fc015b0:	165700a1 	bne	s2,s7,9fc01838 <inst_error>
9fc015b4:	00000000 	nop
9fc015b8:	1443009f 	bne	v0,v1,9fc01838 <inst_error>
9fc015bc:	00000000 	nop
9fc015c0:	40164000 	mfc0	s6,c0_badvaddr
9fc015c4:	14f6009c 	bne	a3,s6,9fc01838 <inst_error>
9fc015c8:	00000000 	nop
9fc015cc:	24120004 	li	s2,4
9fc015d0:	3c02854a 	lui	v0,0x854a
9fc015d4:	3442a680 	ori	v0,v0,0xa680
9fc015d8:	3c03854a 	lui	v1,0x854a
9fc015dc:	3463a680 	ori	v1,v1,0xa680
9fc015e0:	3c04800d 	lui	a0,0x800d
9fc015e4:	34842ca8 	ori	a0,a0,0x2ca8
9fc015e8:	3c052ba9 	lui	a1,0x2ba9
9fc015ec:	34a50e90 	ori	a1,a1,0xe90
9fc015f0:	24872577 	addiu	a3,a0,9591
9fc015f4:	ac852574 	sw	a1,9588(a0)
9fc015f8:	3c149fc0 	lui	s4,0x9fc0
9fc015fc:	26941608 	addiu	s4,s4,5640
9fc01600:	ad080004 	sw	t0,4(t0)
9fc01604:	ad140004 	sw	s4,4(t0)
9fc01608:	84822577 	lh	v0,9591(a0)
9fc0160c:	ad140000 	sw	s4,0(t0)
9fc01610:	8d090004 	lw	t1,4(t0)
9fc01614:	15340088 	bne	t1,s4,9fc01838 <inst_error>
9fc01618:	00000000 	nop
9fc0161c:	16570086 	bne	s2,s7,9fc01838 <inst_error>
9fc01620:	00000000 	nop
9fc01624:	14430084 	bne	v0,v1,9fc01838 <inst_error>
9fc01628:	00000000 	nop
9fc0162c:	40164000 	mfc0	s6,c0_badvaddr
9fc01630:	14f60081 	bne	a3,s6,9fc01838 <inst_error>
9fc01634:	00000000 	nop
9fc01638:	24120004 	li	s2,4
9fc0163c:	ad120000 	sw	s2,0(t0)
9fc01640:	24120004 	li	s2,4
9fc01644:	3c02541f 	lui	v0,0x541f
9fc01648:	34426c5c 	ori	v0,v0,0x6c5c
9fc0164c:	3c03541f 	lui	v1,0x541f
9fc01650:	34636c5c 	ori	v1,v1,0x6c5c
9fc01654:	3c04800d 	lui	a0,0x800d
9fc01658:	34841570 	ori	a0,a0,0x1570
9fc0165c:	3c059554 	lui	a1,0x9554
9fc01660:	34a5e8d4 	ori	a1,a1,0xe8d4
9fc01664:	248785e3 	addiu	a3,a0,-31261
9fc01668:	3c010001 	lui	at,0x1
9fc0166c:	00240821 	addu	at,at,a0
9fc01670:	ac2585e0 	sw	a1,-31264(at)
9fc01674:	3c149fc0 	lui	s4,0x9fc0
9fc01678:	26941684 	addiu	s4,s4,5764
9fc0167c:	01000011 	mthi	t0
9fc01680:	0110001b 	divu	zero,t0,s0
9fc01684:	848285e3 	lh	v0,-31261(a0)
9fc01688:	00004810 	mfhi	t1
9fc0168c:	1128006a 	beq	t1,t0,9fc01838 <inst_error>
9fc01690:	00000000 	nop
9fc01694:	16570068 	bne	s2,s7,9fc01838 <inst_error>
9fc01698:	00000000 	nop
9fc0169c:	14430066 	bne	v0,v1,9fc01838 <inst_error>
9fc016a0:	00000000 	nop
9fc016a4:	40164000 	mfc0	s6,c0_badvaddr
9fc016a8:	14f60063 	bne	a3,s6,9fc01838 <inst_error>
9fc016ac:	00000000 	nop
9fc016b0:	24120004 	li	s2,4
9fc016b4:	3c02224c 	lui	v0,0x224c
9fc016b8:	3442f16c 	ori	v0,v0,0xf16c
9fc016bc:	3c03224c 	lui	v1,0x224c
9fc016c0:	3463f16c 	ori	v1,v1,0xf16c
9fc016c4:	3c04800d 	lui	a0,0x800d
9fc016c8:	348469cc 	ori	a0,a0,0x69cc
9fc016cc:	3c058ef7 	lui	a1,0x8ef7
9fc016d0:	34a55a20 	ori	a1,a1,0x5a20
9fc016d4:	24878341 	addiu	a3,a0,-31935
9fc016d8:	3c010001 	lui	at,0x1
9fc016dc:	00240821 	addu	at,at,a0
9fc016e0:	ac258340 	sw	a1,-31936(at)
9fc016e4:	3c149fc0 	lui	s4,0x9fc0
9fc016e8:	269416ec 	addiu	s4,s4,5868
9fc016ec:	84828341 	lh	v0,-31935(a0)
9fc016f0:	0208001b 	divu	zero,s0,t0
9fc016f4:	16570050 	bne	s2,s7,9fc01838 <inst_error>
9fc016f8:	00000000 	nop
9fc016fc:	1443004e 	bne	v0,v1,9fc01838 <inst_error>
9fc01700:	00000000 	nop
9fc01704:	40164000 	mfc0	s6,c0_badvaddr
9fc01708:	14f6004b 	bne	a3,s6,9fc01838 <inst_error>
9fc0170c:	00000000 	nop
9fc01710:	24120004 	li	s2,4
9fc01714:	3c02516f 	lui	v0,0x516f
9fc01718:	34425fa2 	ori	v0,v0,0x5fa2
9fc0171c:	3c03516f 	lui	v1,0x516f
9fc01720:	34635fa2 	ori	v1,v1,0x5fa2
9fc01724:	3c04800d 	lui	a0,0x800d
9fc01728:	34840438 	ori	a0,a0,0x438
9fc0172c:	3c05cb7e 	lui	a1,0xcb7e
9fc01730:	34a5f7d5 	ori	a1,a1,0xf7d5
9fc01734:	2487db3b 	addiu	a3,a0,-9413
9fc01738:	3c010001 	lui	at,0x1
9fc0173c:	00240821 	addu	at,at,a0
9fc01740:	ac25db38 	sw	a1,-9416(at)
9fc01744:	3c149fc0 	lui	s4,0x9fc0
9fc01748:	26941754 	addiu	s4,s4,5972
9fc0174c:	01000013 	mtlo	t0
9fc01750:	01100019 	multu	t0,s0
9fc01754:	8482db3b 	lh	v0,-9413(a0)
9fc01758:	00004810 	mfhi	t1
9fc0175c:	11280036 	beq	t1,t0,9fc01838 <inst_error>
9fc01760:	00000000 	nop
9fc01764:	16570034 	bne	s2,s7,9fc01838 <inst_error>
9fc01768:	00000000 	nop
9fc0176c:	14430032 	bne	v0,v1,9fc01838 <inst_error>
9fc01770:	00000000 	nop
9fc01774:	40164000 	mfc0	s6,c0_badvaddr
9fc01778:	14f6002f 	bne	a3,s6,9fc01838 <inst_error>
9fc0177c:	00000000 	nop
9fc01780:	24120004 	li	s2,4
9fc01784:	3c023537 	lui	v0,0x3537
9fc01788:	3442cc30 	ori	v0,v0,0xcc30
9fc0178c:	3c033537 	lui	v1,0x3537
9fc01790:	3463cc30 	ori	v1,v1,0xcc30
9fc01794:	3c04800d 	lui	a0,0x800d
9fc01798:	34842c20 	ori	a0,a0,0x2c20
9fc0179c:	3c055118 	lui	a1,0x5118
9fc017a0:	34a5e811 	ori	a1,a1,0xe811
9fc017a4:	24871915 	addiu	a3,a0,6421
9fc017a8:	ac851914 	sw	a1,6420(a0)
9fc017ac:	3c149fc0 	lui	s4,0x9fc0
9fc017b0:	269417b4 	addiu	s4,s4,6068
9fc017b4:	84821915 	lh	v0,6421(a0)
9fc017b8:	01120019 	multu	t0,s2
9fc017bc:	1657001e 	bne	s2,s7,9fc01838 <inst_error>
9fc017c0:	00000000 	nop
9fc017c4:	1443001c 	bne	v0,v1,9fc01838 <inst_error>
9fc017c8:	00000000 	nop
9fc017cc:	40164000 	mfc0	s6,c0_badvaddr
9fc017d0:	14f60019 	bne	a3,s6,9fc01838 <inst_error>
9fc017d4:	00000000 	nop
9fc017d8:	24120004 	li	s2,4
9fc017dc:	3c0263c6 	lui	v0,0x63c6
9fc017e0:	3442e7af 	ori	v0,v0,0xe7af
9fc017e4:	3c0363c6 	lui	v1,0x63c6
9fc017e8:	3463e7af 	ori	v1,v1,0xe7af
9fc017ec:	3c04800d 	lui	a0,0x800d
9fc017f0:	34843d5c 	ori	a0,a0,0x3d5c
9fc017f4:	3c05d802 	lui	a1,0xd802
9fc017f8:	34a541b4 	ori	a1,a1,0x41b4
9fc017fc:	248732e9 	addiu	a3,a0,13033
9fc01800:	ac8532e8 	sw	a1,13032(a0)
9fc01804:	3c149fc0 	lui	s4,0x9fc0
9fc01808:	26941810 	addiu	s4,s4,6160
9fc0180c:	40927000 	mtc0	s2,c0_epc
9fc01810:	848232e9 	lh	v0,13033(a0)
9fc01814:	40887000 	mtc0	t0,c0_epc
9fc01818:	16570007 	bne	s2,s7,9fc01838 <inst_error>
9fc0181c:	00000000 	nop
9fc01820:	14430005 	bne	v0,v1,9fc01838 <inst_error>
9fc01824:	00000000 	nop
9fc01828:	40164000 	mfc0	s6,c0_badvaddr
9fc0182c:	14f60002 	bne	a3,s6,9fc01838 <inst_error>
9fc01830:	00000000 	nop
9fc01834:	26730001 	addiu	s3,s3,1

9fc01838 <inst_error>:
9fc01838:	00104e00 	sll	t1,s0,0x18
9fc0183c:	01334025 	or	t0,t1,s3
9fc01840:	ae280000 	sw	t0,0(s1)
9fc01844:	03e00008 	jr	ra
9fc01848:	00000000 	nop
9fc0184c:	00000000 	nop

9fc01850 <n76_lhu_adel_ex_test>:
9fc01850:	26100001 	addiu	s0,s0,1
9fc01854:	3c08800d 	lui	t0,0x800d
9fc01858:	24120004 	li	s2,4
9fc0185c:	ad120000 	sw	s2,0(t0)
9fc01860:	40805800 	mtc0	zero,$11
9fc01864:	3c170040 	lui	s7,0x40
9fc01868:	40976000 	mtc0	s7,c0_sr
9fc0186c:	00000000 	nop
9fc01870:	3c170004 	lui	s7,0x4
9fc01874:	3c028003 	lui	v0,0x8003
9fc01878:	34420514 	ori	v0,v0,0x514
9fc0187c:	3c038003 	lui	v1,0x8003
9fc01880:	34630514 	ori	v1,v1,0x514
9fc01884:	3c04800d 	lui	a0,0x800d
9fc01888:	34840514 	ori	a0,a0,0x514
9fc0188c:	3c050dc5 	lui	a1,0xdc5
9fc01890:	34a5e542 	ori	a1,a1,0xe542
9fc01894:	2487b239 	addiu	a3,a0,-19911
9fc01898:	3c010001 	lui	at,0x1
9fc0189c:	00240821 	addu	at,at,a0
9fc018a0:	ac25b238 	sw	a1,-19912(at)
9fc018a4:	3c149fc0 	lui	s4,0x9fc0
9fc018a8:	269418ac 	addiu	s4,s4,6316
9fc018ac:	9482b239 	lhu	v0,-19911(a0)
9fc018b0:	1657009f 	bne	s2,s7,9fc01b30 <inst_error>
9fc018b4:	00000000 	nop
9fc018b8:	1443009d 	bne	v0,v1,9fc01b30 <inst_error>
9fc018bc:	00000000 	nop
9fc018c0:	40164000 	mfc0	s6,c0_badvaddr
9fc018c4:	14f6009a 	bne	a3,s6,9fc01b30 <inst_error>
9fc018c8:	00000000 	nop
9fc018cc:	24120004 	li	s2,4
9fc018d0:	3c028003 	lui	v0,0x8003
9fc018d4:	34422fbc 	ori	v0,v0,0x2fbc
9fc018d8:	3c038003 	lui	v1,0x8003
9fc018dc:	34632fbc 	ori	v1,v1,0x2fbc
9fc018e0:	3c04800d 	lui	a0,0x800d
9fc018e4:	34842fbc 	ori	a0,a0,0x2fbc
9fc018e8:	3c05f781 	lui	a1,0xf781
9fc018ec:	34a52ae2 	ori	a1,a1,0x2ae2
9fc018f0:	24879c35 	addiu	a3,a0,-25547
9fc018f4:	3c010001 	lui	at,0x1
9fc018f8:	00240821 	addu	at,at,a0
9fc018fc:	ac259c34 	sw	a1,-25548(at)
9fc01900:	3c149fc0 	lui	s4,0x9fc0
9fc01904:	26941910 	addiu	s4,s4,6416
9fc01908:	ad080004 	sw	t0,4(t0)
9fc0190c:	ad140004 	sw	s4,4(t0)
9fc01910:	94829c35 	lhu	v0,-25547(a0)
9fc01914:	ad140000 	sw	s4,0(t0)
9fc01918:	8d090004 	lw	t1,4(t0)
9fc0191c:	15340084 	bne	t1,s4,9fc01b30 <inst_error>
9fc01920:	00000000 	nop
9fc01924:	16570082 	bne	s2,s7,9fc01b30 <inst_error>
9fc01928:	00000000 	nop
9fc0192c:	14430080 	bne	v0,v1,9fc01b30 <inst_error>
9fc01930:	00000000 	nop
9fc01934:	40164000 	mfc0	s6,c0_badvaddr
9fc01938:	14f6007d 	bne	a3,s6,9fc01b30 <inst_error>
9fc0193c:	00000000 	nop
9fc01940:	24120004 	li	s2,4
9fc01944:	ad120000 	sw	s2,0(t0)
9fc01948:	24120004 	li	s2,4
9fc0194c:	3c029134 	lui	v0,0x9134
9fc01950:	3442bbd0 	ori	v0,v0,0xbbd0
9fc01954:	3c039134 	lui	v1,0x9134
9fc01958:	3463bbd0 	ori	v1,v1,0xbbd0
9fc0195c:	3c04800d 	lui	a0,0x800d
9fc01960:	34847fa6 	ori	a0,a0,0x7fa6
9fc01964:	3c059ef6 	lui	a1,0x9ef6
9fc01968:	34a55910 	ori	a1,a1,0x5910
9fc0196c:	2487537f 	addiu	a3,a0,21375
9fc01970:	ac85537e 	sw	a1,21374(a0)
9fc01974:	3c149fc0 	lui	s4,0x9fc0
9fc01978:	26941984 	addiu	s4,s4,6532
9fc0197c:	01000011 	mthi	t0
9fc01980:	0110001b 	divu	zero,t0,s0
9fc01984:	9482537f 	lhu	v0,21375(a0)
9fc01988:	00004810 	mfhi	t1
9fc0198c:	11280068 	beq	t1,t0,9fc01b30 <inst_error>
9fc01990:	00000000 	nop
9fc01994:	16570066 	bne	s2,s7,9fc01b30 <inst_error>
9fc01998:	00000000 	nop
9fc0199c:	14430064 	bne	v0,v1,9fc01b30 <inst_error>
9fc019a0:	00000000 	nop
9fc019a4:	40164000 	mfc0	s6,c0_badvaddr
9fc019a8:	14f60061 	bne	a3,s6,9fc01b30 <inst_error>
9fc019ac:	00000000 	nop
9fc019b0:	24120004 	li	s2,4
9fc019b4:	3c02fe29 	lui	v0,0xfe29
9fc019b8:	3442b934 	ori	v0,v0,0xb934
9fc019bc:	3c03fe29 	lui	v1,0xfe29
9fc019c0:	3463b934 	ori	v1,v1,0xb934
9fc019c4:	3c04800d 	lui	a0,0x800d
9fc019c8:	3484628c 	ori	a0,a0,0x628c
9fc019cc:	3c05a15a 	lui	a1,0xa15a
9fc019d0:	34a50146 	ori	a1,a1,0x146
9fc019d4:	248756cf 	addiu	a3,a0,22223
9fc019d8:	ac8556cc 	sw	a1,22220(a0)
9fc019dc:	3c149fc0 	lui	s4,0x9fc0
9fc019e0:	269419e4 	addiu	s4,s4,6628
9fc019e4:	948256cf 	lhu	v0,22223(a0)
9fc019e8:	0208001b 	divu	zero,s0,t0
9fc019ec:	16570050 	bne	s2,s7,9fc01b30 <inst_error>
9fc019f0:	00000000 	nop
9fc019f4:	1443004e 	bne	v0,v1,9fc01b30 <inst_error>
9fc019f8:	00000000 	nop
9fc019fc:	40164000 	mfc0	s6,c0_badvaddr
9fc01a00:	14f6004b 	bne	a3,s6,9fc01b30 <inst_error>
9fc01a04:	00000000 	nop
9fc01a08:	24120004 	li	s2,4
9fc01a0c:	3c028003 	lui	v0,0x8003
9fc01a10:	344224b4 	ori	v0,v0,0x24b4
9fc01a14:	3c038003 	lui	v1,0x8003
9fc01a18:	346324b4 	ori	v1,v1,0x24b4
9fc01a1c:	3c04800d 	lui	a0,0x800d
9fc01a20:	348424b4 	ori	a0,a0,0x24b4
9fc01a24:	3c05566d 	lui	a1,0x566d
9fc01a28:	34a5adc2 	ori	a1,a1,0xadc2
9fc01a2c:	2487d5c3 	addiu	a3,a0,-10813
9fc01a30:	3c010001 	lui	at,0x1
9fc01a34:	00240821 	addu	at,at,a0
9fc01a38:	ac25d5c0 	sw	a1,-10816(at)
9fc01a3c:	3c149fc0 	lui	s4,0x9fc0
9fc01a40:	26941a4c 	addiu	s4,s4,6732
9fc01a44:	01000013 	mtlo	t0
9fc01a48:	01100019 	multu	t0,s0
9fc01a4c:	9482d5c3 	lhu	v0,-10813(a0)
9fc01a50:	00004810 	mfhi	t1
9fc01a54:	11280036 	beq	t1,t0,9fc01b30 <inst_error>
9fc01a58:	00000000 	nop
9fc01a5c:	16570034 	bne	s2,s7,9fc01b30 <inst_error>
9fc01a60:	00000000 	nop
9fc01a64:	14430032 	bne	v0,v1,9fc01b30 <inst_error>
9fc01a68:	00000000 	nop
9fc01a6c:	40164000 	mfc0	s6,c0_badvaddr
9fc01a70:	14f6002f 	bne	a3,s6,9fc01b30 <inst_error>
9fc01a74:	00000000 	nop
9fc01a78:	24120004 	li	s2,4
9fc01a7c:	3c0252b9 	lui	v0,0x52b9
9fc01a80:	3442c98a 	ori	v0,v0,0xc98a
9fc01a84:	3c0352b9 	lui	v1,0x52b9
9fc01a88:	3463c98a 	ori	v1,v1,0xc98a
9fc01a8c:	3c04800d 	lui	a0,0x800d
9fc01a90:	34846024 	ori	a0,a0,0x6024
9fc01a94:	3c05038f 	lui	a1,0x38f
9fc01a98:	34a518a2 	ori	a1,a1,0x18a2
9fc01a9c:	24870765 	addiu	a3,a0,1893
9fc01aa0:	ac850764 	sw	a1,1892(a0)
9fc01aa4:	3c149fc0 	lui	s4,0x9fc0
9fc01aa8:	26941aac 	addiu	s4,s4,6828
9fc01aac:	94820765 	lhu	v0,1893(a0)
9fc01ab0:	01120019 	multu	t0,s2
9fc01ab4:	1657001e 	bne	s2,s7,9fc01b30 <inst_error>
9fc01ab8:	00000000 	nop
9fc01abc:	1443001c 	bne	v0,v1,9fc01b30 <inst_error>
9fc01ac0:	00000000 	nop
9fc01ac4:	40164000 	mfc0	s6,c0_badvaddr
9fc01ac8:	14f60019 	bne	a3,s6,9fc01b30 <inst_error>
9fc01acc:	00000000 	nop
9fc01ad0:	24120004 	li	s2,4
9fc01ad4:	3c022b77 	lui	v0,0x2b77
9fc01ad8:	34421238 	ori	v0,v0,0x1238
9fc01adc:	3c032b77 	lui	v1,0x2b77
9fc01ae0:	34631238 	ori	v1,v1,0x1238
9fc01ae4:	3c04800d 	lui	a0,0x800d
9fc01ae8:	34848294 	ori	a0,a0,0x8294
9fc01aec:	3c05cd7a 	lui	a1,0xcd7a
9fc01af0:	34a5b654 	ori	a1,a1,0xb654
9fc01af4:	248779f5 	addiu	a3,a0,31221
9fc01af8:	ac8579f4 	sw	a1,31220(a0)
9fc01afc:	3c149fc0 	lui	s4,0x9fc0
9fc01b00:	26941b08 	addiu	s4,s4,6920
9fc01b04:	40927000 	mtc0	s2,c0_epc
9fc01b08:	948279f5 	lhu	v0,31221(a0)
9fc01b0c:	40887000 	mtc0	t0,c0_epc
9fc01b10:	16570007 	bne	s2,s7,9fc01b30 <inst_error>
9fc01b14:	00000000 	nop
9fc01b18:	14430005 	bne	v0,v1,9fc01b30 <inst_error>
9fc01b1c:	00000000 	nop
9fc01b20:	40164000 	mfc0	s6,c0_badvaddr
9fc01b24:	14f60002 	bne	a3,s6,9fc01b30 <inst_error>
9fc01b28:	00000000 	nop
9fc01b2c:	26730001 	addiu	s3,s3,1

9fc01b30 <inst_error>:
9fc01b30:	00104e00 	sll	t1,s0,0x18
9fc01b34:	01334025 	or	t0,t1,s3
9fc01b38:	ae280000 	sw	t0,0(s1)
9fc01b3c:	03e00008 	jr	ra
9fc01b40:	00000000 	nop
9fc01b44:	00000000 	nop
9fc01b48:	00000000 	nop
9fc01b4c:	00000000 	nop

9fc01b50 <n77_sw_ades_ex_test>:
9fc01b50:	26100001 	addiu	s0,s0,1
9fc01b54:	3c08800d 	lui	t0,0x800d
9fc01b58:	24120005 	li	s2,5
9fc01b5c:	ad120000 	sw	s2,0(t0)
9fc01b60:	40805800 	mtc0	zero,$11
9fc01b64:	3c170040 	lui	s7,0x40
9fc01b68:	40976000 	mtc0	s7,c0_sr
9fc01b6c:	00000000 	nop
9fc01b70:	3c170005 	lui	s7,0x5
9fc01b74:	3c02b189 	lui	v0,0xb189
9fc01b78:	3442c470 	ori	v0,v0,0xc470
9fc01b7c:	3c03b189 	lui	v1,0xb189
9fc01b80:	3463c470 	ori	v1,v1,0xc470
9fc01b84:	3c04800d 	lui	a0,0x800d
9fc01b88:	34847bd1 	ori	a0,a0,0x7bd1
9fc01b8c:	3c05b189 	lui	a1,0xb189
9fc01b90:	34a5c470 	ori	a1,a1,0xc470
9fc01b94:	24877974 	addiu	a3,a0,31092
9fc01b98:	ac827973 	sw	v0,31091(a0)
9fc01b9c:	3c149fc0 	lui	s4,0x9fc0
9fc01ba0:	26941ba4 	addiu	s4,s4,7076
9fc01ba4:	ac857974 	sw	a1,31092(a0)
9fc01ba8:	165700a2 	bne	s2,s7,9fc01e34 <inst_error>
9fc01bac:	00000000 	nop
9fc01bb0:	8c827973 	lw	v0,31091(a0)
9fc01bb4:	1443009f 	bne	v0,v1,9fc01e34 <inst_error>
9fc01bb8:	00000000 	nop
9fc01bbc:	40164000 	mfc0	s6,c0_badvaddr
9fc01bc0:	14f6009c 	bne	a3,s6,9fc01e34 <inst_error>
9fc01bc4:	00000000 	nop
9fc01bc8:	24120005 	li	s2,5
9fc01bcc:	3c02c052 	lui	v0,0xc052
9fc01bd0:	3442b3f0 	ori	v0,v0,0xb3f0
9fc01bd4:	3c03c052 	lui	v1,0xc052
9fc01bd8:	3463b3f0 	ori	v1,v1,0xb3f0
9fc01bdc:	3c04800d 	lui	a0,0x800d
9fc01be0:	348423d4 	ori	a0,a0,0x23d4
9fc01be4:	3c05c052 	lui	a1,0xc052
9fc01be8:	34a5b3f0 	ori	a1,a1,0xb3f0
9fc01bec:	248764a2 	addiu	a3,a0,25762
9fc01bf0:	ac8264a0 	sw	v0,25760(a0)
9fc01bf4:	3c149fc0 	lui	s4,0x9fc0
9fc01bf8:	26941c04 	addiu	s4,s4,7172
9fc01bfc:	ad080004 	sw	t0,4(t0)
9fc01c00:	ad140004 	sw	s4,4(t0)
9fc01c04:	ac8564a2 	sw	a1,25762(a0)
9fc01c08:	ad140000 	sw	s4,0(t0)
9fc01c0c:	8d090004 	lw	t1,4(t0)
9fc01c10:	15340088 	bne	t1,s4,9fc01e34 <inst_error>
9fc01c14:	00000000 	nop
9fc01c18:	16570086 	bne	s2,s7,9fc01e34 <inst_error>
9fc01c1c:	00000000 	nop
9fc01c20:	8c8264a0 	lw	v0,25760(a0)
9fc01c24:	14430083 	bne	v0,v1,9fc01e34 <inst_error>
9fc01c28:	00000000 	nop
9fc01c2c:	40164000 	mfc0	s6,c0_badvaddr
9fc01c30:	14f60080 	bne	a3,s6,9fc01e34 <inst_error>
9fc01c34:	00000000 	nop
9fc01c38:	24120005 	li	s2,5
9fc01c3c:	ad120000 	sw	s2,0(t0)
9fc01c40:	24120005 	li	s2,5
9fc01c44:	3c02a10f 	lui	v0,0xa10f
9fc01c48:	3442ebaf 	ori	v0,v0,0xebaf
9fc01c4c:	3c03a10f 	lui	v1,0xa10f
9fc01c50:	3463ebaf 	ori	v1,v1,0xebaf
9fc01c54:	3c04800d 	lui	a0,0x800d
9fc01c58:	34848850 	ori	a0,a0,0x8850
9fc01c5c:	3c05994c 	lui	a1,0x994c
9fc01c60:	34a50280 	ori	a1,a1,0x280
9fc01c64:	2487418b 	addiu	a3,a0,16779
9fc01c68:	ac824188 	sw	v0,16776(a0)
9fc01c6c:	3c149fc0 	lui	s4,0x9fc0
9fc01c70:	26941c7c 	addiu	s4,s4,7292
9fc01c74:	01000011 	mthi	t0
9fc01c78:	0110001b 	divu	zero,t0,s0
9fc01c7c:	ac85418b 	sw	a1,16779(a0)
9fc01c80:	00004810 	mfhi	t1
9fc01c84:	1128006b 	beq	t1,t0,9fc01e34 <inst_error>
9fc01c88:	00000000 	nop
9fc01c8c:	16570069 	bne	s2,s7,9fc01e34 <inst_error>
9fc01c90:	00000000 	nop
9fc01c94:	8c824188 	lw	v0,16776(a0)
9fc01c98:	14430066 	bne	v0,v1,9fc01e34 <inst_error>
9fc01c9c:	00000000 	nop
9fc01ca0:	40164000 	mfc0	s6,c0_badvaddr
9fc01ca4:	14f60063 	bne	a3,s6,9fc01e34 <inst_error>
9fc01ca8:	00000000 	nop
9fc01cac:	24120005 	li	s2,5
9fc01cb0:	3c02eb54 	lui	v0,0xeb54
9fc01cb4:	3442b87c 	ori	v0,v0,0xb87c
9fc01cb8:	3c03eb54 	lui	v1,0xeb54
9fc01cbc:	3463b87c 	ori	v1,v1,0xb87c
9fc01cc0:	3c04800d 	lui	a0,0x800d
9fc01cc4:	3484a256 	ori	a0,a0,0xa256
9fc01cc8:	3c05eb54 	lui	a1,0xeb54
9fc01ccc:	34a5b87c 	ori	a1,a1,0xb87c
9fc01cd0:	248700c3 	addiu	a3,a0,195
9fc01cd4:	ac8200c2 	sw	v0,194(a0)
9fc01cd8:	3c149fc0 	lui	s4,0x9fc0
9fc01cdc:	26941ce0 	addiu	s4,s4,7392
9fc01ce0:	ac8500c3 	sw	a1,195(a0)
9fc01ce4:	0208001b 	divu	zero,s0,t0
9fc01ce8:	16570052 	bne	s2,s7,9fc01e34 <inst_error>
9fc01cec:	00000000 	nop
9fc01cf0:	8c8200c2 	lw	v0,194(a0)
9fc01cf4:	1443004f 	bne	v0,v1,9fc01e34 <inst_error>
9fc01cf8:	00000000 	nop
9fc01cfc:	40164000 	mfc0	s6,c0_badvaddr
9fc01d00:	14f6004c 	bne	a3,s6,9fc01e34 <inst_error>
9fc01d04:	00000000 	nop
9fc01d08:	24120005 	li	s2,5
9fc01d0c:	3c028003 	lui	v0,0x8003
9fc01d10:	34422066 	ori	v0,v0,0x2066
9fc01d14:	3c038003 	lui	v1,0x8003
9fc01d18:	34632066 	ori	v1,v1,0x2066
9fc01d1c:	3c04800d 	lui	a0,0x800d
9fc01d20:	3484206c 	ori	a0,a0,0x206c
9fc01d24:	3c05ebdc 	lui	a1,0xebdc
9fc01d28:	34a58860 	ori	a1,a1,0x8860
9fc01d2c:	2487ccc2 	addiu	a3,a0,-13118
9fc01d30:	ac82ccc0 	sw	v0,-13120(a0)
9fc01d34:	3c149fc0 	lui	s4,0x9fc0
9fc01d38:	26941d44 	addiu	s4,s4,7492
9fc01d3c:	01000013 	mtlo	t0
9fc01d40:	01100019 	multu	t0,s0
9fc01d44:	ac85ccc2 	sw	a1,-13118(a0)
9fc01d48:	00004810 	mfhi	t1
9fc01d4c:	11280039 	beq	t1,t0,9fc01e34 <inst_error>
9fc01d50:	00000000 	nop
9fc01d54:	16570037 	bne	s2,s7,9fc01e34 <inst_error>
9fc01d58:	00000000 	nop
9fc01d5c:	8c82ccc0 	lw	v0,-13120(a0)
9fc01d60:	14430034 	bne	v0,v1,9fc01e34 <inst_error>
9fc01d64:	00000000 	nop
9fc01d68:	40164000 	mfc0	s6,c0_badvaddr
9fc01d6c:	14f60031 	bne	a3,s6,9fc01e34 <inst_error>
9fc01d70:	00000000 	nop
9fc01d74:	24120005 	li	s2,5
9fc01d78:	3c026348 	lui	v0,0x6348
9fc01d7c:	344258c8 	ori	v0,v0,0x58c8
9fc01d80:	3c036348 	lui	v1,0x6348
9fc01d84:	346358c8 	ori	v1,v1,0x58c8
9fc01d88:	3c04800d 	lui	a0,0x800d
9fc01d8c:	348482d8 	ori	a0,a0,0x82d8
9fc01d90:	3c050c41 	lui	a1,0xc41
9fc01d94:	34a5f5e8 	ori	a1,a1,0xf5e8
9fc01d98:	24878889 	addiu	a3,a0,-30583
9fc01d9c:	ac828888 	sw	v0,-30584(a0)
9fc01da0:	3c149fc0 	lui	s4,0x9fc0
9fc01da4:	26941da8 	addiu	s4,s4,7592
9fc01da8:	ac858889 	sw	a1,-30583(a0)
9fc01dac:	01120019 	multu	t0,s2
9fc01db0:	16570020 	bne	s2,s7,9fc01e34 <inst_error>
9fc01db4:	00000000 	nop
9fc01db8:	8c828888 	lw	v0,-30584(a0)
9fc01dbc:	1443001d 	bne	v0,v1,9fc01e34 <inst_error>
9fc01dc0:	00000000 	nop
9fc01dc4:	40164000 	mfc0	s6,c0_badvaddr
9fc01dc8:	14f6001a 	bne	a3,s6,9fc01e34 <inst_error>
9fc01dcc:	00000000 	nop
9fc01dd0:	24120005 	li	s2,5
9fc01dd4:	3c028003 	lui	v0,0x8003
9fc01dd8:	34421751 	ori	v0,v0,0x1751
9fc01ddc:	3c038003 	lui	v1,0x8003
9fc01de0:	34631751 	ori	v1,v1,0x1751
9fc01de4:	3c04800d 	lui	a0,0x800d
9fc01de8:	34841750 	ori	a0,a0,0x1750
9fc01dec:	3c05cb09 	lui	a1,0xcb09
9fc01df0:	34a5da60 	ori	a1,a1,0xda60
9fc01df4:	24879b27 	addiu	a3,a0,-25817
9fc01df8:	ac829b24 	sw	v0,-25820(a0)
9fc01dfc:	3c149fc0 	lui	s4,0x9fc0
9fc01e00:	26941e08 	addiu	s4,s4,7688
9fc01e04:	40927000 	mtc0	s2,c0_epc
9fc01e08:	ac859b27 	sw	a1,-25817(a0)
9fc01e0c:	40887000 	mtc0	t0,c0_epc
9fc01e10:	16570008 	bne	s2,s7,9fc01e34 <inst_error>
9fc01e14:	00000000 	nop
9fc01e18:	8c829b24 	lw	v0,-25820(a0)
9fc01e1c:	14430005 	bne	v0,v1,9fc01e34 <inst_error>
9fc01e20:	00000000 	nop
9fc01e24:	40164000 	mfc0	s6,c0_badvaddr
9fc01e28:	14f60002 	bne	a3,s6,9fc01e34 <inst_error>
9fc01e2c:	00000000 	nop
9fc01e30:	26730001 	addiu	s3,s3,1

9fc01e34 <inst_error>:
9fc01e34:	00104e00 	sll	t1,s0,0x18
9fc01e38:	01334025 	or	t0,t1,s3
9fc01e3c:	ae280000 	sw	t0,0(s1)
9fc01e40:	03e00008 	jr	ra
9fc01e44:	00000000 	nop
9fc01e48:	00000000 	nop
9fc01e4c:	00000000 	nop

9fc01e50 <n78_sh_ades_ex_test>:
9fc01e50:	26100001 	addiu	s0,s0,1
9fc01e54:	3c08800d 	lui	t0,0x800d
9fc01e58:	24120005 	li	s2,5
9fc01e5c:	ad120000 	sw	s2,0(t0)
9fc01e60:	40805800 	mtc0	zero,$11
9fc01e64:	3c170040 	lui	s7,0x40
9fc01e68:	40976000 	mtc0	s7,c0_sr
9fc01e6c:	00000000 	nop
9fc01e70:	3c170005 	lui	s7,0x5
9fc01e74:	3c028003 	lui	v0,0x8003
9fc01e78:	3442602a 	ori	v0,v0,0x602a
9fc01e7c:	3c038003 	lui	v1,0x8003
9fc01e80:	3463602a 	ori	v1,v1,0x602a
9fc01e84:	3c04800d 	lui	a0,0x800d
9fc01e88:	3484602a 	ori	a0,a0,0x602a
9fc01e8c:	3c0547cd 	lui	a1,0x47cd
9fc01e90:	34a5f6da 	ori	a1,a1,0xf6da
9fc01e94:	24878c35 	addiu	a3,a0,-29643
9fc01e98:	ac828c32 	sw	v0,-29646(a0)
9fc01e9c:	3c149fc0 	lui	s4,0x9fc0
9fc01ea0:	26941ea4 	addiu	s4,s4,7844
9fc01ea4:	a4858c35 	sh	a1,-29643(a0)
9fc01ea8:	165700a2 	bne	s2,s7,9fc02134 <inst_error>
9fc01eac:	00000000 	nop
9fc01eb0:	8c828c32 	lw	v0,-29646(a0)
9fc01eb4:	1443009f 	bne	v0,v1,9fc02134 <inst_error>
9fc01eb8:	00000000 	nop
9fc01ebc:	40164000 	mfc0	s6,c0_badvaddr
9fc01ec0:	14f6009c 	bne	a3,s6,9fc02134 <inst_error>
9fc01ec4:	00000000 	nop
9fc01ec8:	24120005 	li	s2,5
9fc01ecc:	3c026e9c 	lui	v0,0x6e9c
9fc01ed0:	3442e24e 	ori	v0,v0,0xe24e
9fc01ed4:	3c036e9c 	lui	v1,0x6e9c
9fc01ed8:	3463e24e 	ori	v1,v1,0xe24e
9fc01edc:	3c04800d 	lui	a0,0x800d
9fc01ee0:	34842c08 	ori	a0,a0,0x2c08
9fc01ee4:	3c056e9c 	lui	a1,0x6e9c
9fc01ee8:	34a5e24e 	ori	a1,a1,0xe24e
9fc01eec:	2487098b 	addiu	a3,a0,2443
9fc01ef0:	ac820988 	sw	v0,2440(a0)
9fc01ef4:	3c149fc0 	lui	s4,0x9fc0
9fc01ef8:	26941f04 	addiu	s4,s4,7940
9fc01efc:	ad080004 	sw	t0,4(t0)
9fc01f00:	ad140004 	sw	s4,4(t0)
9fc01f04:	a485098b 	sh	a1,2443(a0)
9fc01f08:	ad140000 	sw	s4,0(t0)
9fc01f0c:	8d090004 	lw	t1,4(t0)
9fc01f10:	15340088 	bne	t1,s4,9fc02134 <inst_error>
9fc01f14:	00000000 	nop
9fc01f18:	16570086 	bne	s2,s7,9fc02134 <inst_error>
9fc01f1c:	00000000 	nop
9fc01f20:	8c820988 	lw	v0,2440(a0)
9fc01f24:	14430083 	bne	v0,v1,9fc02134 <inst_error>
9fc01f28:	00000000 	nop
9fc01f2c:	40164000 	mfc0	s6,c0_badvaddr
9fc01f30:	14f60080 	bne	a3,s6,9fc02134 <inst_error>
9fc01f34:	00000000 	nop
9fc01f38:	24120005 	li	s2,5
9fc01f3c:	ad120000 	sw	s2,0(t0)
9fc01f40:	24120005 	li	s2,5
9fc01f44:	3c02419f 	lui	v0,0x419f
9fc01f48:	34429f3b 	ori	v0,v0,0x9f3b
9fc01f4c:	3c03419f 	lui	v1,0x419f
9fc01f50:	34639f3b 	ori	v1,v1,0x9f3b
9fc01f54:	3c04800d 	lui	a0,0x800d
9fc01f58:	34841356 	ori	a0,a0,0x1356
9fc01f5c:	3c05bb1a 	lui	a1,0xbb1a
9fc01f60:	34a5fce8 	ori	a1,a1,0xfce8
9fc01f64:	24871dd3 	addiu	a3,a0,7635
9fc01f68:	ac821dd2 	sw	v0,7634(a0)
9fc01f6c:	3c149fc0 	lui	s4,0x9fc0
9fc01f70:	26941f7c 	addiu	s4,s4,8060
9fc01f74:	01000011 	mthi	t0
9fc01f78:	0110001b 	divu	zero,t0,s0
9fc01f7c:	a4851dd3 	sh	a1,7635(a0)
9fc01f80:	00004810 	mfhi	t1
9fc01f84:	1128006b 	beq	t1,t0,9fc02134 <inst_error>
9fc01f88:	00000000 	nop
9fc01f8c:	16570069 	bne	s2,s7,9fc02134 <inst_error>
9fc01f90:	00000000 	nop
9fc01f94:	8c821dd2 	lw	v0,7634(a0)
9fc01f98:	14430066 	bne	v0,v1,9fc02134 <inst_error>
9fc01f9c:	00000000 	nop
9fc01fa0:	40164000 	mfc0	s6,c0_badvaddr
9fc01fa4:	14f60063 	bne	a3,s6,9fc02134 <inst_error>
9fc01fa8:	00000000 	nop
9fc01fac:	24120005 	li	s2,5
9fc01fb0:	3c028003 	lui	v0,0x8003
9fc01fb4:	34423729 	ori	v0,v0,0x3729
9fc01fb8:	3c038003 	lui	v1,0x8003
9fc01fbc:	34633729 	ori	v1,v1,0x3729
9fc01fc0:	3c04800d 	lui	a0,0x800d
9fc01fc4:	3484372c 	ori	a0,a0,0x372c
9fc01fc8:	3c05190a 	lui	a1,0x190a
9fc01fcc:	34a565ca 	ori	a1,a1,0x65ca
9fc01fd0:	248786f1 	addiu	a3,a0,-30991
9fc01fd4:	ac8286f0 	sw	v0,-30992(a0)
9fc01fd8:	3c149fc0 	lui	s4,0x9fc0
9fc01fdc:	26941fe0 	addiu	s4,s4,8160
9fc01fe0:	a48586f1 	sh	a1,-30991(a0)
9fc01fe4:	0208001b 	divu	zero,s0,t0
9fc01fe8:	16570052 	bne	s2,s7,9fc02134 <inst_error>
9fc01fec:	00000000 	nop
9fc01ff0:	8c8286f0 	lw	v0,-30992(a0)
9fc01ff4:	1443004f 	bne	v0,v1,9fc02134 <inst_error>
9fc01ff8:	00000000 	nop
9fc01ffc:	40164000 	mfc0	s6,c0_badvaddr
9fc02000:	14f6004c 	bne	a3,s6,9fc02134 <inst_error>
9fc02004:	00000000 	nop
9fc02008:	24120005 	li	s2,5
9fc0200c:	3c028003 	lui	v0,0x8003
9fc02010:	34421ff3 	ori	v0,v0,0x1ff3
9fc02014:	3c038003 	lui	v1,0x8003
9fc02018:	34631ff3 	ori	v1,v1,0x1ff3
9fc0201c:	3c04800d 	lui	a0,0x800d
9fc02020:	34841ff0 	ori	a0,a0,0x1ff0
9fc02024:	3c059fcc 	lui	a1,0x9fcc
9fc02028:	34a54ca0 	ori	a1,a1,0x4ca0
9fc0202c:	2487b663 	addiu	a3,a0,-18845
9fc02030:	ac82b660 	sw	v0,-18848(a0)
9fc02034:	3c149fc0 	lui	s4,0x9fc0
9fc02038:	26942044 	addiu	s4,s4,8260
9fc0203c:	01000013 	mtlo	t0
9fc02040:	01100019 	multu	t0,s0
9fc02044:	a485b663 	sh	a1,-18845(a0)
9fc02048:	00004810 	mfhi	t1
9fc0204c:	11280039 	beq	t1,t0,9fc02134 <inst_error>
9fc02050:	00000000 	nop
9fc02054:	16570037 	bne	s2,s7,9fc02134 <inst_error>
9fc02058:	00000000 	nop
9fc0205c:	8c82b660 	lw	v0,-18848(a0)
9fc02060:	14430034 	bne	v0,v1,9fc02134 <inst_error>
9fc02064:	00000000 	nop
9fc02068:	40164000 	mfc0	s6,c0_badvaddr
9fc0206c:	14f60031 	bne	a3,s6,9fc02134 <inst_error>
9fc02070:	00000000 	nop
9fc02074:	24120005 	li	s2,5
9fc02078:	3c0273b3 	lui	v0,0x73b3
9fc0207c:	34425a2b 	ori	v0,v0,0x5a2b
9fc02080:	3c0373b3 	lui	v1,0x73b3
9fc02084:	34635a2b 	ori	v1,v1,0x5a2b
9fc02088:	3c04800d 	lui	a0,0x800d
9fc0208c:	3484351b 	ori	a0,a0,0x351b
9fc02090:	3c05bd6f 	lui	a1,0xbd6f
9fc02094:	34a5420a 	ori	a1,a1,0x420a
9fc02098:	248764f2 	addiu	a3,a0,25842
9fc0209c:	ac8264f1 	sw	v0,25841(a0)
9fc020a0:	3c149fc0 	lui	s4,0x9fc0
9fc020a4:	269420a8 	addiu	s4,s4,8360
9fc020a8:	a48564f2 	sh	a1,25842(a0)
9fc020ac:	01120019 	multu	t0,s2
9fc020b0:	16570020 	bne	s2,s7,9fc02134 <inst_error>
9fc020b4:	00000000 	nop
9fc020b8:	8c8264f1 	lw	v0,25841(a0)
9fc020bc:	1443001d 	bne	v0,v1,9fc02134 <inst_error>
9fc020c0:	00000000 	nop
9fc020c4:	40164000 	mfc0	s6,c0_badvaddr
9fc020c8:	14f6001a 	bne	a3,s6,9fc02134 <inst_error>
9fc020cc:	00000000 	nop
9fc020d0:	24120005 	li	s2,5
9fc020d4:	3c02a521 	lui	v0,0xa521
9fc020d8:	34420b0a 	ori	v0,v0,0xb0a
9fc020dc:	3c03a521 	lui	v1,0xa521
9fc020e0:	34630b0a 	ori	v1,v1,0xb0a
9fc020e4:	3c04800d 	lui	a0,0x800d
9fc020e8:	348463d7 	ori	a0,a0,0x63d7
9fc020ec:	3c0500e9 	lui	a1,0xe9
9fc020f0:	34a55990 	ori	a1,a1,0x5990
9fc020f4:	24877fc6 	addiu	a3,a0,32710
9fc020f8:	ac827fc5 	sw	v0,32709(a0)
9fc020fc:	3c149fc0 	lui	s4,0x9fc0
9fc02100:	26942108 	addiu	s4,s4,8456
9fc02104:	40927000 	mtc0	s2,c0_epc
9fc02108:	a4857fc6 	sh	a1,32710(a0)
9fc0210c:	40887000 	mtc0	t0,c0_epc
9fc02110:	16570008 	bne	s2,s7,9fc02134 <inst_error>
9fc02114:	00000000 	nop
9fc02118:	8c827fc5 	lw	v0,32709(a0)
9fc0211c:	14430005 	bne	v0,v1,9fc02134 <inst_error>
9fc02120:	00000000 	nop
9fc02124:	40164000 	mfc0	s6,c0_badvaddr
9fc02128:	14f60002 	bne	a3,s6,9fc02134 <inst_error>
9fc0212c:	00000000 	nop
9fc02130:	26730001 	addiu	s3,s3,1

9fc02134 <inst_error>:
9fc02134:	00104e00 	sll	t1,s0,0x18
9fc02138:	01334025 	or	t0,t1,s3
9fc0213c:	ae280000 	sw	t0,0(s1)
9fc02140:	03e00008 	jr	ra
9fc02144:	00000000 	nop
9fc02148:	00000000 	nop
9fc0214c:	00000000 	nop

9fc02150 <n79_ft_adel_ex_test>:
9fc02150:	26100001 	addiu	s0,s0,1
9fc02154:	3c08800d 	lui	t0,0x800d
9fc02158:	24120006 	li	s2,6
9fc0215c:	ad120000 	sw	s2,0(t0)
9fc02160:	40805800 	mtc0	zero,$11
9fc02164:	3c170040 	lui	s7,0x40
9fc02168:	40976000 	mtc0	s7,c0_sr
9fc0216c:	00000000 	nop
9fc02170:	3c170006 	lui	s7,0x6
9fc02174:	3c14b27f 	lui	s4,0xb27f
9fc02178:	36949789 	ori	s4,s4,0x9789
9fc0217c:	3c07b27f 	lui	a3,0xb27f
9fc02180:	34e79789 	ori	a3,a3,0x9789
9fc02184:	3c159fc0 	lui	s5,0x9fc0
9fc02188:	26b52190 	addiu	s5,s5,8592
9fc0218c:	02800008 	jr	s4
9fc02190:	00000000 	nop
9fc02194:	16570072 	bne	s2,s7,9fc02360 <inst_error>
9fc02198:	00000000 	nop
9fc0219c:	40164000 	mfc0	s6,c0_badvaddr
9fc021a0:	14f6006f 	bne	a3,s6,9fc02360 <inst_error>
9fc021a4:	00000000 	nop
9fc021a8:	24120006 	li	s2,6
9fc021ac:	3c14a101 	lui	s4,0xa101
9fc021b0:	3694bbed 	ori	s4,s4,0xbbed
9fc021b4:	3c07a101 	lui	a3,0xa101
9fc021b8:	34e7bbed 	ori	a3,a3,0xbbed
9fc021bc:	40947000 	mtc0	s4,c0_epc
9fc021c0:	3c159fc0 	lui	s5,0x9fc0
9fc021c4:	26b521d0 	addiu	s5,s5,8656
9fc021c8:	ad080004 	sw	t0,4(t0)
9fc021cc:	ad140004 	sw	s4,4(t0)
9fc021d0:	42000018 	c0	0x18
9fc021d4:	ad140000 	sw	s4,0(t0)
9fc021d8:	8d090004 	lw	t1,4(t0)
9fc021dc:	15340060 	bne	t1,s4,9fc02360 <inst_error>
9fc021e0:	00000000 	nop
9fc021e4:	1657005e 	bne	s2,s7,9fc02360 <inst_error>
9fc021e8:	00000000 	nop
9fc021ec:	40164000 	mfc0	s6,c0_badvaddr
9fc021f0:	14f6005b 	bne	a3,s6,9fc02360 <inst_error>
9fc021f4:	00000000 	nop
9fc021f8:	24120006 	li	s2,6
9fc021fc:	ad120000 	sw	s2,0(t0)
9fc02200:	24120006 	li	s2,6
9fc02204:	3c148479 	lui	s4,0x8479
9fc02208:	36940977 	ori	s4,s4,0x977
9fc0220c:	3c078479 	lui	a3,0x8479
9fc02210:	34e70977 	ori	a3,a3,0x977
9fc02214:	40947000 	mtc0	s4,c0_epc
9fc02218:	3c159fc0 	lui	s5,0x9fc0
9fc0221c:	26b52228 	addiu	s5,s5,8744
9fc02220:	01000011 	mthi	t0
9fc02224:	0110001b 	divu	zero,t0,s0
9fc02228:	42000018 	c0	0x18
9fc0222c:	00004810 	mfhi	t1
9fc02230:	1128004b 	beq	t1,t0,9fc02360 <inst_error>
9fc02234:	00000000 	nop
9fc02238:	16570049 	bne	s2,s7,9fc02360 <inst_error>
9fc0223c:	00000000 	nop
9fc02240:	40164000 	mfc0	s6,c0_badvaddr
9fc02244:	14f60046 	bne	a3,s6,9fc02360 <inst_error>
9fc02248:	00000000 	nop
9fc0224c:	24120006 	li	s2,6
9fc02250:	3c1492b0 	lui	s4,0x92b0
9fc02254:	3694a2c3 	ori	s4,s4,0xa2c3
9fc02258:	3c0792b0 	lui	a3,0x92b0
9fc0225c:	34e7a2c3 	ori	a3,a3,0xa2c3
9fc02260:	3c159fc0 	lui	s5,0x9fc0
9fc02264:	26b5226c 	addiu	s5,s5,8812
9fc02268:	02800008 	jr	s4
9fc0226c:	00000000 	nop
9fc02270:	0208001b 	divu	zero,s0,t0
9fc02274:	1657003a 	bne	s2,s7,9fc02360 <inst_error>
9fc02278:	00000000 	nop
9fc0227c:	40164000 	mfc0	s6,c0_badvaddr
9fc02280:	14f60037 	bne	a3,s6,9fc02360 <inst_error>
9fc02284:	00000000 	nop
9fc02288:	24120006 	li	s2,6
9fc0228c:	3c14af9e 	lui	s4,0xaf9e
9fc02290:	3694dafa 	ori	s4,s4,0xdafa
9fc02294:	3c07af9e 	lui	a3,0xaf9e
9fc02298:	34e7dafa 	ori	a3,a3,0xdafa
9fc0229c:	40947000 	mtc0	s4,c0_epc
9fc022a0:	3c159fc0 	lui	s5,0x9fc0
9fc022a4:	26b522b0 	addiu	s5,s5,8880
9fc022a8:	01000013 	mtlo	t0
9fc022ac:	01100019 	multu	t0,s0
9fc022b0:	42000018 	c0	0x18
9fc022b4:	00004810 	mfhi	t1
9fc022b8:	11280029 	beq	t1,t0,9fc02360 <inst_error>
9fc022bc:	00000000 	nop
9fc022c0:	16570027 	bne	s2,s7,9fc02360 <inst_error>
9fc022c4:	00000000 	nop
9fc022c8:	40164000 	mfc0	s6,c0_badvaddr
9fc022cc:	14f60024 	bne	a3,s6,9fc02360 <inst_error>
9fc022d0:	00000000 	nop
9fc022d4:	24120006 	li	s2,6
9fc022d8:	3c14b088 	lui	s4,0xb088
9fc022dc:	3694f329 	ori	s4,s4,0xf329
9fc022e0:	3c07b088 	lui	a3,0xb088
9fc022e4:	34e7f329 	ori	a3,a3,0xf329
9fc022e8:	3c159fc0 	lui	s5,0x9fc0
9fc022ec:	26b522f4 	addiu	s5,s5,8948
9fc022f0:	02800008 	jr	s4
9fc022f4:	00000000 	nop
9fc022f8:	01120019 	multu	t0,s2
9fc022fc:	16570018 	bne	s2,s7,9fc02360 <inst_error>
9fc02300:	00000000 	nop
9fc02304:	14430016 	bne	v0,v1,9fc02360 <inst_error>
9fc02308:	00000000 	nop
9fc0230c:	40164000 	mfc0	s6,c0_badvaddr
9fc02310:	14f60013 	bne	a3,s6,9fc02360 <inst_error>
9fc02314:	00000000 	nop
9fc02318:	24120006 	li	s2,6
9fc0231c:	3c14827f 	lui	s4,0x827f
9fc02320:	369497ab 	ori	s4,s4,0x97ab
9fc02324:	3c07827f 	lui	a3,0x827f
9fc02328:	34e797ab 	ori	a3,a3,0x97ab
9fc0232c:	40947000 	mtc0	s4,c0_epc
9fc02330:	3c159fc0 	lui	s5,0x9fc0
9fc02334:	26b52338 	addiu	s5,s5,9016
9fc02338:	42000018 	c0	0x18
9fc0233c:	40887000 	mtc0	t0,c0_epc
9fc02340:	16570007 	bne	s2,s7,9fc02360 <inst_error>
9fc02344:	00000000 	nop
9fc02348:	14430005 	bne	v0,v1,9fc02360 <inst_error>
9fc0234c:	00000000 	nop
9fc02350:	40164000 	mfc0	s6,c0_badvaddr
9fc02354:	14f60002 	bne	a3,s6,9fc02360 <inst_error>
9fc02358:	00000000 	nop
9fc0235c:	26730001 	addiu	s3,s3,1

9fc02360 <inst_error>:
9fc02360:	00104e00 	sll	t1,s0,0x18
9fc02364:	01334025 	or	t0,t1,s3
9fc02368:	ae280000 	sw	t0,0(s1)
9fc0236c:	03e00008 	jr	ra
9fc02370:	00000000 	nop
9fc02374:	00000000 	nop
9fc02378:	00000000 	nop
9fc0237c:	00000000 	nop

9fc02380 <n80_ri_ex_test>:
9fc02380:	26100001 	addiu	s0,s0,1
9fc02384:	3c08800d 	lui	t0,0x800d
9fc02388:	24120007 	li	s2,7
9fc0238c:	ad120000 	sw	s2,0(t0)
9fc02390:	40805800 	mtc0	zero,$11
9fc02394:	3c170040 	lui	s7,0x40
9fc02398:	40976000 	mtc0	s7,c0_sr
9fc0239c:	00000000 	nop
9fc023a0:	3c170007 	lui	s7,0x7
9fc023a4:	3c149fc0 	lui	s4,0x9fc0
9fc023a8:	269423ac 	addiu	s4,s4,9132
9fc023ac:	700000fe 	0x700000fe
9fc023b0:	16570040 	bne	s2,s7,9fc024b4 <inst_error>
9fc023b4:	00000000 	nop
9fc023b8:	24120007 	li	s2,7
9fc023bc:	3c149fc0 	lui	s4,0x9fc0
9fc023c0:	269423cc 	addiu	s4,s4,9164
9fc023c4:	ad080004 	sw	t0,4(t0)
9fc023c8:	ad140004 	sw	s4,4(t0)
9fc023cc:	7a22db9c 	0x7a22db9c
9fc023d0:	ad140000 	sw	s4,0(t0)
9fc023d4:	8d090004 	lw	t1,4(t0)
9fc023d8:	15340036 	bne	t1,s4,9fc024b4 <inst_error>
9fc023dc:	00000000 	nop
9fc023e0:	16570034 	bne	s2,s7,9fc024b4 <inst_error>
9fc023e4:	00000000 	nop
9fc023e8:	24120007 	li	s2,7
9fc023ec:	ad120000 	sw	s2,0(t0)
9fc023f0:	24120007 	li	s2,7
9fc023f4:	3c149fc0 	lui	s4,0x9fc0
9fc023f8:	26942404 	addiu	s4,s4,9220
9fc023fc:	01000011 	mthi	t0
9fc02400:	0110001b 	divu	zero,t0,s0
9fc02404:	6f76e210 	0x6f76e210
9fc02408:	00004810 	mfhi	t1
9fc0240c:	11280029 	beq	t1,t0,9fc024b4 <inst_error>
9fc02410:	00000000 	nop
9fc02414:	16570027 	bne	s2,s7,9fc024b4 <inst_error>
9fc02418:	00000000 	nop
9fc0241c:	24120007 	li	s2,7
9fc02420:	3c149fc0 	lui	s4,0x9fc0
9fc02424:	26942428 	addiu	s4,s4,9256
9fc02428:	5a8d78ce 	0x5a8d78ce
9fc0242c:	0208001b 	divu	zero,s0,t0
9fc02430:	16570020 	bne	s2,s7,9fc024b4 <inst_error>
9fc02434:	00000000 	nop
9fc02438:	24120007 	li	s2,7
9fc0243c:	3c149fc0 	lui	s4,0x9fc0
9fc02440:	2694244c 	addiu	s4,s4,9292
9fc02444:	01000013 	mtlo	t0
9fc02448:	01100019 	multu	t0,s0
9fc0244c:	7bd1ac60 	0x7bd1ac60
9fc02450:	00004810 	mfhi	t1
9fc02454:	11280017 	beq	t1,t0,9fc024b4 <inst_error>
9fc02458:	00000000 	nop
9fc0245c:	16570015 	bne	s2,s7,9fc024b4 <inst_error>
9fc02460:	00000000 	nop
9fc02464:	24120007 	li	s2,7
9fc02468:	3c149fc0 	lui	s4,0x9fc0
9fc0246c:	26942470 	addiu	s4,s4,9328
9fc02470:	7e6265cc 	0x7e6265cc
9fc02474:	01120019 	multu	t0,s2
9fc02478:	1657000e 	bne	s2,s7,9fc024b4 <inst_error>
9fc0247c:	00000000 	nop
9fc02480:	1443000c 	bne	v0,v1,9fc024b4 <inst_error>
9fc02484:	00000000 	nop
9fc02488:	24120007 	li	s2,7
9fc0248c:	3c149fc0 	lui	s4,0x9fc0
9fc02490:	26942498 	addiu	s4,s4,9368
9fc02494:	40927000 	mtc0	s2,c0_epc
9fc02498:	9fc55510 	0x9fc55510
9fc0249c:	40887000 	mtc0	t0,c0_epc
9fc024a0:	16570004 	bne	s2,s7,9fc024b4 <inst_error>
9fc024a4:	00000000 	nop
9fc024a8:	14430002 	bne	v0,v1,9fc024b4 <inst_error>
9fc024ac:	00000000 	nop
9fc024b0:	26730001 	addiu	s3,s3,1

9fc024b4 <inst_error>:
9fc024b4:	00104e00 	sll	t1,s0,0x18
9fc024b8:	01334025 	or	t0,t1,s3
9fc024bc:	ae280000 	sw	t0,0(s1)
9fc024c0:	03e00008 	jr	ra
9fc024c4:	00000000 	nop
9fc024c8:	00000000 	nop
9fc024cc:	00000000 	nop

9fc024d0 <n81_ti_ex_test>:
9fc024d0:	26100001 	addiu	s0,s0,1
9fc024d4:	3c08800d 	lui	t0,0x800d
9fc024d8:	24120008 	li	s2,8
9fc024dc:	ad120000 	sw	s2,0(t0)
9fc024e0:	40805800 	mtc0	zero,$11
9fc024e4:	3c170040 	lui	s7,0x40
9fc024e8:	40976000 	mtc0	s7,c0_sr
9fc024ec:	00000000 	nop
9fc024f0:	3c170008 	lui	s7,0x8
9fc024f4:	3c149fc0 	lui	s4,0x9fc0
9fc024f8:	2694252c 	addiu	s4,s4,9516
9fc024fc:	3c070040 	lui	a3,0x40
9fc02500:	34e7ff01 	ori	a3,a3,0xff01
9fc02504:	3c0345df 	lui	v1,0x45df
9fc02508:	34630200 	ori	v1,v1,0x200
9fc0250c:	2462000a 	addiu	v0,v1,10
9fc02510:	40824800 	mtc0	v0,$9
9fc02514:	40835800 	mtc0	v1,$11
9fc02518:	3c0245df 	lui	v0,0x45df
9fc0251c:	344200e0 	ori	v0,v0,0xe0
9fc02520:	40876000 	mtc0	a3,c0_sr
9fc02524:	00000000 	nop
9fc02528:	40824800 	mtc0	v0,$9
9fc0252c:	1000ffff 	b	9fc0252c <n81_ti_ex_test+0x5c>
9fc02530:	00000000 	nop
9fc02534:	16570088 	bne	s2,s7,9fc02758 <inst_error>
9fc02538:	00000000 	nop
9fc0253c:	24120008 	li	s2,8
9fc02540:	3c149fc0 	lui	s4,0x9fc0
9fc02544:	26942580 	addiu	s4,s4,9600
9fc02548:	ad080004 	sw	t0,4(t0)
9fc0254c:	ad140004 	sw	s4,4(t0)
9fc02550:	3c070040 	lui	a3,0x40
9fc02554:	34e7ff01 	ori	a3,a3,0xff01
9fc02558:	3c03b70e 	lui	v1,0xb70e
9fc0255c:	34633e4b 	ori	v1,v1,0x3e4b
9fc02560:	2462000a 	addiu	v0,v1,10
9fc02564:	40824800 	mtc0	v0,$9
9fc02568:	40835800 	mtc0	v1,$11
9fc0256c:	3c02b70e 	lui	v0,0xb70e
9fc02570:	34423e49 	ori	v0,v0,0x3e49
9fc02574:	40876000 	mtc0	a3,c0_sr
9fc02578:	00000000 	nop
9fc0257c:	40824800 	mtc0	v0,$9
9fc02580:	1000ffff 	b	9fc02580 <n81_ti_ex_test+0xb0>
9fc02584:	00000000 	nop
9fc02588:	ad140000 	sw	s4,0(t0)
9fc0258c:	8d090004 	lw	t1,4(t0)
9fc02590:	15340071 	bne	t1,s4,9fc02758 <inst_error>
9fc02594:	00000000 	nop
9fc02598:	1657006f 	bne	s2,s7,9fc02758 <inst_error>
9fc0259c:	00000000 	nop
9fc025a0:	24120008 	li	s2,8
9fc025a4:	ad120000 	sw	s2,0(t0)
9fc025a8:	24120008 	li	s2,8
9fc025ac:	3c149fc0 	lui	s4,0x9fc0
9fc025b0:	269425e4 	addiu	s4,s4,9700
9fc025b4:	01000011 	mthi	t0
9fc025b8:	0110001b 	divu	zero,t0,s0
9fc025bc:	3c070040 	lui	a3,0x40
9fc025c0:	34e7ff01 	ori	a3,a3,0xff01
9fc025c4:	24030022 	li	v1,34
9fc025c8:	2462000a 	addiu	v0,v1,10
9fc025cc:	40824800 	mtc0	v0,$9
9fc025d0:	40835800 	mtc0	v1,$11
9fc025d4:	2402fffc 	li	v0,-4
9fc025d8:	40876000 	mtc0	a3,c0_sr
9fc025dc:	00000000 	nop
9fc025e0:	40824800 	mtc0	v0,$9
9fc025e4:	1000ffff 	b	9fc025e4 <n81_ti_ex_test+0x114>
9fc025e8:	00000000 	nop
9fc025ec:	00004810 	mfhi	t1
9fc025f0:	11280059 	beq	t1,t0,9fc02758 <inst_error>
9fc025f4:	00000000 	nop
9fc025f8:	16570057 	bne	s2,s7,9fc02758 <inst_error>
9fc025fc:	00000000 	nop
9fc02600:	24120008 	li	s2,8
9fc02604:	3c149fc0 	lui	s4,0x9fc0
9fc02608:	2694263c 	addiu	s4,s4,9788
9fc0260c:	3c070040 	lui	a3,0x40
9fc02610:	34e7ff01 	ori	a3,a3,0xff01
9fc02614:	3c035a8d 	lui	v1,0x5a8d
9fc02618:	34637945 	ori	v1,v1,0x7945
9fc0261c:	2462000a 	addiu	v0,v1,10
9fc02620:	40824800 	mtc0	v0,$9
9fc02624:	40835800 	mtc0	v1,$11
9fc02628:	3c025a8d 	lui	v0,0x5a8d
9fc0262c:	344278ce 	ori	v0,v0,0x78ce
9fc02630:	40876000 	mtc0	a3,c0_sr
9fc02634:	00000000 	nop
9fc02638:	40824800 	mtc0	v0,$9
9fc0263c:	1000ffff 	b	9fc0263c <n81_ti_ex_test+0x16c>
9fc02640:	00000000 	nop
9fc02644:	0208001b 	divu	zero,s0,t0
9fc02648:	16570043 	bne	s2,s7,9fc02758 <inst_error>
9fc0264c:	00000000 	nop
9fc02650:	24120008 	li	s2,8
9fc02654:	3c149fc0 	lui	s4,0x9fc0
9fc02658:	26942694 	addiu	s4,s4,9876
9fc0265c:	01000013 	mtlo	t0
9fc02660:	01100019 	multu	t0,s0
9fc02664:	3c070040 	lui	a3,0x40
9fc02668:	34e7ff01 	ori	a3,a3,0xff01
9fc0266c:	3c037bd1 	lui	v1,0x7bd1
9fc02670:	3463ac71 	ori	v1,v1,0xac71
9fc02674:	2462000a 	addiu	v0,v1,10
9fc02678:	40824800 	mtc0	v0,$9
9fc0267c:	40835800 	mtc0	v1,$11
9fc02680:	3c027bd1 	lui	v0,0x7bd1
9fc02684:	3442ac60 	ori	v0,v0,0xac60
9fc02688:	40876000 	mtc0	a3,c0_sr
9fc0268c:	00000000 	nop
9fc02690:	40824800 	mtc0	v0,$9
9fc02694:	1000ffff 	b	9fc02694 <n81_ti_ex_test+0x1c4>
9fc02698:	00000000 	nop
9fc0269c:	00004810 	mfhi	t1
9fc026a0:	1128002d 	beq	t1,t0,9fc02758 <inst_error>
9fc026a4:	00000000 	nop
9fc026a8:	1657002b 	bne	s2,s7,9fc02758 <inst_error>
9fc026ac:	00000000 	nop
9fc026b0:	24120008 	li	s2,8
9fc026b4:	3c149fc0 	lui	s4,0x9fc0
9fc026b8:	269426ec 	addiu	s4,s4,9964
9fc026bc:	3c070040 	lui	a3,0x40
9fc026c0:	34e7ff01 	ori	a3,a3,0xff01
9fc026c4:	3c037e62 	lui	v1,0x7e62
9fc026c8:	346365cd 	ori	v1,v1,0x65cd
9fc026cc:	2462000a 	addiu	v0,v1,10
9fc026d0:	40824800 	mtc0	v0,$9
9fc026d4:	40835800 	mtc0	v1,$11
9fc026d8:	3c027e62 	lui	v0,0x7e62
9fc026dc:	344265cc 	ori	v0,v0,0x65cc
9fc026e0:	40876000 	mtc0	a3,c0_sr
9fc026e4:	00000000 	nop
9fc026e8:	40824800 	mtc0	v0,$9
9fc026ec:	1000ffff 	b	9fc026ec <n81_ti_ex_test+0x21c>
9fc026f0:	00000000 	nop
9fc026f4:	01120019 	multu	t0,s2
9fc026f8:	16570017 	bne	s2,s7,9fc02758 <inst_error>
9fc026fc:	00000000 	nop
9fc02700:	24120008 	li	s2,8
9fc02704:	3c149fc0 	lui	s4,0x9fc0
9fc02708:	26942740 	addiu	s4,s4,10048
9fc0270c:	40927000 	mtc0	s2,c0_epc
9fc02710:	3c070040 	lui	a3,0x40
9fc02714:	34e7ff01 	ori	a3,a3,0xff01
9fc02718:	3c039fc5 	lui	v1,0x9fc5
9fc0271c:	34635510 	ori	v1,v1,0x5510
9fc02720:	2462000a 	addiu	v0,v1,10
9fc02724:	40824800 	mtc0	v0,$9
9fc02728:	40835800 	mtc0	v1,$11
9fc0272c:	3c029fc5 	lui	v0,0x9fc5
9fc02730:	34425510 	ori	v0,v0,0x5510
9fc02734:	40876000 	mtc0	a3,c0_sr
9fc02738:	00000000 	nop
9fc0273c:	40824800 	mtc0	v0,$9
9fc02740:	1000ffff 	b	9fc02740 <n81_ti_ex_test+0x270>
9fc02744:	00000000 	nop
9fc02748:	40887000 	mtc0	t0,c0_epc
9fc0274c:	16570002 	bne	s2,s7,9fc02758 <inst_error>
9fc02750:	00000000 	nop
9fc02754:	26730001 	addiu	s3,s3,1

9fc02758 <inst_error>:
9fc02758:	00104e00 	sll	t1,s0,0x18
9fc0275c:	01334025 	or	t0,t1,s3
9fc02760:	ae280000 	sw	t0,0(s1)
9fc02764:	03e00008 	jr	ra
9fc02768:	00000000 	nop
9fc0276c:	00000000 	nop

9fc02770 <n82_soft_int_ex_test>:
9fc02770:	26100001 	addiu	s0,s0,1
9fc02774:	3c08800d 	lui	t0,0x800d
9fc02778:	24120008 	li	s2,8
9fc0277c:	ad120000 	sw	s2,0(t0)
9fc02780:	40805800 	mtc0	zero,$11
9fc02784:	3c170040 	lui	s7,0x40
9fc02788:	40976000 	mtc0	s7,c0_sr
9fc0278c:	00000000 	nop
9fc02790:	3c170008 	lui	s7,0x8
9fc02794:	3c149fc0 	lui	s4,0x9fc0
9fc02798:	269427c4 	addiu	s4,s4,10180
9fc0279c:	3c070040 	lui	a3,0x40
9fc027a0:	34e7ff01 	ori	a3,a3,0xff01
9fc027a4:	2402ffff 	li	v0,-1
9fc027a8:	3c03000f 	lui	v1,0xf
9fc027ac:	3463f2ff 	ori	v1,v1,0xf2ff
9fc027b0:	40804800 	mtc0	zero,$9
9fc027b4:	40825800 	mtc0	v0,$11
9fc027b8:	40876000 	mtc0	a3,c0_sr
9fc027bc:	00000000 	nop
9fc027c0:	40836800 	mtc0	v1,c0_cause
9fc027c4:	1000ffff 	b	9fc027c4 <n82_soft_int_ex_test+0x54>
9fc027c8:	00000000 	nop
9fc027cc:	16570078 	bne	s2,s7,9fc029b0 <inst_error>
9fc027d0:	00000000 	nop
9fc027d4:	24120008 	li	s2,8
9fc027d8:	3c149fc0 	lui	s4,0x9fc0
9fc027dc:	2694280c 	addiu	s4,s4,10252
9fc027e0:	ad080004 	sw	t0,4(t0)
9fc027e4:	ad140004 	sw	s4,4(t0)
9fc027e8:	3c070040 	lui	a3,0x40
9fc027ec:	34e7ff01 	ori	a3,a3,0xff01
9fc027f0:	2402ffff 	li	v0,-1
9fc027f4:	3403f1ff 	li	v1,0xf1ff
9fc027f8:	40804800 	mtc0	zero,$9
9fc027fc:	40825800 	mtc0	v0,$11
9fc02800:	40876000 	mtc0	a3,c0_sr
9fc02804:	00000000 	nop
9fc02808:	40836800 	mtc0	v1,c0_cause
9fc0280c:	1000ffff 	b	9fc0280c <n82_soft_int_ex_test+0x9c>
9fc02810:	00000000 	nop
9fc02814:	ad140000 	sw	s4,0(t0)
9fc02818:	8d090004 	lw	t1,4(t0)
9fc0281c:	15340064 	bne	t1,s4,9fc029b0 <inst_error>
9fc02820:	00000000 	nop
9fc02824:	16570062 	bne	s2,s7,9fc029b0 <inst_error>
9fc02828:	00000000 	nop
9fc0282c:	24120008 	li	s2,8
9fc02830:	ad120000 	sw	s2,0(t0)
9fc02834:	24120008 	li	s2,8
9fc02838:	3c149fc0 	lui	s4,0x9fc0
9fc0283c:	2694286c 	addiu	s4,s4,10348
9fc02840:	01000011 	mthi	t0
9fc02844:	0110001b 	divu	zero,t0,s0
9fc02848:	3c070040 	lui	a3,0x40
9fc0284c:	34e7ff01 	ori	a3,a3,0xff01
9fc02850:	2402ffff 	li	v0,-1
9fc02854:	24030100 	li	v1,256
9fc02858:	40804800 	mtc0	zero,$9
9fc0285c:	40825800 	mtc0	v0,$11
9fc02860:	40876000 	mtc0	a3,c0_sr
9fc02864:	00000000 	nop
9fc02868:	40836800 	mtc0	v1,c0_cause
9fc0286c:	1000ffff 	b	9fc0286c <n82_soft_int_ex_test+0xfc>
9fc02870:	00000000 	nop
9fc02874:	00004810 	mfhi	t1
9fc02878:	1128004d 	beq	t1,t0,9fc029b0 <inst_error>
9fc0287c:	00000000 	nop
9fc02880:	1657004b 	bne	s2,s7,9fc029b0 <inst_error>
9fc02884:	00000000 	nop
9fc02888:	24120008 	li	s2,8
9fc0288c:	3c149fc0 	lui	s4,0x9fc0
9fc02890:	269428b8 	addiu	s4,s4,10424
9fc02894:	3c070040 	lui	a3,0x40
9fc02898:	34e7ff01 	ori	a3,a3,0xff01
9fc0289c:	2402ffff 	li	v0,-1
9fc028a0:	24030200 	li	v1,512
9fc028a4:	40804800 	mtc0	zero,$9
9fc028a8:	40825800 	mtc0	v0,$11
9fc028ac:	40876000 	mtc0	a3,c0_sr
9fc028b0:	00000000 	nop
9fc028b4:	40836800 	mtc0	v1,c0_cause
9fc028b8:	1000ffff 	b	9fc028b8 <n82_soft_int_ex_test+0x148>
9fc028bc:	00000000 	nop
9fc028c0:	0208001b 	divu	zero,s0,t0
9fc028c4:	1657003a 	bne	s2,s7,9fc029b0 <inst_error>
9fc028c8:	00000000 	nop
9fc028cc:	24120008 	li	s2,8
9fc028d0:	3c149fc0 	lui	s4,0x9fc0
9fc028d4:	26942904 	addiu	s4,s4,10500
9fc028d8:	01000013 	mtlo	t0
9fc028dc:	01100019 	multu	t0,s0
9fc028e0:	3c070040 	lui	a3,0x40
9fc028e4:	34e7ff01 	ori	a3,a3,0xff01
9fc028e8:	2402ffff 	li	v0,-1
9fc028ec:	24030300 	li	v1,768
9fc028f0:	40804800 	mtc0	zero,$9
9fc028f4:	40825800 	mtc0	v0,$11
9fc028f8:	40876000 	mtc0	a3,c0_sr
9fc028fc:	00000000 	nop
9fc02900:	40836800 	mtc0	v1,c0_cause
9fc02904:	1000ffff 	b	9fc02904 <n82_soft_int_ex_test+0x194>
9fc02908:	00000000 	nop
9fc0290c:	00004810 	mfhi	t1
9fc02910:	11280027 	beq	t1,t0,9fc029b0 <inst_error>
9fc02914:	00000000 	nop
9fc02918:	16570025 	bne	s2,s7,9fc029b0 <inst_error>
9fc0291c:	00000000 	nop
9fc02920:	24120008 	li	s2,8
9fc02924:	3c149fc0 	lui	s4,0x9fc0
9fc02928:	26942950 	addiu	s4,s4,10576
9fc0292c:	3c070040 	lui	a3,0x40
9fc02930:	34e7ff01 	ori	a3,a3,0xff01
9fc02934:	2402ffff 	li	v0,-1
9fc02938:	24030500 	li	v1,1280
9fc0293c:	40804800 	mtc0	zero,$9
9fc02940:	40825800 	mtc0	v0,$11
9fc02944:	40876000 	mtc0	a3,c0_sr
9fc02948:	00000000 	nop
9fc0294c:	40836800 	mtc0	v1,c0_cause
9fc02950:	1000ffff 	b	9fc02950 <n82_soft_int_ex_test+0x1e0>
9fc02954:	00000000 	nop
9fc02958:	01120019 	multu	t0,s2
9fc0295c:	16570014 	bne	s2,s7,9fc029b0 <inst_error>
9fc02960:	00000000 	nop
9fc02964:	24120008 	li	s2,8
9fc02968:	3c149fc0 	lui	s4,0x9fc0
9fc0296c:	26942998 	addiu	s4,s4,10648
9fc02970:	40927000 	mtc0	s2,c0_epc
9fc02974:	3c070040 	lui	a3,0x40
9fc02978:	34e7ff01 	ori	a3,a3,0xff01
9fc0297c:	2402ffff 	li	v0,-1
9fc02980:	24030f00 	li	v1,3840
9fc02984:	40804800 	mtc0	zero,$9
9fc02988:	40825800 	mtc0	v0,$11
9fc0298c:	40876000 	mtc0	a3,c0_sr
9fc02990:	00000000 	nop
9fc02994:	40836800 	mtc0	v1,c0_cause
9fc02998:	1000ffff 	b	9fc02998 <n82_soft_int_ex_test+0x228>
9fc0299c:	00000000 	nop
9fc029a0:	40887000 	mtc0	t0,c0_epc
9fc029a4:	16570002 	bne	s2,s7,9fc029b0 <inst_error>
9fc029a8:	00000000 	nop
9fc029ac:	26730001 	addiu	s3,s3,1

9fc029b0 <inst_error>:
9fc029b0:	00104e00 	sll	t1,s0,0x18
9fc029b4:	01334025 	or	t0,t1,s3
9fc029b8:	ae280000 	sw	t0,0(s1)
9fc029bc:	03e00008 	jr	ra
9fc029c0:	00000000 	nop
9fc029c4:	00000000 	nop
9fc029c8:	00000000 	nop
9fc029cc:	00000000 	nop

9fc029d0 <n83_beq_ds_ex_test>:
9fc029d0:	26100001 	addiu	s0,s0,1
9fc029d4:	3c08800d 	lui	t0,0x800d
9fc029d8:	40805800 	mtc0	zero,$11
9fc029dc:	3c170040 	lui	s7,0x40
9fc029e0:	40976000 	mtc0	s7,c0_sr
9fc029e4:	00000000 	nop
9fc029e8:	24120001 	li	s2,1
9fc029ec:	3c170001 	lui	s7,0x1
9fc029f0:	ad120000 	sw	s2,0(t0)
9fc029f4:	3c149fc0 	lui	s4,0x9fc0
9fc029f8:	269429fc 	addiu	s4,s4,10748
9fc029fc:	100000af 	b	9fc02cbc <inst_error>
9fc02a00:	0000000c 	syscall
9fc02a04:	165700ad 	bne	s2,s7,9fc02cbc <inst_error>
9fc02a08:	00000000 	nop
9fc02a0c:	24120001 	li	s2,1
9fc02a10:	3c149fc0 	lui	s4,0x9fc0
9fc02a14:	26942a18 	addiu	s4,s4,10776
9fc02a18:	110000a8 	beqz	t0,9fc02cbc <inst_error>
9fc02a1c:	0000000c 	syscall
9fc02a20:	165700a6 	bne	s2,s7,9fc02cbc <inst_error>
9fc02a24:	00000000 	nop
9fc02a28:	24120002 	li	s2,2
9fc02a2c:	3c170002 	lui	s7,0x2
9fc02a30:	ad120000 	sw	s2,0(t0)
9fc02a34:	3c149fc0 	lui	s4,0x9fc0
9fc02a38:	26942a3c 	addiu	s4,s4,10812
9fc02a3c:	1000009f 	b	9fc02cbc <inst_error>
9fc02a40:	0000000d 	break
9fc02a44:	1657009d 	bne	s2,s7,9fc02cbc <inst_error>
9fc02a48:	00000000 	nop
9fc02a4c:	24120002 	li	s2,2
9fc02a50:	3c149fc0 	lui	s4,0x9fc0
9fc02a54:	26942a58 	addiu	s4,s4,10840
9fc02a58:	11000098 	beqz	t0,9fc02cbc <inst_error>
9fc02a5c:	0000000d 	break
9fc02a60:	16570096 	bne	s2,s7,9fc02cbc <inst_error>
9fc02a64:	00000000 	nop
9fc02a68:	24120003 	li	s2,3
9fc02a6c:	3c170003 	lui	s7,0x3
9fc02a70:	ad120000 	sw	s2,0(t0)
9fc02a74:	3c149fc0 	lui	s4,0x9fc0
9fc02a78:	26942a8c 	addiu	s4,s4,10892
9fc02a7c:	3c04ba03 	lui	a0,0xba03
9fc02a80:	34844f60 	ori	a0,a0,0x4f60
9fc02a84:	3c05b615 	lui	a1,0xb615
9fc02a88:	34a5fd67 	ori	a1,a1,0xfd67
9fc02a8c:	1000008b 	b	9fc02cbc <inst_error>
9fc02a90:	0085b820 	add	s7,a0,a1
9fc02a94:	16570089 	bne	s2,s7,9fc02cbc <inst_error>
9fc02a98:	00000000 	nop
9fc02a9c:	24120003 	li	s2,3
9fc02aa0:	3c149fc0 	lui	s4,0x9fc0
9fc02aa4:	26942aa8 	addiu	s4,s4,10920
9fc02aa8:	11000084 	beqz	t0,9fc02cbc <inst_error>
9fc02aac:	0085b820 	add	s7,a0,a1
9fc02ab0:	ad170000 	sw	s7,0(t0)
9fc02ab4:	16570081 	bne	s2,s7,9fc02cbc <inst_error>
9fc02ab8:	00000000 	nop
9fc02abc:	24120003 	li	s2,3
9fc02ac0:	ad120000 	sw	s2,0(t0)
9fc02ac4:	3c149fc0 	lui	s4,0x9fc0
9fc02ac8:	26942ad4 	addiu	s4,s4,10964
9fc02acc:	3c047fff 	lui	a0,0x7fff
9fc02ad0:	3484c19e 	ori	a0,a0,0xc19e
9fc02ad4:	10000079 	b	9fc02cbc <inst_error>
9fc02ad8:	20976512 	addi	s7,a0,25874
9fc02adc:	16570077 	bne	s2,s7,9fc02cbc <inst_error>
9fc02ae0:	00000000 	nop
9fc02ae4:	24120003 	li	s2,3
9fc02ae8:	3c149fc0 	lui	s4,0x9fc0
9fc02aec:	26942af0 	addiu	s4,s4,10992
9fc02af0:	11000072 	beqz	t0,9fc02cbc <inst_error>
9fc02af4:	20976512 	addi	s7,a0,25874
9fc02af8:	16570070 	bne	s2,s7,9fc02cbc <inst_error>
9fc02afc:	00000000 	nop
9fc02b00:	24120003 	li	s2,3
9fc02b04:	3c149fc0 	lui	s4,0x9fc0
9fc02b08:	26942b1c 	addiu	s4,s4,11036
9fc02b0c:	3c04a85e 	lui	a0,0xa85e
9fc02b10:	34847d00 	ori	a0,a0,0x7d00
9fc02b14:	3c056b7e 	lui	a1,0x6b7e
9fc02b18:	34a58e36 	ori	a1,a1,0x8e36
9fc02b1c:	10000067 	b	9fc02cbc <inst_error>
9fc02b20:	0085b822 	sub	s7,a0,a1
9fc02b24:	16570065 	bne	s2,s7,9fc02cbc <inst_error>
9fc02b28:	00000000 	nop
9fc02b2c:	24120003 	li	s2,3
9fc02b30:	3c149fc0 	lui	s4,0x9fc0
9fc02b34:	26942b38 	addiu	s4,s4,11064
9fc02b38:	11000060 	beqz	t0,9fc02cbc <inst_error>
9fc02b3c:	0085b822 	sub	s7,a0,a1
9fc02b40:	1657005e 	bne	s2,s7,9fc02cbc <inst_error>
9fc02b44:	00000000 	nop
9fc02b48:	24120004 	li	s2,4
9fc02b4c:	3c170004 	lui	s7,0x4
9fc02b50:	ad120000 	sw	s2,0(t0)
9fc02b54:	3c149fc0 	lui	s4,0x9fc0
9fc02b58:	26942b5c 	addiu	s4,s4,11100
9fc02b5c:	10000057 	b	9fc02cbc <inst_error>
9fc02b60:	8d170002 	lw	s7,2(t0)
9fc02b64:	16570055 	bne	s2,s7,9fc02cbc <inst_error>
9fc02b68:	00000000 	nop
9fc02b6c:	24120004 	li	s2,4
9fc02b70:	3c149fc0 	lui	s4,0x9fc0
9fc02b74:	26942b78 	addiu	s4,s4,11128
9fc02b78:	11000050 	beqz	t0,9fc02cbc <inst_error>
9fc02b7c:	8d170002 	lw	s7,2(t0)
9fc02b80:	1657004e 	bne	s2,s7,9fc02cbc <inst_error>
9fc02b84:	00000000 	nop
9fc02b88:	24120004 	li	s2,4
9fc02b8c:	3c149fc0 	lui	s4,0x9fc0
9fc02b90:	26942b94 	addiu	s4,s4,11156
9fc02b94:	10000049 	b	9fc02cbc <inst_error>
9fc02b98:	85170001 	lh	s7,1(t0)
9fc02b9c:	02f2001b 	divu	zero,s7,s2
9fc02ba0:	16570046 	bne	s2,s7,9fc02cbc <inst_error>
9fc02ba4:	00000000 	nop
9fc02ba8:	24120004 	li	s2,4
9fc02bac:	3c149fc0 	lui	s4,0x9fc0
9fc02bb0:	26942bb4 	addiu	s4,s4,11188
9fc02bb4:	11000041 	beqz	t0,9fc02cbc <inst_error>
9fc02bb8:	85170001 	lh	s7,1(t0)
9fc02bbc:	1657003f 	bne	s2,s7,9fc02cbc <inst_error>
9fc02bc0:	00000000 	nop
9fc02bc4:	3c149fc0 	lui	s4,0x9fc0
9fc02bc8:	26942bcc 	addiu	s4,s4,11212
9fc02bcc:	1000003b 	b	9fc02cbc <inst_error>
9fc02bd0:	95170003 	lhu	s7,3(t0)
9fc02bd4:	16570039 	bne	s2,s7,9fc02cbc <inst_error>
9fc02bd8:	00000000 	nop
9fc02bdc:	24120004 	li	s2,4
9fc02be0:	3c149fc0 	lui	s4,0x9fc0
9fc02be4:	26942be8 	addiu	s4,s4,11240
9fc02be8:	11000034 	beqz	t0,9fc02cbc <inst_error>
9fc02bec:	95170003 	lhu	s7,3(t0)
9fc02bf0:	16570032 	bne	s2,s7,9fc02cbc <inst_error>
9fc02bf4:	00000000 	nop
9fc02bf8:	24120005 	li	s2,5
9fc02bfc:	3c170005 	lui	s7,0x5
9fc02c00:	ad120000 	sw	s2,0(t0)
9fc02c04:	3c149fc0 	lui	s4,0x9fc0
9fc02c08:	26942c0c 	addiu	s4,s4,11276
9fc02c0c:	1000002b 	b	9fc02cbc <inst_error>
9fc02c10:	ad170002 	sw	s7,2(t0)
9fc02c14:	16570029 	bne	s2,s7,9fc02cbc <inst_error>
9fc02c18:	00000000 	nop
9fc02c1c:	24120005 	li	s2,5
9fc02c20:	3c149fc0 	lui	s4,0x9fc0
9fc02c24:	26942c28 	addiu	s4,s4,11304
9fc02c28:	11000024 	beqz	t0,9fc02cbc <inst_error>
9fc02c2c:	ad170002 	sw	s7,2(t0)
9fc02c30:	16570022 	bne	s2,s7,9fc02cbc <inst_error>
9fc02c34:	00000000 	nop
9fc02c38:	24120005 	li	s2,5
9fc02c3c:	3c149fc0 	lui	s4,0x9fc0
9fc02c40:	26942c44 	addiu	s4,s4,11332
9fc02c44:	1000001d 	b	9fc02cbc <inst_error>
9fc02c48:	a5170001 	sh	s7,1(t0)
9fc02c4c:	1657001b 	bne	s2,s7,9fc02cbc <inst_error>
9fc02c50:	00000000 	nop
9fc02c54:	24120005 	li	s2,5
9fc02c58:	3c149fc0 	lui	s4,0x9fc0
9fc02c5c:	26942c60 	addiu	s4,s4,11360
9fc02c60:	11000016 	beqz	t0,9fc02cbc <inst_error>
9fc02c64:	a5170001 	sh	s7,1(t0)
9fc02c68:	16570014 	bne	s2,s7,9fc02cbc <inst_error>
9fc02c6c:	00000000 	nop
9fc02c70:	24120007 	li	s2,7
9fc02c74:	3c170007 	lui	s7,0x7
9fc02c78:	ad120000 	sw	s2,0(t0)
9fc02c7c:	3c149fc0 	lui	s4,0x9fc0
9fc02c80:	26942c84 	addiu	s4,s4,11396
9fc02c84:	1000000d 	b	9fc02cbc <inst_error>
9fc02c88:	9e3c56aa 	0x9e3c56aa
9fc02c8c:	02f20018 	mult	s7,s2
9fc02c90:	1657000a 	bne	s2,s7,9fc02cbc <inst_error>
9fc02c94:	00000000 	nop
9fc02c98:	24120007 	li	s2,7
9fc02c9c:	3c149fc0 	lui	s4,0x9fc0
9fc02ca0:	26942ca8 	addiu	s4,s4,11432
9fc02ca4:	02f20018 	mult	s7,s2
9fc02ca8:	11000004 	beqz	t0,9fc02cbc <inst_error>
9fc02cac:	ec1ba960 	swc3	$27,-22176(zero)
9fc02cb0:	16570002 	bne	s2,s7,9fc02cbc <inst_error>
9fc02cb4:	00000000 	nop
9fc02cb8:	26730001 	addiu	s3,s3,1

9fc02cbc <inst_error>:
9fc02cbc:	00104e00 	sll	t1,s0,0x18
9fc02cc0:	01334025 	or	t0,t1,s3
9fc02cc4:	ae280000 	sw	t0,0(s1)
9fc02cc8:	03e00008 	jr	ra
9fc02ccc:	00000000 	nop

9fc02cd0 <n84_bne_ds_ex_test>:
9fc02cd0:	26100001 	addiu	s0,s0,1
9fc02cd4:	3c08800d 	lui	t0,0x800d
9fc02cd8:	40805800 	mtc0	zero,$11
9fc02cdc:	3c170040 	lui	s7,0x40
9fc02ce0:	40976000 	mtc0	s7,c0_sr
9fc02ce4:	00000000 	nop
9fc02ce8:	24120001 	li	s2,1
9fc02cec:	3c170001 	lui	s7,0x1
9fc02cf0:	ad120000 	sw	s2,0(t0)
9fc02cf4:	3c149fc0 	lui	s4,0x9fc0
9fc02cf8:	26942cfc 	addiu	s4,s4,11516
9fc02cfc:	140000af 	bnez	zero,9fc02fbc <inst_error>
9fc02d00:	0000000c 	syscall
9fc02d04:	165700ad 	bne	s2,s7,9fc02fbc <inst_error>
9fc02d08:	00000000 	nop
9fc02d0c:	24120001 	li	s2,1
9fc02d10:	3c149fc0 	lui	s4,0x9fc0
9fc02d14:	26942d18 	addiu	s4,s4,11544
9fc02d18:	150000a8 	bnez	t0,9fc02fbc <inst_error>
9fc02d1c:	0000000c 	syscall
9fc02d20:	165700a6 	bne	s2,s7,9fc02fbc <inst_error>
9fc02d24:	00000000 	nop
9fc02d28:	24120002 	li	s2,2
9fc02d2c:	3c170002 	lui	s7,0x2
9fc02d30:	ad120000 	sw	s2,0(t0)
9fc02d34:	3c149fc0 	lui	s4,0x9fc0
9fc02d38:	26942d3c 	addiu	s4,s4,11580
9fc02d3c:	1400009f 	bnez	zero,9fc02fbc <inst_error>
9fc02d40:	0000000d 	break
9fc02d44:	1657009d 	bne	s2,s7,9fc02fbc <inst_error>
9fc02d48:	00000000 	nop
9fc02d4c:	24120002 	li	s2,2
9fc02d50:	3c149fc0 	lui	s4,0x9fc0
9fc02d54:	26942d58 	addiu	s4,s4,11608
9fc02d58:	15000098 	bnez	t0,9fc02fbc <inst_error>
9fc02d5c:	0000000d 	break
9fc02d60:	16570096 	bne	s2,s7,9fc02fbc <inst_error>
9fc02d64:	00000000 	nop
9fc02d68:	24120003 	li	s2,3
9fc02d6c:	3c170003 	lui	s7,0x3
9fc02d70:	ad120000 	sw	s2,0(t0)
9fc02d74:	3c149fc0 	lui	s4,0x9fc0
9fc02d78:	26942d8c 	addiu	s4,s4,11660
9fc02d7c:	3c04ba03 	lui	a0,0xba03
9fc02d80:	34844f60 	ori	a0,a0,0x4f60
9fc02d84:	3c05b615 	lui	a1,0xb615
9fc02d88:	34a5fd67 	ori	a1,a1,0xfd67
9fc02d8c:	1400008b 	bnez	zero,9fc02fbc <inst_error>
9fc02d90:	0085b820 	add	s7,a0,a1
9fc02d94:	16570089 	bne	s2,s7,9fc02fbc <inst_error>
9fc02d98:	00000000 	nop
9fc02d9c:	24120003 	li	s2,3
9fc02da0:	3c149fc0 	lui	s4,0x9fc0
9fc02da4:	26942da8 	addiu	s4,s4,11688
9fc02da8:	15000084 	bnez	t0,9fc02fbc <inst_error>
9fc02dac:	0085b820 	add	s7,a0,a1
9fc02db0:	16570082 	bne	s2,s7,9fc02fbc <inst_error>
9fc02db4:	00000000 	nop
9fc02db8:	24120003 	li	s2,3
9fc02dbc:	3c149fc0 	lui	s4,0x9fc0
9fc02dc0:	26942dcc 	addiu	s4,s4,11724
9fc02dc4:	3c047fff 	lui	a0,0x7fff
9fc02dc8:	3484c19e 	ori	a0,a0,0xc19e
9fc02dcc:	1400007b 	bnez	zero,9fc02fbc <inst_error>
9fc02dd0:	20976512 	addi	s7,a0,25874
9fc02dd4:	16570079 	bne	s2,s7,9fc02fbc <inst_error>
9fc02dd8:	00000000 	nop
9fc02ddc:	24120003 	li	s2,3
9fc02de0:	3c149fc0 	lui	s4,0x9fc0
9fc02de4:	26942de8 	addiu	s4,s4,11752
9fc02de8:	15000074 	bnez	t0,9fc02fbc <inst_error>
9fc02dec:	20976512 	addi	s7,a0,25874
9fc02df0:	16570072 	bne	s2,s7,9fc02fbc <inst_error>
9fc02df4:	00000000 	nop
9fc02df8:	24120003 	li	s2,3
9fc02dfc:	3c149fc0 	lui	s4,0x9fc0
9fc02e00:	26942e14 	addiu	s4,s4,11796
9fc02e04:	3c04a85e 	lui	a0,0xa85e
9fc02e08:	34847d00 	ori	a0,a0,0x7d00
9fc02e0c:	3c056b7e 	lui	a1,0x6b7e
9fc02e10:	34a58e36 	ori	a1,a1,0x8e36
9fc02e14:	14000069 	bnez	zero,9fc02fbc <inst_error>
9fc02e18:	0085b822 	sub	s7,a0,a1
9fc02e1c:	16570067 	bne	s2,s7,9fc02fbc <inst_error>
9fc02e20:	00000000 	nop
9fc02e24:	24120003 	li	s2,3
9fc02e28:	3c149fc0 	lui	s4,0x9fc0
9fc02e2c:	26942e30 	addiu	s4,s4,11824
9fc02e30:	15000062 	bnez	t0,9fc02fbc <inst_error>
9fc02e34:	0085b822 	sub	s7,a0,a1
9fc02e38:	16570060 	bne	s2,s7,9fc02fbc <inst_error>
9fc02e3c:	00000000 	nop
9fc02e40:	24120004 	li	s2,4
9fc02e44:	3c170004 	lui	s7,0x4
9fc02e48:	ad120000 	sw	s2,0(t0)
9fc02e4c:	3c149fc0 	lui	s4,0x9fc0
9fc02e50:	26942e54 	addiu	s4,s4,11860
9fc02e54:	14000059 	bnez	zero,9fc02fbc <inst_error>
9fc02e58:	8d170002 	lw	s7,2(t0)
9fc02e5c:	ad170000 	sw	s7,0(t0)
9fc02e60:	16570056 	bne	s2,s7,9fc02fbc <inst_error>
9fc02e64:	00000000 	nop
9fc02e68:	24120004 	li	s2,4
9fc02e6c:	ad120000 	sw	s2,0(t0)
9fc02e70:	3c149fc0 	lui	s4,0x9fc0
9fc02e74:	26942e78 	addiu	s4,s4,11896
9fc02e78:	15000050 	bnez	t0,9fc02fbc <inst_error>
9fc02e7c:	8d170002 	lw	s7,2(t0)
9fc02e80:	1657004e 	bne	s2,s7,9fc02fbc <inst_error>
9fc02e84:	00000000 	nop
9fc02e88:	24120004 	li	s2,4
9fc02e8c:	3c149fc0 	lui	s4,0x9fc0
9fc02e90:	26942e94 	addiu	s4,s4,11924
9fc02e94:	14000049 	bnez	zero,9fc02fbc <inst_error>
9fc02e98:	85170001 	lh	s7,1(t0)
9fc02e9c:	16570047 	bne	s2,s7,9fc02fbc <inst_error>
9fc02ea0:	00000000 	nop
9fc02ea4:	24120004 	li	s2,4
9fc02ea8:	3c149fc0 	lui	s4,0x9fc0
9fc02eac:	26942eb0 	addiu	s4,s4,11952
9fc02eb0:	15000042 	bnez	t0,9fc02fbc <inst_error>
9fc02eb4:	85170001 	lh	s7,1(t0)
9fc02eb8:	16570040 	bne	s2,s7,9fc02fbc <inst_error>
9fc02ebc:	00000000 	nop
9fc02ec0:	3c149fc0 	lui	s4,0x9fc0
9fc02ec4:	26942ec8 	addiu	s4,s4,11976
9fc02ec8:	1400003c 	bnez	zero,9fc02fbc <inst_error>
9fc02ecc:	95170003 	lhu	s7,3(t0)
9fc02ed0:	1657003a 	bne	s2,s7,9fc02fbc <inst_error>
9fc02ed4:	00000000 	nop
9fc02ed8:	24120004 	li	s2,4
9fc02edc:	3c149fc0 	lui	s4,0x9fc0
9fc02ee0:	26942ee4 	addiu	s4,s4,12004
9fc02ee4:	15000035 	bnez	t0,9fc02fbc <inst_error>
9fc02ee8:	95170003 	lhu	s7,3(t0)
9fc02eec:	16570033 	bne	s2,s7,9fc02fbc <inst_error>
9fc02ef0:	00000000 	nop
9fc02ef4:	24120005 	li	s2,5
9fc02ef8:	3c170005 	lui	s7,0x5
9fc02efc:	ad120000 	sw	s2,0(t0)
9fc02f00:	3c149fc0 	lui	s4,0x9fc0
9fc02f04:	26942f08 	addiu	s4,s4,12040
9fc02f08:	1400002c 	bnez	zero,9fc02fbc <inst_error>
9fc02f0c:	ad170002 	sw	s7,2(t0)
9fc02f10:	02f2001b 	divu	zero,s7,s2
9fc02f14:	16570029 	bne	s2,s7,9fc02fbc <inst_error>
9fc02f18:	00000000 	nop
9fc02f1c:	24120005 	li	s2,5
9fc02f20:	3c149fc0 	lui	s4,0x9fc0
9fc02f24:	26942f28 	addiu	s4,s4,12072
9fc02f28:	15000024 	bnez	t0,9fc02fbc <inst_error>
9fc02f2c:	ad170002 	sw	s7,2(t0)
9fc02f30:	16570022 	bne	s2,s7,9fc02fbc <inst_error>
9fc02f34:	00000000 	nop
9fc02f38:	24120005 	li	s2,5
9fc02f3c:	3c149fc0 	lui	s4,0x9fc0
9fc02f40:	26942f44 	addiu	s4,s4,12100
9fc02f44:	1400001d 	bnez	zero,9fc02fbc <inst_error>
9fc02f48:	a5170001 	sh	s7,1(t0)
9fc02f4c:	1657001b 	bne	s2,s7,9fc02fbc <inst_error>
9fc02f50:	00000000 	nop
9fc02f54:	24120005 	li	s2,5
9fc02f58:	3c149fc0 	lui	s4,0x9fc0
9fc02f5c:	26942f60 	addiu	s4,s4,12128
9fc02f60:	15000016 	bnez	t0,9fc02fbc <inst_error>
9fc02f64:	a5170001 	sh	s7,1(t0)
9fc02f68:	16570014 	bne	s2,s7,9fc02fbc <inst_error>
9fc02f6c:	00000000 	nop
9fc02f70:	24120007 	li	s2,7
9fc02f74:	3c170007 	lui	s7,0x7
9fc02f78:	ad120000 	sw	s2,0(t0)
9fc02f7c:	3c149fc0 	lui	s4,0x9fc0
9fc02f80:	26942f84 	addiu	s4,s4,12164
9fc02f84:	1400000d 	bnez	zero,9fc02fbc <inst_error>
9fc02f88:	9e3c56aa 	0x9e3c56aa
9fc02f8c:	02f20018 	mult	s7,s2
9fc02f90:	1657000a 	bne	s2,s7,9fc02fbc <inst_error>
9fc02f94:	00000000 	nop
9fc02f98:	24120007 	li	s2,7
9fc02f9c:	3c149fc0 	lui	s4,0x9fc0
9fc02fa0:	26942fa8 	addiu	s4,s4,12200
9fc02fa4:	02f20018 	mult	s7,s2
9fc02fa8:	15000004 	bnez	t0,9fc02fbc <inst_error>
9fc02fac:	ec1ba960 	swc3	$27,-22176(zero)
9fc02fb0:	16570002 	bne	s2,s7,9fc02fbc <inst_error>
9fc02fb4:	00000000 	nop
9fc02fb8:	26730001 	addiu	s3,s3,1

9fc02fbc <inst_error>:
9fc02fbc:	00104e00 	sll	t1,s0,0x18
9fc02fc0:	01334025 	or	t0,t1,s3
9fc02fc4:	ae280000 	sw	t0,0(s1)
9fc02fc8:	03e00008 	jr	ra
9fc02fcc:	00000000 	nop

9fc02fd0 <n85_bgez_ds_ex_test>:
9fc02fd0:	26100001 	addiu	s0,s0,1
9fc02fd4:	3c08800d 	lui	t0,0x800d
9fc02fd8:	40805800 	mtc0	zero,$11
9fc02fdc:	3c170040 	lui	s7,0x40
9fc02fe0:	40976000 	mtc0	s7,c0_sr
9fc02fe4:	00000000 	nop
9fc02fe8:	24120001 	li	s2,1
9fc02fec:	3c170001 	lui	s7,0x1
9fc02ff0:	ad120000 	sw	s2,0(t0)
9fc02ff4:	3c149fc0 	lui	s4,0x9fc0
9fc02ff8:	26942ffc 	addiu	s4,s4,12284
9fc02ffc:	040100af 	b	9fc032bc <inst_error>
9fc03000:	0000000c 	syscall
9fc03004:	165700ad 	bne	s2,s7,9fc032bc <inst_error>
9fc03008:	00000000 	nop
9fc0300c:	24120001 	li	s2,1
9fc03010:	3c149fc0 	lui	s4,0x9fc0
9fc03014:	26943018 	addiu	s4,s4,12312
9fc03018:	050100a8 	bgez	t0,9fc032bc <inst_error>
9fc0301c:	0000000c 	syscall
9fc03020:	165700a6 	bne	s2,s7,9fc032bc <inst_error>
9fc03024:	00000000 	nop
9fc03028:	24120002 	li	s2,2
9fc0302c:	3c170002 	lui	s7,0x2
9fc03030:	ad120000 	sw	s2,0(t0)
9fc03034:	3c149fc0 	lui	s4,0x9fc0
9fc03038:	2694303c 	addiu	s4,s4,12348
9fc0303c:	0401009f 	b	9fc032bc <inst_error>
9fc03040:	0000000d 	break
9fc03044:	1657009d 	bne	s2,s7,9fc032bc <inst_error>
9fc03048:	00000000 	nop
9fc0304c:	24120002 	li	s2,2
9fc03050:	3c149fc0 	lui	s4,0x9fc0
9fc03054:	26943058 	addiu	s4,s4,12376
9fc03058:	05010098 	bgez	t0,9fc032bc <inst_error>
9fc0305c:	0000000d 	break
9fc03060:	16570096 	bne	s2,s7,9fc032bc <inst_error>
9fc03064:	00000000 	nop
9fc03068:	24120003 	li	s2,3
9fc0306c:	3c170003 	lui	s7,0x3
9fc03070:	ad120000 	sw	s2,0(t0)
9fc03074:	3c149fc0 	lui	s4,0x9fc0
9fc03078:	2694308c 	addiu	s4,s4,12428
9fc0307c:	3c04ba03 	lui	a0,0xba03
9fc03080:	34844f60 	ori	a0,a0,0x4f60
9fc03084:	3c05b615 	lui	a1,0xb615
9fc03088:	34a5fd67 	ori	a1,a1,0xfd67
9fc0308c:	0401008b 	b	9fc032bc <inst_error>
9fc03090:	0085b820 	add	s7,a0,a1
9fc03094:	16570089 	bne	s2,s7,9fc032bc <inst_error>
9fc03098:	00000000 	nop
9fc0309c:	24120003 	li	s2,3
9fc030a0:	3c149fc0 	lui	s4,0x9fc0
9fc030a4:	269430a8 	addiu	s4,s4,12456
9fc030a8:	05010084 	bgez	t0,9fc032bc <inst_error>
9fc030ac:	0085b820 	add	s7,a0,a1
9fc030b0:	ad170000 	sw	s7,0(t0)
9fc030b4:	16570081 	bne	s2,s7,9fc032bc <inst_error>
9fc030b8:	00000000 	nop
9fc030bc:	24120003 	li	s2,3
9fc030c0:	ad120000 	sw	s2,0(t0)
9fc030c4:	3c149fc0 	lui	s4,0x9fc0
9fc030c8:	269430d4 	addiu	s4,s4,12500
9fc030cc:	3c047fff 	lui	a0,0x7fff
9fc030d0:	3484c19e 	ori	a0,a0,0xc19e
9fc030d4:	04010079 	b	9fc032bc <inst_error>
9fc030d8:	20976512 	addi	s7,a0,25874
9fc030dc:	16570077 	bne	s2,s7,9fc032bc <inst_error>
9fc030e0:	00000000 	nop
9fc030e4:	24120003 	li	s2,3
9fc030e8:	3c149fc0 	lui	s4,0x9fc0
9fc030ec:	269430f0 	addiu	s4,s4,12528
9fc030f0:	05010072 	bgez	t0,9fc032bc <inst_error>
9fc030f4:	20976512 	addi	s7,a0,25874
9fc030f8:	16570070 	bne	s2,s7,9fc032bc <inst_error>
9fc030fc:	00000000 	nop
9fc03100:	24120003 	li	s2,3
9fc03104:	3c149fc0 	lui	s4,0x9fc0
9fc03108:	2694311c 	addiu	s4,s4,12572
9fc0310c:	3c04a85e 	lui	a0,0xa85e
9fc03110:	34847d00 	ori	a0,a0,0x7d00
9fc03114:	3c056b7e 	lui	a1,0x6b7e
9fc03118:	34a58e36 	ori	a1,a1,0x8e36
9fc0311c:	04010067 	b	9fc032bc <inst_error>
9fc03120:	0085b822 	sub	s7,a0,a1
9fc03124:	16570065 	bne	s2,s7,9fc032bc <inst_error>
9fc03128:	00000000 	nop
9fc0312c:	24120003 	li	s2,3
9fc03130:	3c149fc0 	lui	s4,0x9fc0
9fc03134:	26943138 	addiu	s4,s4,12600
9fc03138:	05010060 	bgez	t0,9fc032bc <inst_error>
9fc0313c:	0085b822 	sub	s7,a0,a1
9fc03140:	1657005e 	bne	s2,s7,9fc032bc <inst_error>
9fc03144:	00000000 	nop
9fc03148:	24120004 	li	s2,4
9fc0314c:	3c170004 	lui	s7,0x4
9fc03150:	ad120000 	sw	s2,0(t0)
9fc03154:	3c149fc0 	lui	s4,0x9fc0
9fc03158:	2694315c 	addiu	s4,s4,12636
9fc0315c:	04010057 	b	9fc032bc <inst_error>
9fc03160:	8d170002 	lw	s7,2(t0)
9fc03164:	16570055 	bne	s2,s7,9fc032bc <inst_error>
9fc03168:	00000000 	nop
9fc0316c:	24120004 	li	s2,4
9fc03170:	3c149fc0 	lui	s4,0x9fc0
9fc03174:	26943178 	addiu	s4,s4,12664
9fc03178:	05010050 	bgez	t0,9fc032bc <inst_error>
9fc0317c:	8d170002 	lw	s7,2(t0)
9fc03180:	1657004e 	bne	s2,s7,9fc032bc <inst_error>
9fc03184:	00000000 	nop
9fc03188:	24120004 	li	s2,4
9fc0318c:	3c149fc0 	lui	s4,0x9fc0
9fc03190:	26943194 	addiu	s4,s4,12692
9fc03194:	04010049 	b	9fc032bc <inst_error>
9fc03198:	85170001 	lh	s7,1(t0)
9fc0319c:	02f2001b 	divu	zero,s7,s2
9fc031a0:	16570046 	bne	s2,s7,9fc032bc <inst_error>
9fc031a4:	00000000 	nop
9fc031a8:	24120004 	li	s2,4
9fc031ac:	3c149fc0 	lui	s4,0x9fc0
9fc031b0:	269431b4 	addiu	s4,s4,12724
9fc031b4:	05010041 	bgez	t0,9fc032bc <inst_error>
9fc031b8:	85170001 	lh	s7,1(t0)
9fc031bc:	1657003f 	bne	s2,s7,9fc032bc <inst_error>
9fc031c0:	00000000 	nop
9fc031c4:	3c149fc0 	lui	s4,0x9fc0
9fc031c8:	269431cc 	addiu	s4,s4,12748
9fc031cc:	0401003b 	b	9fc032bc <inst_error>
9fc031d0:	95170003 	lhu	s7,3(t0)
9fc031d4:	16570039 	bne	s2,s7,9fc032bc <inst_error>
9fc031d8:	00000000 	nop
9fc031dc:	24120004 	li	s2,4
9fc031e0:	3c149fc0 	lui	s4,0x9fc0
9fc031e4:	269431e8 	addiu	s4,s4,12776
9fc031e8:	05010034 	bgez	t0,9fc032bc <inst_error>
9fc031ec:	95170003 	lhu	s7,3(t0)
9fc031f0:	16570032 	bne	s2,s7,9fc032bc <inst_error>
9fc031f4:	00000000 	nop
9fc031f8:	24120005 	li	s2,5
9fc031fc:	3c170005 	lui	s7,0x5
9fc03200:	ad120000 	sw	s2,0(t0)
9fc03204:	3c149fc0 	lui	s4,0x9fc0
9fc03208:	2694320c 	addiu	s4,s4,12812
9fc0320c:	0401002b 	b	9fc032bc <inst_error>
9fc03210:	ad170002 	sw	s7,2(t0)
9fc03214:	16570029 	bne	s2,s7,9fc032bc <inst_error>
9fc03218:	00000000 	nop
9fc0321c:	24120005 	li	s2,5
9fc03220:	3c149fc0 	lui	s4,0x9fc0
9fc03224:	26943228 	addiu	s4,s4,12840
9fc03228:	05010024 	bgez	t0,9fc032bc <inst_error>
9fc0322c:	ad170002 	sw	s7,2(t0)
9fc03230:	16570022 	bne	s2,s7,9fc032bc <inst_error>
9fc03234:	00000000 	nop
9fc03238:	24120005 	li	s2,5
9fc0323c:	3c149fc0 	lui	s4,0x9fc0
9fc03240:	26943244 	addiu	s4,s4,12868
9fc03244:	0401001d 	b	9fc032bc <inst_error>
9fc03248:	a5170001 	sh	s7,1(t0)
9fc0324c:	1657001b 	bne	s2,s7,9fc032bc <inst_error>
9fc03250:	00000000 	nop
9fc03254:	24120005 	li	s2,5
9fc03258:	3c149fc0 	lui	s4,0x9fc0
9fc0325c:	26943260 	addiu	s4,s4,12896
9fc03260:	05010016 	bgez	t0,9fc032bc <inst_error>
9fc03264:	a5170001 	sh	s7,1(t0)
9fc03268:	16570014 	bne	s2,s7,9fc032bc <inst_error>
9fc0326c:	00000000 	nop
9fc03270:	24120007 	li	s2,7
9fc03274:	3c170007 	lui	s7,0x7
9fc03278:	ad120000 	sw	s2,0(t0)
9fc0327c:	3c149fc0 	lui	s4,0x9fc0
9fc03280:	26943284 	addiu	s4,s4,12932
9fc03284:	0401000d 	b	9fc032bc <inst_error>
9fc03288:	9e3c56aa 	0x9e3c56aa
9fc0328c:	02f20018 	mult	s7,s2
9fc03290:	1657000a 	bne	s2,s7,9fc032bc <inst_error>
9fc03294:	00000000 	nop
9fc03298:	24120007 	li	s2,7
9fc0329c:	3c149fc0 	lui	s4,0x9fc0
9fc032a0:	269432a8 	addiu	s4,s4,12968
9fc032a4:	02f20018 	mult	s7,s2
9fc032a8:	05010004 	bgez	t0,9fc032bc <inst_error>
9fc032ac:	ec1ba960 	swc3	$27,-22176(zero)
9fc032b0:	16570002 	bne	s2,s7,9fc032bc <inst_error>
9fc032b4:	00000000 	nop
9fc032b8:	26730001 	addiu	s3,s3,1

9fc032bc <inst_error>:
9fc032bc:	00104e00 	sll	t1,s0,0x18
9fc032c0:	01334025 	or	t0,t1,s3
9fc032c4:	ae280000 	sw	t0,0(s1)
9fc032c8:	03e00008 	jr	ra
9fc032cc:	00000000 	nop

9fc032d0 <n86_bgtz_ds_ex_test>:
9fc032d0:	26100001 	addiu	s0,s0,1
9fc032d4:	3c08800d 	lui	t0,0x800d
9fc032d8:	40805800 	mtc0	zero,$11
9fc032dc:	3c170040 	lui	s7,0x40
9fc032e0:	40976000 	mtc0	s7,c0_sr
9fc032e4:	00000000 	nop
9fc032e8:	24120001 	li	s2,1
9fc032ec:	3c170001 	lui	s7,0x1
9fc032f0:	ad120000 	sw	s2,0(t0)
9fc032f4:	3c149fc0 	lui	s4,0x9fc0
9fc032f8:	269432fc 	addiu	s4,s4,13052
9fc032fc:	1e4000af 	bgtz	s2,9fc035bc <inst_error>
9fc03300:	0000000c 	syscall
9fc03304:	165700ad 	bne	s2,s7,9fc035bc <inst_error>
9fc03308:	00000000 	nop
9fc0330c:	24120001 	li	s2,1
9fc03310:	3c149fc0 	lui	s4,0x9fc0
9fc03314:	26943318 	addiu	s4,s4,13080
9fc03318:	1d0000a8 	bgtz	t0,9fc035bc <inst_error>
9fc0331c:	0000000c 	syscall
9fc03320:	165700a6 	bne	s2,s7,9fc035bc <inst_error>
9fc03324:	00000000 	nop
9fc03328:	24120002 	li	s2,2
9fc0332c:	3c170002 	lui	s7,0x2
9fc03330:	ad120000 	sw	s2,0(t0)
9fc03334:	3c149fc0 	lui	s4,0x9fc0
9fc03338:	2694333c 	addiu	s4,s4,13116
9fc0333c:	1e40009f 	bgtz	s2,9fc035bc <inst_error>
9fc03340:	0000000d 	break
9fc03344:	1657009d 	bne	s2,s7,9fc035bc <inst_error>
9fc03348:	00000000 	nop
9fc0334c:	24120002 	li	s2,2
9fc03350:	3c149fc0 	lui	s4,0x9fc0
9fc03354:	26943358 	addiu	s4,s4,13144
9fc03358:	1d000098 	bgtz	t0,9fc035bc <inst_error>
9fc0335c:	0000000d 	break
9fc03360:	16570096 	bne	s2,s7,9fc035bc <inst_error>
9fc03364:	00000000 	nop
9fc03368:	24120003 	li	s2,3
9fc0336c:	3c170003 	lui	s7,0x3
9fc03370:	ad120000 	sw	s2,0(t0)
9fc03374:	3c149fc0 	lui	s4,0x9fc0
9fc03378:	2694338c 	addiu	s4,s4,13196
9fc0337c:	3c04ba03 	lui	a0,0xba03
9fc03380:	34844f60 	ori	a0,a0,0x4f60
9fc03384:	3c05b615 	lui	a1,0xb615
9fc03388:	34a5fd67 	ori	a1,a1,0xfd67
9fc0338c:	1e40008b 	bgtz	s2,9fc035bc <inst_error>
9fc03390:	0085b820 	add	s7,a0,a1
9fc03394:	16570089 	bne	s2,s7,9fc035bc <inst_error>
9fc03398:	00000000 	nop
9fc0339c:	24120003 	li	s2,3
9fc033a0:	3c149fc0 	lui	s4,0x9fc0
9fc033a4:	269433a8 	addiu	s4,s4,13224
9fc033a8:	1d000084 	bgtz	t0,9fc035bc <inst_error>
9fc033ac:	0085b820 	add	s7,a0,a1
9fc033b0:	ad170000 	sw	s7,0(t0)
9fc033b4:	16570081 	bne	s2,s7,9fc035bc <inst_error>
9fc033b8:	00000000 	nop
9fc033bc:	24120003 	li	s2,3
9fc033c0:	ad120000 	sw	s2,0(t0)
9fc033c4:	3c149fc0 	lui	s4,0x9fc0
9fc033c8:	269433d4 	addiu	s4,s4,13268
9fc033cc:	3c047fff 	lui	a0,0x7fff
9fc033d0:	3484c19e 	ori	a0,a0,0xc19e
9fc033d4:	1e400079 	bgtz	s2,9fc035bc <inst_error>
9fc033d8:	20976512 	addi	s7,a0,25874
9fc033dc:	16570077 	bne	s2,s7,9fc035bc <inst_error>
9fc033e0:	00000000 	nop
9fc033e4:	24120003 	li	s2,3
9fc033e8:	3c149fc0 	lui	s4,0x9fc0
9fc033ec:	269433f0 	addiu	s4,s4,13296
9fc033f0:	1d000072 	bgtz	t0,9fc035bc <inst_error>
9fc033f4:	20976512 	addi	s7,a0,25874
9fc033f8:	16570070 	bne	s2,s7,9fc035bc <inst_error>
9fc033fc:	00000000 	nop
9fc03400:	24120003 	li	s2,3
9fc03404:	3c149fc0 	lui	s4,0x9fc0
9fc03408:	2694341c 	addiu	s4,s4,13340
9fc0340c:	3c04a85e 	lui	a0,0xa85e
9fc03410:	34847d00 	ori	a0,a0,0x7d00
9fc03414:	3c056b7e 	lui	a1,0x6b7e
9fc03418:	34a58e36 	ori	a1,a1,0x8e36
9fc0341c:	1e400067 	bgtz	s2,9fc035bc <inst_error>
9fc03420:	0085b822 	sub	s7,a0,a1
9fc03424:	16570065 	bne	s2,s7,9fc035bc <inst_error>
9fc03428:	00000000 	nop
9fc0342c:	24120003 	li	s2,3
9fc03430:	3c149fc0 	lui	s4,0x9fc0
9fc03434:	26943438 	addiu	s4,s4,13368
9fc03438:	1d000060 	bgtz	t0,9fc035bc <inst_error>
9fc0343c:	0085b822 	sub	s7,a0,a1
9fc03440:	1657005e 	bne	s2,s7,9fc035bc <inst_error>
9fc03444:	00000000 	nop
9fc03448:	24120004 	li	s2,4
9fc0344c:	3c170004 	lui	s7,0x4
9fc03450:	ad120000 	sw	s2,0(t0)
9fc03454:	3c149fc0 	lui	s4,0x9fc0
9fc03458:	2694345c 	addiu	s4,s4,13404
9fc0345c:	1e400057 	bgtz	s2,9fc035bc <inst_error>
9fc03460:	8d170002 	lw	s7,2(t0)
9fc03464:	16570055 	bne	s2,s7,9fc035bc <inst_error>
9fc03468:	00000000 	nop
9fc0346c:	24120004 	li	s2,4
9fc03470:	3c149fc0 	lui	s4,0x9fc0
9fc03474:	26943478 	addiu	s4,s4,13432
9fc03478:	1d000050 	bgtz	t0,9fc035bc <inst_error>
9fc0347c:	8d170002 	lw	s7,2(t0)
9fc03480:	1657004e 	bne	s2,s7,9fc035bc <inst_error>
9fc03484:	00000000 	nop
9fc03488:	24120004 	li	s2,4
9fc0348c:	3c149fc0 	lui	s4,0x9fc0
9fc03490:	26943494 	addiu	s4,s4,13460
9fc03494:	1e400049 	bgtz	s2,9fc035bc <inst_error>
9fc03498:	85170001 	lh	s7,1(t0)
9fc0349c:	02f2001b 	divu	zero,s7,s2
9fc034a0:	16570046 	bne	s2,s7,9fc035bc <inst_error>
9fc034a4:	00000000 	nop
9fc034a8:	24120004 	li	s2,4
9fc034ac:	3c149fc0 	lui	s4,0x9fc0
9fc034b0:	269434b4 	addiu	s4,s4,13492
9fc034b4:	1d000041 	bgtz	t0,9fc035bc <inst_error>
9fc034b8:	85170001 	lh	s7,1(t0)
9fc034bc:	1657003f 	bne	s2,s7,9fc035bc <inst_error>
9fc034c0:	00000000 	nop
9fc034c4:	3c149fc0 	lui	s4,0x9fc0
9fc034c8:	269434cc 	addiu	s4,s4,13516
9fc034cc:	1e40003b 	bgtz	s2,9fc035bc <inst_error>
9fc034d0:	95170003 	lhu	s7,3(t0)
9fc034d4:	16570039 	bne	s2,s7,9fc035bc <inst_error>
9fc034d8:	00000000 	nop
9fc034dc:	24120004 	li	s2,4
9fc034e0:	3c149fc0 	lui	s4,0x9fc0
9fc034e4:	269434e8 	addiu	s4,s4,13544
9fc034e8:	1d000034 	bgtz	t0,9fc035bc <inst_error>
9fc034ec:	95170003 	lhu	s7,3(t0)
9fc034f0:	16570032 	bne	s2,s7,9fc035bc <inst_error>
9fc034f4:	00000000 	nop
9fc034f8:	24120005 	li	s2,5
9fc034fc:	3c170005 	lui	s7,0x5
9fc03500:	ad120000 	sw	s2,0(t0)
9fc03504:	3c149fc0 	lui	s4,0x9fc0
9fc03508:	2694350c 	addiu	s4,s4,13580
9fc0350c:	1e40002b 	bgtz	s2,9fc035bc <inst_error>
9fc03510:	ad170002 	sw	s7,2(t0)
9fc03514:	16570029 	bne	s2,s7,9fc035bc <inst_error>
9fc03518:	00000000 	nop
9fc0351c:	24120005 	li	s2,5
9fc03520:	3c149fc0 	lui	s4,0x9fc0
9fc03524:	26943528 	addiu	s4,s4,13608
9fc03528:	1d000024 	bgtz	t0,9fc035bc <inst_error>
9fc0352c:	ad170002 	sw	s7,2(t0)
9fc03530:	16570022 	bne	s2,s7,9fc035bc <inst_error>
9fc03534:	00000000 	nop
9fc03538:	24120005 	li	s2,5
9fc0353c:	3c149fc0 	lui	s4,0x9fc0
9fc03540:	26943544 	addiu	s4,s4,13636
9fc03544:	1e40001d 	bgtz	s2,9fc035bc <inst_error>
9fc03548:	a5170001 	sh	s7,1(t0)
9fc0354c:	1657001b 	bne	s2,s7,9fc035bc <inst_error>
9fc03550:	00000000 	nop
9fc03554:	24120005 	li	s2,5
9fc03558:	3c149fc0 	lui	s4,0x9fc0
9fc0355c:	26943560 	addiu	s4,s4,13664
9fc03560:	1d000016 	bgtz	t0,9fc035bc <inst_error>
9fc03564:	a5170001 	sh	s7,1(t0)
9fc03568:	16570014 	bne	s2,s7,9fc035bc <inst_error>
9fc0356c:	00000000 	nop
9fc03570:	24120007 	li	s2,7
9fc03574:	3c170007 	lui	s7,0x7
9fc03578:	ad120000 	sw	s2,0(t0)
9fc0357c:	3c149fc0 	lui	s4,0x9fc0
9fc03580:	26943584 	addiu	s4,s4,13700
9fc03584:	1e40000d 	bgtz	s2,9fc035bc <inst_error>
9fc03588:	9e3c56aa 	0x9e3c56aa
9fc0358c:	02f20018 	mult	s7,s2
9fc03590:	1657000a 	bne	s2,s7,9fc035bc <inst_error>
9fc03594:	00000000 	nop
9fc03598:	24120007 	li	s2,7
9fc0359c:	3c149fc0 	lui	s4,0x9fc0
9fc035a0:	269435a8 	addiu	s4,s4,13736
9fc035a4:	02f20018 	mult	s7,s2
9fc035a8:	1d000004 	bgtz	t0,9fc035bc <inst_error>
9fc035ac:	ec1ba960 	swc3	$27,-22176(zero)
9fc035b0:	16570002 	bne	s2,s7,9fc035bc <inst_error>
9fc035b4:	00000000 	nop
9fc035b8:	26730001 	addiu	s3,s3,1

9fc035bc <inst_error>:
9fc035bc:	00104e00 	sll	t1,s0,0x18
9fc035c0:	01334025 	or	t0,t1,s3
9fc035c4:	ae280000 	sw	t0,0(s1)
9fc035c8:	03e00008 	jr	ra
9fc035cc:	00000000 	nop

9fc035d0 <n87_blez_ds_ex_test>:
9fc035d0:	26100001 	addiu	s0,s0,1
9fc035d4:	3c08800d 	lui	t0,0x800d
9fc035d8:	40805800 	mtc0	zero,$11
9fc035dc:	3c170040 	lui	s7,0x40
9fc035e0:	40976000 	mtc0	s7,c0_sr
9fc035e4:	00000000 	nop
9fc035e8:	24120001 	li	s2,1
9fc035ec:	3c170001 	lui	s7,0x1
9fc035f0:	ad120000 	sw	s2,0(t0)
9fc035f4:	3c149fc0 	lui	s4,0x9fc0
9fc035f8:	269435fc 	addiu	s4,s4,13820
9fc035fc:	180000af 	blez	zero,9fc038bc <inst_error>
9fc03600:	0000000c 	syscall
9fc03604:	165700ad 	bne	s2,s7,9fc038bc <inst_error>
9fc03608:	00000000 	nop
9fc0360c:	24120001 	li	s2,1
9fc03610:	3c149fc0 	lui	s4,0x9fc0
9fc03614:	26943618 	addiu	s4,s4,13848
9fc03618:	1a4000a8 	blez	s2,9fc038bc <inst_error>
9fc0361c:	0000000c 	syscall
9fc03620:	165700a6 	bne	s2,s7,9fc038bc <inst_error>
9fc03624:	00000000 	nop
9fc03628:	24120002 	li	s2,2
9fc0362c:	3c170002 	lui	s7,0x2
9fc03630:	ad120000 	sw	s2,0(t0)
9fc03634:	3c149fc0 	lui	s4,0x9fc0
9fc03638:	2694363c 	addiu	s4,s4,13884
9fc0363c:	1800009f 	blez	zero,9fc038bc <inst_error>
9fc03640:	0000000d 	break
9fc03644:	1657009d 	bne	s2,s7,9fc038bc <inst_error>
9fc03648:	00000000 	nop
9fc0364c:	24120002 	li	s2,2
9fc03650:	3c149fc0 	lui	s4,0x9fc0
9fc03654:	26943658 	addiu	s4,s4,13912
9fc03658:	1a400098 	blez	s2,9fc038bc <inst_error>
9fc0365c:	0000000d 	break
9fc03660:	16570096 	bne	s2,s7,9fc038bc <inst_error>
9fc03664:	00000000 	nop
9fc03668:	24120003 	li	s2,3
9fc0366c:	3c170003 	lui	s7,0x3
9fc03670:	ad120000 	sw	s2,0(t0)
9fc03674:	3c149fc0 	lui	s4,0x9fc0
9fc03678:	2694368c 	addiu	s4,s4,13964
9fc0367c:	3c04ba03 	lui	a0,0xba03
9fc03680:	34844f60 	ori	a0,a0,0x4f60
9fc03684:	3c05b615 	lui	a1,0xb615
9fc03688:	34a5fd67 	ori	a1,a1,0xfd67
9fc0368c:	1800008b 	blez	zero,9fc038bc <inst_error>
9fc03690:	0085b820 	add	s7,a0,a1
9fc03694:	16570089 	bne	s2,s7,9fc038bc <inst_error>
9fc03698:	00000000 	nop
9fc0369c:	24120003 	li	s2,3
9fc036a0:	3c149fc0 	lui	s4,0x9fc0
9fc036a4:	269436a8 	addiu	s4,s4,13992
9fc036a8:	1a400084 	blez	s2,9fc038bc <inst_error>
9fc036ac:	0085b820 	add	s7,a0,a1
9fc036b0:	ad170000 	sw	s7,0(t0)
9fc036b4:	16570081 	bne	s2,s7,9fc038bc <inst_error>
9fc036b8:	00000000 	nop
9fc036bc:	24120003 	li	s2,3
9fc036c0:	ad120000 	sw	s2,0(t0)
9fc036c4:	3c149fc0 	lui	s4,0x9fc0
9fc036c8:	269436d4 	addiu	s4,s4,14036
9fc036cc:	3c047fff 	lui	a0,0x7fff
9fc036d0:	3484c19e 	ori	a0,a0,0xc19e
9fc036d4:	18000079 	blez	zero,9fc038bc <inst_error>
9fc036d8:	20976512 	addi	s7,a0,25874
9fc036dc:	16570077 	bne	s2,s7,9fc038bc <inst_error>
9fc036e0:	00000000 	nop
9fc036e4:	24120003 	li	s2,3
9fc036e8:	3c149fc0 	lui	s4,0x9fc0
9fc036ec:	269436f0 	addiu	s4,s4,14064
9fc036f0:	1a400072 	blez	s2,9fc038bc <inst_error>
9fc036f4:	20976512 	addi	s7,a0,25874
9fc036f8:	16570070 	bne	s2,s7,9fc038bc <inst_error>
9fc036fc:	00000000 	nop
9fc03700:	24120003 	li	s2,3
9fc03704:	3c149fc0 	lui	s4,0x9fc0
9fc03708:	2694371c 	addiu	s4,s4,14108
9fc0370c:	3c04a85e 	lui	a0,0xa85e
9fc03710:	34847d00 	ori	a0,a0,0x7d00
9fc03714:	3c056b7e 	lui	a1,0x6b7e
9fc03718:	34a58e36 	ori	a1,a1,0x8e36
9fc0371c:	18000067 	blez	zero,9fc038bc <inst_error>
9fc03720:	0085b822 	sub	s7,a0,a1
9fc03724:	16570065 	bne	s2,s7,9fc038bc <inst_error>
9fc03728:	00000000 	nop
9fc0372c:	24120003 	li	s2,3
9fc03730:	3c149fc0 	lui	s4,0x9fc0
9fc03734:	26943738 	addiu	s4,s4,14136
9fc03738:	1a400060 	blez	s2,9fc038bc <inst_error>
9fc0373c:	0085b822 	sub	s7,a0,a1
9fc03740:	1657005e 	bne	s2,s7,9fc038bc <inst_error>
9fc03744:	00000000 	nop
9fc03748:	24120004 	li	s2,4
9fc0374c:	3c170004 	lui	s7,0x4
9fc03750:	ad120000 	sw	s2,0(t0)
9fc03754:	3c149fc0 	lui	s4,0x9fc0
9fc03758:	2694375c 	addiu	s4,s4,14172
9fc0375c:	18000057 	blez	zero,9fc038bc <inst_error>
9fc03760:	8d170002 	lw	s7,2(t0)
9fc03764:	16570055 	bne	s2,s7,9fc038bc <inst_error>
9fc03768:	00000000 	nop
9fc0376c:	24120004 	li	s2,4
9fc03770:	3c149fc0 	lui	s4,0x9fc0
9fc03774:	26943778 	addiu	s4,s4,14200
9fc03778:	1a400050 	blez	s2,9fc038bc <inst_error>
9fc0377c:	8d170002 	lw	s7,2(t0)
9fc03780:	1657004e 	bne	s2,s7,9fc038bc <inst_error>
9fc03784:	00000000 	nop
9fc03788:	24120004 	li	s2,4
9fc0378c:	3c149fc0 	lui	s4,0x9fc0
9fc03790:	26943794 	addiu	s4,s4,14228
9fc03794:	18000049 	blez	zero,9fc038bc <inst_error>
9fc03798:	85170001 	lh	s7,1(t0)
9fc0379c:	02f2001b 	divu	zero,s7,s2
9fc037a0:	16570046 	bne	s2,s7,9fc038bc <inst_error>
9fc037a4:	00000000 	nop
9fc037a8:	24120004 	li	s2,4
9fc037ac:	3c149fc0 	lui	s4,0x9fc0
9fc037b0:	269437b4 	addiu	s4,s4,14260
9fc037b4:	1a400041 	blez	s2,9fc038bc <inst_error>
9fc037b8:	85170001 	lh	s7,1(t0)
9fc037bc:	1657003f 	bne	s2,s7,9fc038bc <inst_error>
9fc037c0:	00000000 	nop
9fc037c4:	3c149fc0 	lui	s4,0x9fc0
9fc037c8:	269437cc 	addiu	s4,s4,14284
9fc037cc:	1800003b 	blez	zero,9fc038bc <inst_error>
9fc037d0:	95170003 	lhu	s7,3(t0)
9fc037d4:	16570039 	bne	s2,s7,9fc038bc <inst_error>
9fc037d8:	00000000 	nop
9fc037dc:	24120004 	li	s2,4
9fc037e0:	3c149fc0 	lui	s4,0x9fc0
9fc037e4:	269437e8 	addiu	s4,s4,14312
9fc037e8:	1a400034 	blez	s2,9fc038bc <inst_error>
9fc037ec:	95170003 	lhu	s7,3(t0)
9fc037f0:	16570032 	bne	s2,s7,9fc038bc <inst_error>
9fc037f4:	00000000 	nop
9fc037f8:	24120005 	li	s2,5
9fc037fc:	3c170005 	lui	s7,0x5
9fc03800:	ad120000 	sw	s2,0(t0)
9fc03804:	3c149fc0 	lui	s4,0x9fc0
9fc03808:	2694380c 	addiu	s4,s4,14348
9fc0380c:	1800002b 	blez	zero,9fc038bc <inst_error>
9fc03810:	ad170002 	sw	s7,2(t0)
9fc03814:	16570029 	bne	s2,s7,9fc038bc <inst_error>
9fc03818:	00000000 	nop
9fc0381c:	24120005 	li	s2,5
9fc03820:	3c149fc0 	lui	s4,0x9fc0
9fc03824:	26943828 	addiu	s4,s4,14376
9fc03828:	1a400024 	blez	s2,9fc038bc <inst_error>
9fc0382c:	ad170002 	sw	s7,2(t0)
9fc03830:	16570022 	bne	s2,s7,9fc038bc <inst_error>
9fc03834:	00000000 	nop
9fc03838:	24120005 	li	s2,5
9fc0383c:	3c149fc0 	lui	s4,0x9fc0
9fc03840:	26943844 	addiu	s4,s4,14404
9fc03844:	1800001d 	blez	zero,9fc038bc <inst_error>
9fc03848:	a5170001 	sh	s7,1(t0)
9fc0384c:	1657001b 	bne	s2,s7,9fc038bc <inst_error>
9fc03850:	00000000 	nop
9fc03854:	24120005 	li	s2,5
9fc03858:	3c149fc0 	lui	s4,0x9fc0
9fc0385c:	26943860 	addiu	s4,s4,14432
9fc03860:	1a400016 	blez	s2,9fc038bc <inst_error>
9fc03864:	a5170001 	sh	s7,1(t0)
9fc03868:	16570014 	bne	s2,s7,9fc038bc <inst_error>
9fc0386c:	00000000 	nop
9fc03870:	24120007 	li	s2,7
9fc03874:	3c170007 	lui	s7,0x7
9fc03878:	ad120000 	sw	s2,0(t0)
9fc0387c:	3c149fc0 	lui	s4,0x9fc0
9fc03880:	26943884 	addiu	s4,s4,14468
9fc03884:	1800000d 	blez	zero,9fc038bc <inst_error>
9fc03888:	9e3c56aa 	0x9e3c56aa
9fc0388c:	02f20018 	mult	s7,s2
9fc03890:	1657000a 	bne	s2,s7,9fc038bc <inst_error>
9fc03894:	00000000 	nop
9fc03898:	24120007 	li	s2,7
9fc0389c:	3c149fc0 	lui	s4,0x9fc0
9fc038a0:	269438a8 	addiu	s4,s4,14504
9fc038a4:	02f20018 	mult	s7,s2
9fc038a8:	1a400004 	blez	s2,9fc038bc <inst_error>
9fc038ac:	ec1ba960 	swc3	$27,-22176(zero)
9fc038b0:	16570002 	bne	s2,s7,9fc038bc <inst_error>
9fc038b4:	00000000 	nop
9fc038b8:	26730001 	addiu	s3,s3,1

9fc038bc <inst_error>:
9fc038bc:	00104e00 	sll	t1,s0,0x18
9fc038c0:	01334025 	or	t0,t1,s3
9fc038c4:	ae280000 	sw	t0,0(s1)
9fc038c8:	03e00008 	jr	ra
9fc038cc:	00000000 	nop

9fc038d0 <n88_bltz_ds_ex_test>:
9fc038d0:	26100001 	addiu	s0,s0,1
9fc038d4:	3c08800d 	lui	t0,0x800d
9fc038d8:	40805800 	mtc0	zero,$11
9fc038dc:	3c170040 	lui	s7,0x40
9fc038e0:	40976000 	mtc0	s7,c0_sr
9fc038e4:	00000000 	nop
9fc038e8:	24120001 	li	s2,1
9fc038ec:	3c170001 	lui	s7,0x1
9fc038f0:	ad120000 	sw	s2,0(t0)
9fc038f4:	3c149fc0 	lui	s4,0x9fc0
9fc038f8:	269438fc 	addiu	s4,s4,14588
9fc038fc:	050000af 	bltz	t0,9fc03bbc <inst_error>
9fc03900:	0000000c 	syscall
9fc03904:	165700ad 	bne	s2,s7,9fc03bbc <inst_error>
9fc03908:	00000000 	nop
9fc0390c:	24120001 	li	s2,1
9fc03910:	3c149fc0 	lui	s4,0x9fc0
9fc03914:	26943918 	addiu	s4,s4,14616
9fc03918:	064000a8 	bltz	s2,9fc03bbc <inst_error>
9fc0391c:	0000000c 	syscall
9fc03920:	165700a6 	bne	s2,s7,9fc03bbc <inst_error>
9fc03924:	00000000 	nop
9fc03928:	24120002 	li	s2,2
9fc0392c:	3c170002 	lui	s7,0x2
9fc03930:	ad120000 	sw	s2,0(t0)
9fc03934:	3c149fc0 	lui	s4,0x9fc0
9fc03938:	2694393c 	addiu	s4,s4,14652
9fc0393c:	0500009f 	bltz	t0,9fc03bbc <inst_error>
9fc03940:	0000000d 	break
9fc03944:	1657009d 	bne	s2,s7,9fc03bbc <inst_error>
9fc03948:	00000000 	nop
9fc0394c:	24120002 	li	s2,2
9fc03950:	3c149fc0 	lui	s4,0x9fc0
9fc03954:	26943958 	addiu	s4,s4,14680
9fc03958:	06400098 	bltz	s2,9fc03bbc <inst_error>
9fc0395c:	0000000d 	break
9fc03960:	16570096 	bne	s2,s7,9fc03bbc <inst_error>
9fc03964:	00000000 	nop
9fc03968:	24120003 	li	s2,3
9fc0396c:	3c170003 	lui	s7,0x3
9fc03970:	ad120000 	sw	s2,0(t0)
9fc03974:	3c149fc0 	lui	s4,0x9fc0
9fc03978:	2694398c 	addiu	s4,s4,14732
9fc0397c:	3c04ba03 	lui	a0,0xba03
9fc03980:	34844f60 	ori	a0,a0,0x4f60
9fc03984:	3c05b615 	lui	a1,0xb615
9fc03988:	34a5fd67 	ori	a1,a1,0xfd67
9fc0398c:	0500008b 	bltz	t0,9fc03bbc <inst_error>
9fc03990:	0085b820 	add	s7,a0,a1
9fc03994:	16570089 	bne	s2,s7,9fc03bbc <inst_error>
9fc03998:	00000000 	nop
9fc0399c:	24120003 	li	s2,3
9fc039a0:	3c149fc0 	lui	s4,0x9fc0
9fc039a4:	269439a8 	addiu	s4,s4,14760
9fc039a8:	06400084 	bltz	s2,9fc03bbc <inst_error>
9fc039ac:	0085b820 	add	s7,a0,a1
9fc039b0:	ad170000 	sw	s7,0(t0)
9fc039b4:	16570081 	bne	s2,s7,9fc03bbc <inst_error>
9fc039b8:	00000000 	nop
9fc039bc:	24120003 	li	s2,3
9fc039c0:	ad120000 	sw	s2,0(t0)
9fc039c4:	3c149fc0 	lui	s4,0x9fc0
9fc039c8:	269439d4 	addiu	s4,s4,14804
9fc039cc:	3c047fff 	lui	a0,0x7fff
9fc039d0:	3484c19e 	ori	a0,a0,0xc19e
9fc039d4:	05000079 	bltz	t0,9fc03bbc <inst_error>
9fc039d8:	20976512 	addi	s7,a0,25874
9fc039dc:	16570077 	bne	s2,s7,9fc03bbc <inst_error>
9fc039e0:	00000000 	nop
9fc039e4:	24120003 	li	s2,3
9fc039e8:	3c149fc0 	lui	s4,0x9fc0
9fc039ec:	269439f0 	addiu	s4,s4,14832
9fc039f0:	06400072 	bltz	s2,9fc03bbc <inst_error>
9fc039f4:	20976512 	addi	s7,a0,25874
9fc039f8:	16570070 	bne	s2,s7,9fc03bbc <inst_error>
9fc039fc:	00000000 	nop
9fc03a00:	24120003 	li	s2,3
9fc03a04:	3c149fc0 	lui	s4,0x9fc0
9fc03a08:	26943a1c 	addiu	s4,s4,14876
9fc03a0c:	3c04a85e 	lui	a0,0xa85e
9fc03a10:	34847d00 	ori	a0,a0,0x7d00
9fc03a14:	3c056b7e 	lui	a1,0x6b7e
9fc03a18:	34a58e36 	ori	a1,a1,0x8e36
9fc03a1c:	05000067 	bltz	t0,9fc03bbc <inst_error>
9fc03a20:	0085b822 	sub	s7,a0,a1
9fc03a24:	16570065 	bne	s2,s7,9fc03bbc <inst_error>
9fc03a28:	00000000 	nop
9fc03a2c:	24120003 	li	s2,3
9fc03a30:	3c149fc0 	lui	s4,0x9fc0
9fc03a34:	26943a38 	addiu	s4,s4,14904
9fc03a38:	06400060 	bltz	s2,9fc03bbc <inst_error>
9fc03a3c:	0085b822 	sub	s7,a0,a1
9fc03a40:	1657005e 	bne	s2,s7,9fc03bbc <inst_error>
9fc03a44:	00000000 	nop
9fc03a48:	24120004 	li	s2,4
9fc03a4c:	3c170004 	lui	s7,0x4
9fc03a50:	ad120000 	sw	s2,0(t0)
9fc03a54:	3c149fc0 	lui	s4,0x9fc0
9fc03a58:	26943a5c 	addiu	s4,s4,14940
9fc03a5c:	05000057 	bltz	t0,9fc03bbc <inst_error>
9fc03a60:	8d170002 	lw	s7,2(t0)
9fc03a64:	16570055 	bne	s2,s7,9fc03bbc <inst_error>
9fc03a68:	00000000 	nop
9fc03a6c:	24120004 	li	s2,4
9fc03a70:	3c149fc0 	lui	s4,0x9fc0
9fc03a74:	26943a78 	addiu	s4,s4,14968
9fc03a78:	06400050 	bltz	s2,9fc03bbc <inst_error>
9fc03a7c:	8d170002 	lw	s7,2(t0)
9fc03a80:	1657004e 	bne	s2,s7,9fc03bbc <inst_error>
9fc03a84:	00000000 	nop
9fc03a88:	24120004 	li	s2,4
9fc03a8c:	3c149fc0 	lui	s4,0x9fc0
9fc03a90:	26943a94 	addiu	s4,s4,14996
9fc03a94:	05000049 	bltz	t0,9fc03bbc <inst_error>
9fc03a98:	85170001 	lh	s7,1(t0)
9fc03a9c:	02f2001b 	divu	zero,s7,s2
9fc03aa0:	16570046 	bne	s2,s7,9fc03bbc <inst_error>
9fc03aa4:	00000000 	nop
9fc03aa8:	24120004 	li	s2,4
9fc03aac:	3c149fc0 	lui	s4,0x9fc0
9fc03ab0:	26943ab4 	addiu	s4,s4,15028
9fc03ab4:	06400041 	bltz	s2,9fc03bbc <inst_error>
9fc03ab8:	85170001 	lh	s7,1(t0)
9fc03abc:	1657003f 	bne	s2,s7,9fc03bbc <inst_error>
9fc03ac0:	00000000 	nop
9fc03ac4:	3c149fc0 	lui	s4,0x9fc0
9fc03ac8:	26943acc 	addiu	s4,s4,15052
9fc03acc:	0500003b 	bltz	t0,9fc03bbc <inst_error>
9fc03ad0:	95170003 	lhu	s7,3(t0)
9fc03ad4:	16570039 	bne	s2,s7,9fc03bbc <inst_error>
9fc03ad8:	00000000 	nop
9fc03adc:	24120004 	li	s2,4
9fc03ae0:	3c149fc0 	lui	s4,0x9fc0
9fc03ae4:	26943ae8 	addiu	s4,s4,15080
9fc03ae8:	06400034 	bltz	s2,9fc03bbc <inst_error>
9fc03aec:	95170003 	lhu	s7,3(t0)
9fc03af0:	16570032 	bne	s2,s7,9fc03bbc <inst_error>
9fc03af4:	00000000 	nop
9fc03af8:	24120005 	li	s2,5
9fc03afc:	3c170005 	lui	s7,0x5
9fc03b00:	ad120000 	sw	s2,0(t0)
9fc03b04:	3c149fc0 	lui	s4,0x9fc0
9fc03b08:	26943b0c 	addiu	s4,s4,15116
9fc03b0c:	0500002b 	bltz	t0,9fc03bbc <inst_error>
9fc03b10:	ad170002 	sw	s7,2(t0)
9fc03b14:	16570029 	bne	s2,s7,9fc03bbc <inst_error>
9fc03b18:	00000000 	nop
9fc03b1c:	24120005 	li	s2,5
9fc03b20:	3c149fc0 	lui	s4,0x9fc0
9fc03b24:	26943b28 	addiu	s4,s4,15144
9fc03b28:	06400024 	bltz	s2,9fc03bbc <inst_error>
9fc03b2c:	ad170002 	sw	s7,2(t0)
9fc03b30:	16570022 	bne	s2,s7,9fc03bbc <inst_error>
9fc03b34:	00000000 	nop
9fc03b38:	24120005 	li	s2,5
9fc03b3c:	3c149fc0 	lui	s4,0x9fc0
9fc03b40:	26943b44 	addiu	s4,s4,15172
9fc03b44:	0500001d 	bltz	t0,9fc03bbc <inst_error>
9fc03b48:	a5170001 	sh	s7,1(t0)
9fc03b4c:	1657001b 	bne	s2,s7,9fc03bbc <inst_error>
9fc03b50:	00000000 	nop
9fc03b54:	24120005 	li	s2,5
9fc03b58:	3c149fc0 	lui	s4,0x9fc0
9fc03b5c:	26943b60 	addiu	s4,s4,15200
9fc03b60:	06400016 	bltz	s2,9fc03bbc <inst_error>
9fc03b64:	a5170001 	sh	s7,1(t0)
9fc03b68:	16570014 	bne	s2,s7,9fc03bbc <inst_error>
9fc03b6c:	00000000 	nop
9fc03b70:	24120007 	li	s2,7
9fc03b74:	3c170007 	lui	s7,0x7
9fc03b78:	ad120000 	sw	s2,0(t0)
9fc03b7c:	3c149fc0 	lui	s4,0x9fc0
9fc03b80:	26943b84 	addiu	s4,s4,15236
9fc03b84:	0500000d 	bltz	t0,9fc03bbc <inst_error>
9fc03b88:	9e3c56aa 	0x9e3c56aa
9fc03b8c:	02f20018 	mult	s7,s2
9fc03b90:	1657000a 	bne	s2,s7,9fc03bbc <inst_error>
9fc03b94:	00000000 	nop
9fc03b98:	24120007 	li	s2,7
9fc03b9c:	3c149fc0 	lui	s4,0x9fc0
9fc03ba0:	26943ba8 	addiu	s4,s4,15272
9fc03ba4:	02f20018 	mult	s7,s2
9fc03ba8:	06400004 	bltz	s2,9fc03bbc <inst_error>
9fc03bac:	ec1ba960 	swc3	$27,-22176(zero)
9fc03bb0:	16570002 	bne	s2,s7,9fc03bbc <inst_error>
9fc03bb4:	00000000 	nop
9fc03bb8:	26730001 	addiu	s3,s3,1

9fc03bbc <inst_error>:
9fc03bbc:	00104e00 	sll	t1,s0,0x18
9fc03bc0:	01334025 	or	t0,t1,s3
9fc03bc4:	ae280000 	sw	t0,0(s1)
9fc03bc8:	03e00008 	jr	ra
9fc03bcc:	00000000 	nop

9fc03bd0 <n89_bltzal_ds_ex_test>:
9fc03bd0:	03e0b021 	move	s6,ra
9fc03bd4:	26100001 	addiu	s0,s0,1
9fc03bd8:	3c08800d 	lui	t0,0x800d
9fc03bdc:	40805800 	mtc0	zero,$11
9fc03be0:	3c170040 	lui	s7,0x40
9fc03be4:	40976000 	mtc0	s7,c0_sr
9fc03be8:	00000000 	nop
9fc03bec:	24120001 	li	s2,1
9fc03bf0:	3c170001 	lui	s7,0x1
9fc03bf4:	ad120000 	sw	s2,0(t0)
9fc03bf8:	3c149fc0 	lui	s4,0x9fc0
9fc03bfc:	26943c00 	addiu	s4,s4,15360
9fc03c00:	051000af 	bltzal	t0,9fc03ec0 <inst_error>
9fc03c04:	0000000c 	syscall
9fc03c08:	165700ad 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03c0c:	00000000 	nop
9fc03c10:	24120001 	li	s2,1
9fc03c14:	3c149fc0 	lui	s4,0x9fc0
9fc03c18:	26943c1c 	addiu	s4,s4,15388
9fc03c1c:	065000a8 	bltzal	s2,9fc03ec0 <inst_error>
9fc03c20:	0000000c 	syscall
9fc03c24:	165700a6 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03c28:	00000000 	nop
9fc03c2c:	24120002 	li	s2,2
9fc03c30:	3c170002 	lui	s7,0x2
9fc03c34:	ad120000 	sw	s2,0(t0)
9fc03c38:	3c149fc0 	lui	s4,0x9fc0
9fc03c3c:	26943c40 	addiu	s4,s4,15424
9fc03c40:	0510009f 	bltzal	t0,9fc03ec0 <inst_error>
9fc03c44:	0000000d 	break
9fc03c48:	1657009d 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03c4c:	00000000 	nop
9fc03c50:	24120002 	li	s2,2
9fc03c54:	3c149fc0 	lui	s4,0x9fc0
9fc03c58:	26943c5c 	addiu	s4,s4,15452
9fc03c5c:	06500098 	bltzal	s2,9fc03ec0 <inst_error>
9fc03c60:	0000000d 	break
9fc03c64:	16570096 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03c68:	00000000 	nop
9fc03c6c:	24120003 	li	s2,3
9fc03c70:	3c170003 	lui	s7,0x3
9fc03c74:	ad120000 	sw	s2,0(t0)
9fc03c78:	3c149fc0 	lui	s4,0x9fc0
9fc03c7c:	26943c90 	addiu	s4,s4,15504
9fc03c80:	3c04ba03 	lui	a0,0xba03
9fc03c84:	34844f60 	ori	a0,a0,0x4f60
9fc03c88:	3c05b615 	lui	a1,0xb615
9fc03c8c:	34a5fd67 	ori	a1,a1,0xfd67
9fc03c90:	0510008b 	bltzal	t0,9fc03ec0 <inst_error>
9fc03c94:	0085b820 	add	s7,a0,a1
9fc03c98:	16570089 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03c9c:	00000000 	nop
9fc03ca0:	24120003 	li	s2,3
9fc03ca4:	3c149fc0 	lui	s4,0x9fc0
9fc03ca8:	26943cac 	addiu	s4,s4,15532
9fc03cac:	06500084 	bltzal	s2,9fc03ec0 <inst_error>
9fc03cb0:	0085b820 	add	s7,a0,a1
9fc03cb4:	ad170000 	sw	s7,0(t0)
9fc03cb8:	16570081 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03cbc:	00000000 	nop
9fc03cc0:	24120003 	li	s2,3
9fc03cc4:	ad120000 	sw	s2,0(t0)
9fc03cc8:	3c149fc0 	lui	s4,0x9fc0
9fc03ccc:	26943cd8 	addiu	s4,s4,15576
9fc03cd0:	3c047fff 	lui	a0,0x7fff
9fc03cd4:	3484c19e 	ori	a0,a0,0xc19e
9fc03cd8:	05100079 	bltzal	t0,9fc03ec0 <inst_error>
9fc03cdc:	20976512 	addi	s7,a0,25874
9fc03ce0:	16570077 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03ce4:	00000000 	nop
9fc03ce8:	24120003 	li	s2,3
9fc03cec:	3c149fc0 	lui	s4,0x9fc0
9fc03cf0:	26943cf4 	addiu	s4,s4,15604
9fc03cf4:	06500072 	bltzal	s2,9fc03ec0 <inst_error>
9fc03cf8:	20976512 	addi	s7,a0,25874
9fc03cfc:	16570070 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03d00:	00000000 	nop
9fc03d04:	24120003 	li	s2,3
9fc03d08:	3c149fc0 	lui	s4,0x9fc0
9fc03d0c:	26943d20 	addiu	s4,s4,15648
9fc03d10:	3c04a85e 	lui	a0,0xa85e
9fc03d14:	34847d00 	ori	a0,a0,0x7d00
9fc03d18:	3c056b7e 	lui	a1,0x6b7e
9fc03d1c:	34a58e36 	ori	a1,a1,0x8e36
9fc03d20:	05100067 	bltzal	t0,9fc03ec0 <inst_error>
9fc03d24:	0085b822 	sub	s7,a0,a1
9fc03d28:	16570065 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03d2c:	00000000 	nop
9fc03d30:	24120003 	li	s2,3
9fc03d34:	3c149fc0 	lui	s4,0x9fc0
9fc03d38:	26943d3c 	addiu	s4,s4,15676
9fc03d3c:	06500060 	bltzal	s2,9fc03ec0 <inst_error>
9fc03d40:	0085b822 	sub	s7,a0,a1
9fc03d44:	1657005e 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03d48:	00000000 	nop
9fc03d4c:	24120004 	li	s2,4
9fc03d50:	3c170004 	lui	s7,0x4
9fc03d54:	ad120000 	sw	s2,0(t0)
9fc03d58:	3c149fc0 	lui	s4,0x9fc0
9fc03d5c:	26943d60 	addiu	s4,s4,15712
9fc03d60:	05100057 	bltzal	t0,9fc03ec0 <inst_error>
9fc03d64:	8d170002 	lw	s7,2(t0)
9fc03d68:	16570055 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03d6c:	00000000 	nop
9fc03d70:	24120004 	li	s2,4
9fc03d74:	3c149fc0 	lui	s4,0x9fc0
9fc03d78:	26943d7c 	addiu	s4,s4,15740
9fc03d7c:	06500050 	bltzal	s2,9fc03ec0 <inst_error>
9fc03d80:	8d170002 	lw	s7,2(t0)
9fc03d84:	1657004e 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03d88:	00000000 	nop
9fc03d8c:	24120004 	li	s2,4
9fc03d90:	3c149fc0 	lui	s4,0x9fc0
9fc03d94:	26943d98 	addiu	s4,s4,15768
9fc03d98:	05100049 	bltzal	t0,9fc03ec0 <inst_error>
9fc03d9c:	85170001 	lh	s7,1(t0)
9fc03da0:	02f2001b 	divu	zero,s7,s2
9fc03da4:	16570046 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03da8:	00000000 	nop
9fc03dac:	24120004 	li	s2,4
9fc03db0:	3c149fc0 	lui	s4,0x9fc0
9fc03db4:	26943db8 	addiu	s4,s4,15800
9fc03db8:	06500041 	bltzal	s2,9fc03ec0 <inst_error>
9fc03dbc:	85170001 	lh	s7,1(t0)
9fc03dc0:	1657003f 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03dc4:	00000000 	nop
9fc03dc8:	3c149fc0 	lui	s4,0x9fc0
9fc03dcc:	26943dd0 	addiu	s4,s4,15824
9fc03dd0:	0510003b 	bltzal	t0,9fc03ec0 <inst_error>
9fc03dd4:	95170003 	lhu	s7,3(t0)
9fc03dd8:	16570039 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03ddc:	00000000 	nop
9fc03de0:	24120004 	li	s2,4
9fc03de4:	3c149fc0 	lui	s4,0x9fc0
9fc03de8:	26943dec 	addiu	s4,s4,15852
9fc03dec:	06500034 	bltzal	s2,9fc03ec0 <inst_error>
9fc03df0:	95170003 	lhu	s7,3(t0)
9fc03df4:	16570032 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03df8:	00000000 	nop
9fc03dfc:	24120005 	li	s2,5
9fc03e00:	3c170005 	lui	s7,0x5
9fc03e04:	ad120000 	sw	s2,0(t0)
9fc03e08:	3c149fc0 	lui	s4,0x9fc0
9fc03e0c:	26943e10 	addiu	s4,s4,15888
9fc03e10:	0510002b 	bltzal	t0,9fc03ec0 <inst_error>
9fc03e14:	ad170002 	sw	s7,2(t0)
9fc03e18:	16570029 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03e1c:	00000000 	nop
9fc03e20:	24120005 	li	s2,5
9fc03e24:	3c149fc0 	lui	s4,0x9fc0
9fc03e28:	26943e2c 	addiu	s4,s4,15916
9fc03e2c:	06500024 	bltzal	s2,9fc03ec0 <inst_error>
9fc03e30:	ad170002 	sw	s7,2(t0)
9fc03e34:	16570022 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03e38:	00000000 	nop
9fc03e3c:	24120005 	li	s2,5
9fc03e40:	3c149fc0 	lui	s4,0x9fc0
9fc03e44:	26943e48 	addiu	s4,s4,15944
9fc03e48:	0510001d 	bltzal	t0,9fc03ec0 <inst_error>
9fc03e4c:	a5170001 	sh	s7,1(t0)
9fc03e50:	1657001b 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03e54:	00000000 	nop
9fc03e58:	24120005 	li	s2,5
9fc03e5c:	3c149fc0 	lui	s4,0x9fc0
9fc03e60:	26943e64 	addiu	s4,s4,15972
9fc03e64:	06500016 	bltzal	s2,9fc03ec0 <inst_error>
9fc03e68:	a5170001 	sh	s7,1(t0)
9fc03e6c:	16570014 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03e70:	00000000 	nop
9fc03e74:	24120007 	li	s2,7
9fc03e78:	3c170007 	lui	s7,0x7
9fc03e7c:	ad120000 	sw	s2,0(t0)
9fc03e80:	3c149fc0 	lui	s4,0x9fc0
9fc03e84:	26943e88 	addiu	s4,s4,16008
9fc03e88:	0510000d 	bltzal	t0,9fc03ec0 <inst_error>
9fc03e8c:	9e3c56aa 	0x9e3c56aa
9fc03e90:	02f20018 	mult	s7,s2
9fc03e94:	1657000a 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03e98:	00000000 	nop
9fc03e9c:	24120007 	li	s2,7
9fc03ea0:	3c149fc0 	lui	s4,0x9fc0
9fc03ea4:	26943eac 	addiu	s4,s4,16044
9fc03ea8:	02f20018 	mult	s7,s2
9fc03eac:	06500004 	bltzal	s2,9fc03ec0 <inst_error>
9fc03eb0:	ec1ba960 	swc3	$27,-22176(zero)
9fc03eb4:	16570002 	bne	s2,s7,9fc03ec0 <inst_error>
9fc03eb8:	00000000 	nop
9fc03ebc:	26730001 	addiu	s3,s3,1

9fc03ec0 <inst_error>:
9fc03ec0:	00104e00 	sll	t1,s0,0x18
9fc03ec4:	01334025 	or	t0,t1,s3
9fc03ec8:	ae280000 	sw	t0,0(s1)
9fc03ecc:	02c0f821 	move	ra,s6
9fc03ed0:	03e00008 	jr	ra
9fc03ed4:	00000000 	nop
9fc03ed8:	00000000 	nop
9fc03edc:	00000000 	nop

9fc03ee0 <n90_bgezal_ds_ex_test>:
9fc03ee0:	03e0b021 	move	s6,ra
9fc03ee4:	26100001 	addiu	s0,s0,1
9fc03ee8:	3c08800d 	lui	t0,0x800d
9fc03eec:	40805800 	mtc0	zero,$11
9fc03ef0:	3c170040 	lui	s7,0x40
9fc03ef4:	40976000 	mtc0	s7,c0_sr
9fc03ef8:	00000000 	nop
9fc03efc:	24120001 	li	s2,1
9fc03f00:	3c170001 	lui	s7,0x1
9fc03f04:	ad120000 	sw	s2,0(t0)
9fc03f08:	3c149fc0 	lui	s4,0x9fc0
9fc03f0c:	26943f10 	addiu	s4,s4,16144
9fc03f10:	041100af 	bal	9fc041d0 <inst_error>
9fc03f14:	0000000c 	syscall
9fc03f18:	165700ad 	bne	s2,s7,9fc041d0 <inst_error>
9fc03f1c:	00000000 	nop
9fc03f20:	24120001 	li	s2,1
9fc03f24:	3c149fc0 	lui	s4,0x9fc0
9fc03f28:	26943f2c 	addiu	s4,s4,16172
9fc03f2c:	051100a8 	bgezal	t0,9fc041d0 <inst_error>
9fc03f30:	0000000c 	syscall
9fc03f34:	165700a6 	bne	s2,s7,9fc041d0 <inst_error>
9fc03f38:	00000000 	nop
9fc03f3c:	24120002 	li	s2,2
9fc03f40:	3c170002 	lui	s7,0x2
9fc03f44:	ad120000 	sw	s2,0(t0)
9fc03f48:	3c149fc0 	lui	s4,0x9fc0
9fc03f4c:	26943f50 	addiu	s4,s4,16208
9fc03f50:	0411009f 	bal	9fc041d0 <inst_error>
9fc03f54:	0000000d 	break
9fc03f58:	1657009d 	bne	s2,s7,9fc041d0 <inst_error>
9fc03f5c:	00000000 	nop
9fc03f60:	24120002 	li	s2,2
9fc03f64:	3c149fc0 	lui	s4,0x9fc0
9fc03f68:	26943f6c 	addiu	s4,s4,16236
9fc03f6c:	05110098 	bgezal	t0,9fc041d0 <inst_error>
9fc03f70:	0000000d 	break
9fc03f74:	16570096 	bne	s2,s7,9fc041d0 <inst_error>
9fc03f78:	00000000 	nop
9fc03f7c:	24120003 	li	s2,3
9fc03f80:	3c170003 	lui	s7,0x3
9fc03f84:	ad120000 	sw	s2,0(t0)
9fc03f88:	3c149fc0 	lui	s4,0x9fc0
9fc03f8c:	26943fa0 	addiu	s4,s4,16288
9fc03f90:	3c04ba03 	lui	a0,0xba03
9fc03f94:	34844f60 	ori	a0,a0,0x4f60
9fc03f98:	3c05b615 	lui	a1,0xb615
9fc03f9c:	34a5fd67 	ori	a1,a1,0xfd67
9fc03fa0:	0411008b 	bal	9fc041d0 <inst_error>
9fc03fa4:	0085b820 	add	s7,a0,a1
9fc03fa8:	16570089 	bne	s2,s7,9fc041d0 <inst_error>
9fc03fac:	00000000 	nop
9fc03fb0:	24120003 	li	s2,3
9fc03fb4:	3c149fc0 	lui	s4,0x9fc0
9fc03fb8:	26943fbc 	addiu	s4,s4,16316
9fc03fbc:	05110084 	bgezal	t0,9fc041d0 <inst_error>
9fc03fc0:	0085b820 	add	s7,a0,a1
9fc03fc4:	ad170000 	sw	s7,0(t0)
9fc03fc8:	16570081 	bne	s2,s7,9fc041d0 <inst_error>
9fc03fcc:	00000000 	nop
9fc03fd0:	24120003 	li	s2,3
9fc03fd4:	ad120000 	sw	s2,0(t0)
9fc03fd8:	3c149fc0 	lui	s4,0x9fc0
9fc03fdc:	26943fe8 	addiu	s4,s4,16360
9fc03fe0:	3c047fff 	lui	a0,0x7fff
9fc03fe4:	3484c19e 	ori	a0,a0,0xc19e
9fc03fe8:	04110079 	bal	9fc041d0 <inst_error>
9fc03fec:	20976512 	addi	s7,a0,25874
9fc03ff0:	16570077 	bne	s2,s7,9fc041d0 <inst_error>
9fc03ff4:	00000000 	nop
9fc03ff8:	24120003 	li	s2,3
9fc03ffc:	3c149fc0 	lui	s4,0x9fc0
9fc04000:	26944004 	addiu	s4,s4,16388
9fc04004:	05110072 	bgezal	t0,9fc041d0 <inst_error>
9fc04008:	20976512 	addi	s7,a0,25874
9fc0400c:	16570070 	bne	s2,s7,9fc041d0 <inst_error>
9fc04010:	00000000 	nop
9fc04014:	24120003 	li	s2,3
9fc04018:	3c149fc0 	lui	s4,0x9fc0
9fc0401c:	26944030 	addiu	s4,s4,16432
9fc04020:	3c04a85e 	lui	a0,0xa85e
9fc04024:	34847d00 	ori	a0,a0,0x7d00
9fc04028:	3c056b7e 	lui	a1,0x6b7e
9fc0402c:	34a58e36 	ori	a1,a1,0x8e36
9fc04030:	04110067 	bal	9fc041d0 <inst_error>
9fc04034:	0085b822 	sub	s7,a0,a1
9fc04038:	16570065 	bne	s2,s7,9fc041d0 <inst_error>
9fc0403c:	00000000 	nop
9fc04040:	24120003 	li	s2,3
9fc04044:	3c149fc0 	lui	s4,0x9fc0
9fc04048:	2694404c 	addiu	s4,s4,16460
9fc0404c:	05110060 	bgezal	t0,9fc041d0 <inst_error>
9fc04050:	0085b822 	sub	s7,a0,a1
9fc04054:	1657005e 	bne	s2,s7,9fc041d0 <inst_error>
9fc04058:	00000000 	nop
9fc0405c:	24120004 	li	s2,4
9fc04060:	3c170004 	lui	s7,0x4
9fc04064:	ad120000 	sw	s2,0(t0)
9fc04068:	3c149fc0 	lui	s4,0x9fc0
9fc0406c:	26944070 	addiu	s4,s4,16496
9fc04070:	04110057 	bal	9fc041d0 <inst_error>
9fc04074:	8d170002 	lw	s7,2(t0)
9fc04078:	16570055 	bne	s2,s7,9fc041d0 <inst_error>
9fc0407c:	00000000 	nop
9fc04080:	24120004 	li	s2,4
9fc04084:	3c149fc0 	lui	s4,0x9fc0
9fc04088:	2694408c 	addiu	s4,s4,16524
9fc0408c:	05110050 	bgezal	t0,9fc041d0 <inst_error>
9fc04090:	8d170002 	lw	s7,2(t0)
9fc04094:	1657004e 	bne	s2,s7,9fc041d0 <inst_error>
9fc04098:	00000000 	nop
9fc0409c:	24120004 	li	s2,4
9fc040a0:	3c149fc0 	lui	s4,0x9fc0
9fc040a4:	269440a8 	addiu	s4,s4,16552
9fc040a8:	04110049 	bal	9fc041d0 <inst_error>
9fc040ac:	85170001 	lh	s7,1(t0)
9fc040b0:	02f2001b 	divu	zero,s7,s2
9fc040b4:	16570046 	bne	s2,s7,9fc041d0 <inst_error>
9fc040b8:	00000000 	nop
9fc040bc:	24120004 	li	s2,4
9fc040c0:	3c149fc0 	lui	s4,0x9fc0
9fc040c4:	269440c8 	addiu	s4,s4,16584
9fc040c8:	05110041 	bgezal	t0,9fc041d0 <inst_error>
9fc040cc:	85170001 	lh	s7,1(t0)
9fc040d0:	1657003f 	bne	s2,s7,9fc041d0 <inst_error>
9fc040d4:	00000000 	nop
9fc040d8:	3c149fc0 	lui	s4,0x9fc0
9fc040dc:	269440e0 	addiu	s4,s4,16608
9fc040e0:	0411003b 	bal	9fc041d0 <inst_error>
9fc040e4:	95170003 	lhu	s7,3(t0)
9fc040e8:	16570039 	bne	s2,s7,9fc041d0 <inst_error>
9fc040ec:	00000000 	nop
9fc040f0:	24120004 	li	s2,4
9fc040f4:	3c149fc0 	lui	s4,0x9fc0
9fc040f8:	269440fc 	addiu	s4,s4,16636
9fc040fc:	05110034 	bgezal	t0,9fc041d0 <inst_error>
9fc04100:	95170003 	lhu	s7,3(t0)
9fc04104:	16570032 	bne	s2,s7,9fc041d0 <inst_error>
9fc04108:	00000000 	nop
9fc0410c:	24120005 	li	s2,5
9fc04110:	3c170005 	lui	s7,0x5
9fc04114:	ad120000 	sw	s2,0(t0)
9fc04118:	3c149fc0 	lui	s4,0x9fc0
9fc0411c:	26944120 	addiu	s4,s4,16672
9fc04120:	0411002b 	bal	9fc041d0 <inst_error>
9fc04124:	ad170002 	sw	s7,2(t0)
9fc04128:	16570029 	bne	s2,s7,9fc041d0 <inst_error>
9fc0412c:	00000000 	nop
9fc04130:	24120005 	li	s2,5
9fc04134:	3c149fc0 	lui	s4,0x9fc0
9fc04138:	2694413c 	addiu	s4,s4,16700
9fc0413c:	05110024 	bgezal	t0,9fc041d0 <inst_error>
9fc04140:	ad170002 	sw	s7,2(t0)
9fc04144:	16570022 	bne	s2,s7,9fc041d0 <inst_error>
9fc04148:	00000000 	nop
9fc0414c:	24120005 	li	s2,5
9fc04150:	3c149fc0 	lui	s4,0x9fc0
9fc04154:	26944158 	addiu	s4,s4,16728
9fc04158:	0411001d 	bal	9fc041d0 <inst_error>
9fc0415c:	a5170001 	sh	s7,1(t0)
9fc04160:	1657001b 	bne	s2,s7,9fc041d0 <inst_error>
9fc04164:	00000000 	nop
9fc04168:	24120005 	li	s2,5
9fc0416c:	3c149fc0 	lui	s4,0x9fc0
9fc04170:	26944174 	addiu	s4,s4,16756
9fc04174:	05110016 	bgezal	t0,9fc041d0 <inst_error>
9fc04178:	a5170001 	sh	s7,1(t0)
9fc0417c:	16570014 	bne	s2,s7,9fc041d0 <inst_error>
9fc04180:	00000000 	nop
9fc04184:	24120007 	li	s2,7
9fc04188:	3c170007 	lui	s7,0x7
9fc0418c:	ad120000 	sw	s2,0(t0)
9fc04190:	3c149fc0 	lui	s4,0x9fc0
9fc04194:	26944198 	addiu	s4,s4,16792
9fc04198:	0411000d 	bal	9fc041d0 <inst_error>
9fc0419c:	9e3c56aa 	0x9e3c56aa
9fc041a0:	02f20018 	mult	s7,s2
9fc041a4:	1657000a 	bne	s2,s7,9fc041d0 <inst_error>
9fc041a8:	00000000 	nop
9fc041ac:	24120007 	li	s2,7
9fc041b0:	3c149fc0 	lui	s4,0x9fc0
9fc041b4:	269441bc 	addiu	s4,s4,16828
9fc041b8:	02f20018 	mult	s7,s2
9fc041bc:	05110004 	bgezal	t0,9fc041d0 <inst_error>
9fc041c0:	ec1ba960 	swc3	$27,-22176(zero)
9fc041c4:	16570002 	bne	s2,s7,9fc041d0 <inst_error>
9fc041c8:	00000000 	nop
9fc041cc:	26730001 	addiu	s3,s3,1

9fc041d0 <inst_error>:
9fc041d0:	00104e00 	sll	t1,s0,0x18
9fc041d4:	01334025 	or	t0,t1,s3
9fc041d8:	ae280000 	sw	t0,0(s1)
9fc041dc:	02c0f821 	move	ra,s6
9fc041e0:	03e00008 	jr	ra
9fc041e4:	00000000 	nop
9fc041e8:	00000000 	nop
9fc041ec:	00000000 	nop

9fc041f0 <n91_j_ds_ex_test>:
9fc041f0:	26100001 	addiu	s0,s0,1
9fc041f4:	3c08800d 	lui	t0,0x800d
9fc041f8:	40805800 	mtc0	zero,$11
9fc041fc:	3c170040 	lui	s7,0x40
9fc04200:	40976000 	mtc0	s7,c0_sr
9fc04204:	00000000 	nop
9fc04208:	24120001 	li	s2,1
9fc0420c:	3c170001 	lui	s7,0x1
9fc04210:	ad120000 	sw	s2,0(t0)
9fc04214:	3c149fc0 	lui	s4,0x9fc0
9fc04218:	2694421c 	addiu	s4,s4,16924
9fc0421c:	0bf01137 	j	9fc044dc <inst_error>
9fc04220:	0000000c 	syscall
9fc04224:	165700ad 	bne	s2,s7,9fc044dc <inst_error>
9fc04228:	00000000 	nop
9fc0422c:	24120001 	li	s2,1
9fc04230:	3c149fc0 	lui	s4,0x9fc0
9fc04234:	26944238 	addiu	s4,s4,16952
9fc04238:	0bf01137 	j	9fc044dc <inst_error>
9fc0423c:	0000000c 	syscall
9fc04240:	165700a6 	bne	s2,s7,9fc044dc <inst_error>
9fc04244:	00000000 	nop
9fc04248:	24120002 	li	s2,2
9fc0424c:	3c170002 	lui	s7,0x2
9fc04250:	ad120000 	sw	s2,0(t0)
9fc04254:	3c149fc0 	lui	s4,0x9fc0
9fc04258:	2694425c 	addiu	s4,s4,16988
9fc0425c:	0bf01137 	j	9fc044dc <inst_error>
9fc04260:	0000000d 	break
9fc04264:	1657009d 	bne	s2,s7,9fc044dc <inst_error>
9fc04268:	00000000 	nop
9fc0426c:	24120002 	li	s2,2
9fc04270:	3c149fc0 	lui	s4,0x9fc0
9fc04274:	26944278 	addiu	s4,s4,17016
9fc04278:	0bf01137 	j	9fc044dc <inst_error>
9fc0427c:	0000000d 	break
9fc04280:	16570096 	bne	s2,s7,9fc044dc <inst_error>
9fc04284:	00000000 	nop
9fc04288:	24120003 	li	s2,3
9fc0428c:	3c170003 	lui	s7,0x3
9fc04290:	ad120000 	sw	s2,0(t0)
9fc04294:	3c149fc0 	lui	s4,0x9fc0
9fc04298:	269442ac 	addiu	s4,s4,17068
9fc0429c:	3c04ba03 	lui	a0,0xba03
9fc042a0:	34844f60 	ori	a0,a0,0x4f60
9fc042a4:	3c05b615 	lui	a1,0xb615
9fc042a8:	34a5fd67 	ori	a1,a1,0xfd67
9fc042ac:	0bf01137 	j	9fc044dc <inst_error>
9fc042b0:	0085b820 	add	s7,a0,a1
9fc042b4:	16570089 	bne	s2,s7,9fc044dc <inst_error>
9fc042b8:	00000000 	nop
9fc042bc:	24120003 	li	s2,3
9fc042c0:	3c149fc0 	lui	s4,0x9fc0
9fc042c4:	269442c8 	addiu	s4,s4,17096
9fc042c8:	0bf01137 	j	9fc044dc <inst_error>
9fc042cc:	0085b820 	add	s7,a0,a1
9fc042d0:	ad170000 	sw	s7,0(t0)
9fc042d4:	16570081 	bne	s2,s7,9fc044dc <inst_error>
9fc042d8:	00000000 	nop
9fc042dc:	24120003 	li	s2,3
9fc042e0:	ad120000 	sw	s2,0(t0)
9fc042e4:	3c149fc0 	lui	s4,0x9fc0
9fc042e8:	269442f4 	addiu	s4,s4,17140
9fc042ec:	3c047fff 	lui	a0,0x7fff
9fc042f0:	3484c19e 	ori	a0,a0,0xc19e
9fc042f4:	0bf01137 	j	9fc044dc <inst_error>
9fc042f8:	20976512 	addi	s7,a0,25874
9fc042fc:	16570077 	bne	s2,s7,9fc044dc <inst_error>
9fc04300:	00000000 	nop
9fc04304:	24120003 	li	s2,3
9fc04308:	3c149fc0 	lui	s4,0x9fc0
9fc0430c:	26944310 	addiu	s4,s4,17168
9fc04310:	0bf01137 	j	9fc044dc <inst_error>
9fc04314:	20976512 	addi	s7,a0,25874
9fc04318:	16570070 	bne	s2,s7,9fc044dc <inst_error>
9fc0431c:	00000000 	nop
9fc04320:	24120003 	li	s2,3
9fc04324:	3c149fc0 	lui	s4,0x9fc0
9fc04328:	2694433c 	addiu	s4,s4,17212
9fc0432c:	3c04a85e 	lui	a0,0xa85e
9fc04330:	34847d00 	ori	a0,a0,0x7d00
9fc04334:	3c056b7e 	lui	a1,0x6b7e
9fc04338:	34a58e36 	ori	a1,a1,0x8e36
9fc0433c:	0bf01137 	j	9fc044dc <inst_error>
9fc04340:	0085b822 	sub	s7,a0,a1
9fc04344:	16570065 	bne	s2,s7,9fc044dc <inst_error>
9fc04348:	00000000 	nop
9fc0434c:	24120003 	li	s2,3
9fc04350:	3c149fc0 	lui	s4,0x9fc0
9fc04354:	26944358 	addiu	s4,s4,17240
9fc04358:	0bf01137 	j	9fc044dc <inst_error>
9fc0435c:	0085b822 	sub	s7,a0,a1
9fc04360:	1657005e 	bne	s2,s7,9fc044dc <inst_error>
9fc04364:	00000000 	nop
9fc04368:	24120004 	li	s2,4
9fc0436c:	3c170004 	lui	s7,0x4
9fc04370:	ad120000 	sw	s2,0(t0)
9fc04374:	3c149fc0 	lui	s4,0x9fc0
9fc04378:	2694437c 	addiu	s4,s4,17276
9fc0437c:	0bf01137 	j	9fc044dc <inst_error>
9fc04380:	8d170002 	lw	s7,2(t0)
9fc04384:	16570055 	bne	s2,s7,9fc044dc <inst_error>
9fc04388:	00000000 	nop
9fc0438c:	24120004 	li	s2,4
9fc04390:	3c149fc0 	lui	s4,0x9fc0
9fc04394:	26944398 	addiu	s4,s4,17304
9fc04398:	0bf01137 	j	9fc044dc <inst_error>
9fc0439c:	8d170002 	lw	s7,2(t0)
9fc043a0:	1657004e 	bne	s2,s7,9fc044dc <inst_error>
9fc043a4:	00000000 	nop
9fc043a8:	24120004 	li	s2,4
9fc043ac:	3c149fc0 	lui	s4,0x9fc0
9fc043b0:	269443b4 	addiu	s4,s4,17332
9fc043b4:	0bf01137 	j	9fc044dc <inst_error>
9fc043b8:	85170001 	lh	s7,1(t0)
9fc043bc:	02f2001b 	divu	zero,s7,s2
9fc043c0:	16570046 	bne	s2,s7,9fc044dc <inst_error>
9fc043c4:	00000000 	nop
9fc043c8:	24120004 	li	s2,4
9fc043cc:	3c149fc0 	lui	s4,0x9fc0
9fc043d0:	269443d4 	addiu	s4,s4,17364
9fc043d4:	0bf01137 	j	9fc044dc <inst_error>
9fc043d8:	85170001 	lh	s7,1(t0)
9fc043dc:	1657003f 	bne	s2,s7,9fc044dc <inst_error>
9fc043e0:	00000000 	nop
9fc043e4:	3c149fc0 	lui	s4,0x9fc0
9fc043e8:	269443ec 	addiu	s4,s4,17388
9fc043ec:	0bf01137 	j	9fc044dc <inst_error>
9fc043f0:	95170003 	lhu	s7,3(t0)
9fc043f4:	16570039 	bne	s2,s7,9fc044dc <inst_error>
9fc043f8:	00000000 	nop
9fc043fc:	24120004 	li	s2,4
9fc04400:	3c149fc0 	lui	s4,0x9fc0
9fc04404:	26944408 	addiu	s4,s4,17416
9fc04408:	0bf01137 	j	9fc044dc <inst_error>
9fc0440c:	95170003 	lhu	s7,3(t0)
9fc04410:	16570032 	bne	s2,s7,9fc044dc <inst_error>
9fc04414:	00000000 	nop
9fc04418:	24120005 	li	s2,5
9fc0441c:	3c170005 	lui	s7,0x5
9fc04420:	ad120000 	sw	s2,0(t0)
9fc04424:	3c149fc0 	lui	s4,0x9fc0
9fc04428:	2694442c 	addiu	s4,s4,17452
9fc0442c:	0bf01137 	j	9fc044dc <inst_error>
9fc04430:	ad170002 	sw	s7,2(t0)
9fc04434:	16570029 	bne	s2,s7,9fc044dc <inst_error>
9fc04438:	00000000 	nop
9fc0443c:	24120005 	li	s2,5
9fc04440:	3c149fc0 	lui	s4,0x9fc0
9fc04444:	26944448 	addiu	s4,s4,17480
9fc04448:	0bf01137 	j	9fc044dc <inst_error>
9fc0444c:	ad170002 	sw	s7,2(t0)
9fc04450:	16570022 	bne	s2,s7,9fc044dc <inst_error>
9fc04454:	00000000 	nop
9fc04458:	24120005 	li	s2,5
9fc0445c:	3c149fc0 	lui	s4,0x9fc0
9fc04460:	26944464 	addiu	s4,s4,17508
9fc04464:	0bf01137 	j	9fc044dc <inst_error>
9fc04468:	a5170001 	sh	s7,1(t0)
9fc0446c:	1657001b 	bne	s2,s7,9fc044dc <inst_error>
9fc04470:	00000000 	nop
9fc04474:	24120005 	li	s2,5
9fc04478:	3c149fc0 	lui	s4,0x9fc0
9fc0447c:	26944480 	addiu	s4,s4,17536
9fc04480:	0bf01137 	j	9fc044dc <inst_error>
9fc04484:	a5170001 	sh	s7,1(t0)
9fc04488:	16570014 	bne	s2,s7,9fc044dc <inst_error>
9fc0448c:	00000000 	nop
9fc04490:	24120007 	li	s2,7
9fc04494:	3c170007 	lui	s7,0x7
9fc04498:	ad120000 	sw	s2,0(t0)
9fc0449c:	3c149fc0 	lui	s4,0x9fc0
9fc044a0:	269444a4 	addiu	s4,s4,17572
9fc044a4:	0bf01137 	j	9fc044dc <inst_error>
9fc044a8:	9e3c56aa 	0x9e3c56aa
9fc044ac:	02f20018 	mult	s7,s2
9fc044b0:	1657000a 	bne	s2,s7,9fc044dc <inst_error>
9fc044b4:	00000000 	nop
9fc044b8:	24120007 	li	s2,7
9fc044bc:	3c149fc0 	lui	s4,0x9fc0
9fc044c0:	269444c8 	addiu	s4,s4,17608
9fc044c4:	02f20018 	mult	s7,s2
9fc044c8:	0bf01137 	j	9fc044dc <inst_error>
9fc044cc:	ec1ba960 	swc3	$27,-22176(zero)
9fc044d0:	16570002 	bne	s2,s7,9fc044dc <inst_error>
9fc044d4:	00000000 	nop
9fc044d8:	26730001 	addiu	s3,s3,1

9fc044dc <inst_error>:
9fc044dc:	00104e00 	sll	t1,s0,0x18
9fc044e0:	01334025 	or	t0,t1,s3
9fc044e4:	ae280000 	sw	t0,0(s1)
9fc044e8:	03e00008 	jr	ra
9fc044ec:	00000000 	nop

9fc044f0 <n92_jal_ds_ex_test>:
9fc044f0:	03e0b021 	move	s6,ra
9fc044f4:	26100001 	addiu	s0,s0,1
9fc044f8:	3c08800d 	lui	t0,0x800d
9fc044fc:	40805800 	mtc0	zero,$11
9fc04500:	3c170040 	lui	s7,0x40
9fc04504:	40976000 	mtc0	s7,c0_sr
9fc04508:	00000000 	nop
9fc0450c:	24120001 	li	s2,1
9fc04510:	3c170001 	lui	s7,0x1
9fc04514:	ad120000 	sw	s2,0(t0)
9fc04518:	3c149fc0 	lui	s4,0x9fc0
9fc0451c:	26944520 	addiu	s4,s4,17696
9fc04520:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04524:	0000000c 	syscall
9fc04528:	165700ad 	bne	s2,s7,9fc047e0 <inst_error>
9fc0452c:	00000000 	nop
9fc04530:	24120001 	li	s2,1
9fc04534:	3c149fc0 	lui	s4,0x9fc0
9fc04538:	2694453c 	addiu	s4,s4,17724
9fc0453c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04540:	0000000c 	syscall
9fc04544:	165700a6 	bne	s2,s7,9fc047e0 <inst_error>
9fc04548:	00000000 	nop
9fc0454c:	24120002 	li	s2,2
9fc04550:	3c170002 	lui	s7,0x2
9fc04554:	ad120000 	sw	s2,0(t0)
9fc04558:	3c149fc0 	lui	s4,0x9fc0
9fc0455c:	26944560 	addiu	s4,s4,17760
9fc04560:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04564:	0000000d 	break
9fc04568:	1657009d 	bne	s2,s7,9fc047e0 <inst_error>
9fc0456c:	00000000 	nop
9fc04570:	24120002 	li	s2,2
9fc04574:	3c149fc0 	lui	s4,0x9fc0
9fc04578:	2694457c 	addiu	s4,s4,17788
9fc0457c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04580:	0000000d 	break
9fc04584:	16570096 	bne	s2,s7,9fc047e0 <inst_error>
9fc04588:	00000000 	nop
9fc0458c:	24120003 	li	s2,3
9fc04590:	3c170003 	lui	s7,0x3
9fc04594:	ad120000 	sw	s2,0(t0)
9fc04598:	3c149fc0 	lui	s4,0x9fc0
9fc0459c:	269445b0 	addiu	s4,s4,17840
9fc045a0:	3c04ba03 	lui	a0,0xba03
9fc045a4:	34844f60 	ori	a0,a0,0x4f60
9fc045a8:	3c05b615 	lui	a1,0xb615
9fc045ac:	34a5fd67 	ori	a1,a1,0xfd67
9fc045b0:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc045b4:	0085b820 	add	s7,a0,a1
9fc045b8:	16570089 	bne	s2,s7,9fc047e0 <inst_error>
9fc045bc:	00000000 	nop
9fc045c0:	24120003 	li	s2,3
9fc045c4:	3c149fc0 	lui	s4,0x9fc0
9fc045c8:	269445cc 	addiu	s4,s4,17868
9fc045cc:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc045d0:	0085b820 	add	s7,a0,a1
9fc045d4:	ad170000 	sw	s7,0(t0)
9fc045d8:	16570081 	bne	s2,s7,9fc047e0 <inst_error>
9fc045dc:	00000000 	nop
9fc045e0:	24120003 	li	s2,3
9fc045e4:	ad120000 	sw	s2,0(t0)
9fc045e8:	3c149fc0 	lui	s4,0x9fc0
9fc045ec:	269445f8 	addiu	s4,s4,17912
9fc045f0:	3c047fff 	lui	a0,0x7fff
9fc045f4:	3484c19e 	ori	a0,a0,0xc19e
9fc045f8:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc045fc:	20976512 	addi	s7,a0,25874
9fc04600:	16570077 	bne	s2,s7,9fc047e0 <inst_error>
9fc04604:	00000000 	nop
9fc04608:	24120003 	li	s2,3
9fc0460c:	3c149fc0 	lui	s4,0x9fc0
9fc04610:	26944614 	addiu	s4,s4,17940
9fc04614:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04618:	20976512 	addi	s7,a0,25874
9fc0461c:	16570070 	bne	s2,s7,9fc047e0 <inst_error>
9fc04620:	00000000 	nop
9fc04624:	24120003 	li	s2,3
9fc04628:	3c149fc0 	lui	s4,0x9fc0
9fc0462c:	26944640 	addiu	s4,s4,17984
9fc04630:	3c04a85e 	lui	a0,0xa85e
9fc04634:	34847d00 	ori	a0,a0,0x7d00
9fc04638:	3c056b7e 	lui	a1,0x6b7e
9fc0463c:	34a58e36 	ori	a1,a1,0x8e36
9fc04640:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04644:	0085b822 	sub	s7,a0,a1
9fc04648:	16570065 	bne	s2,s7,9fc047e0 <inst_error>
9fc0464c:	00000000 	nop
9fc04650:	24120003 	li	s2,3
9fc04654:	3c149fc0 	lui	s4,0x9fc0
9fc04658:	2694465c 	addiu	s4,s4,18012
9fc0465c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04660:	0085b822 	sub	s7,a0,a1
9fc04664:	1657005e 	bne	s2,s7,9fc047e0 <inst_error>
9fc04668:	00000000 	nop
9fc0466c:	24120004 	li	s2,4
9fc04670:	3c170004 	lui	s7,0x4
9fc04674:	ad120000 	sw	s2,0(t0)
9fc04678:	3c149fc0 	lui	s4,0x9fc0
9fc0467c:	26944680 	addiu	s4,s4,18048
9fc04680:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04684:	8d170002 	lw	s7,2(t0)
9fc04688:	16570055 	bne	s2,s7,9fc047e0 <inst_error>
9fc0468c:	00000000 	nop
9fc04690:	24120004 	li	s2,4
9fc04694:	3c149fc0 	lui	s4,0x9fc0
9fc04698:	2694469c 	addiu	s4,s4,18076
9fc0469c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc046a0:	8d170002 	lw	s7,2(t0)
9fc046a4:	1657004e 	bne	s2,s7,9fc047e0 <inst_error>
9fc046a8:	00000000 	nop
9fc046ac:	24120004 	li	s2,4
9fc046b0:	3c149fc0 	lui	s4,0x9fc0
9fc046b4:	269446b8 	addiu	s4,s4,18104
9fc046b8:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc046bc:	85170001 	lh	s7,1(t0)
9fc046c0:	02f2001b 	divu	zero,s7,s2
9fc046c4:	16570046 	bne	s2,s7,9fc047e0 <inst_error>
9fc046c8:	00000000 	nop
9fc046cc:	24120004 	li	s2,4
9fc046d0:	3c149fc0 	lui	s4,0x9fc0
9fc046d4:	269446d8 	addiu	s4,s4,18136
9fc046d8:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc046dc:	85170001 	lh	s7,1(t0)
9fc046e0:	1657003f 	bne	s2,s7,9fc047e0 <inst_error>
9fc046e4:	00000000 	nop
9fc046e8:	3c149fc0 	lui	s4,0x9fc0
9fc046ec:	269446f0 	addiu	s4,s4,18160
9fc046f0:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc046f4:	95170003 	lhu	s7,3(t0)
9fc046f8:	16570039 	bne	s2,s7,9fc047e0 <inst_error>
9fc046fc:	00000000 	nop
9fc04700:	24120004 	li	s2,4
9fc04704:	3c149fc0 	lui	s4,0x9fc0
9fc04708:	2694470c 	addiu	s4,s4,18188
9fc0470c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04710:	95170003 	lhu	s7,3(t0)
9fc04714:	16570032 	bne	s2,s7,9fc047e0 <inst_error>
9fc04718:	00000000 	nop
9fc0471c:	24120005 	li	s2,5
9fc04720:	3c170005 	lui	s7,0x5
9fc04724:	ad120000 	sw	s2,0(t0)
9fc04728:	3c149fc0 	lui	s4,0x9fc0
9fc0472c:	26944730 	addiu	s4,s4,18224
9fc04730:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04734:	ad170002 	sw	s7,2(t0)
9fc04738:	16570029 	bne	s2,s7,9fc047e0 <inst_error>
9fc0473c:	00000000 	nop
9fc04740:	24120005 	li	s2,5
9fc04744:	3c149fc0 	lui	s4,0x9fc0
9fc04748:	2694474c 	addiu	s4,s4,18252
9fc0474c:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04750:	ad170002 	sw	s7,2(t0)
9fc04754:	16570022 	bne	s2,s7,9fc047e0 <inst_error>
9fc04758:	00000000 	nop
9fc0475c:	24120005 	li	s2,5
9fc04760:	3c149fc0 	lui	s4,0x9fc0
9fc04764:	26944768 	addiu	s4,s4,18280
9fc04768:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc0476c:	a5170001 	sh	s7,1(t0)
9fc04770:	1657001b 	bne	s2,s7,9fc047e0 <inst_error>
9fc04774:	00000000 	nop
9fc04778:	24120005 	li	s2,5
9fc0477c:	3c149fc0 	lui	s4,0x9fc0
9fc04780:	26944784 	addiu	s4,s4,18308
9fc04784:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc04788:	a5170001 	sh	s7,1(t0)
9fc0478c:	16570014 	bne	s2,s7,9fc047e0 <inst_error>
9fc04790:	00000000 	nop
9fc04794:	24120007 	li	s2,7
9fc04798:	3c170007 	lui	s7,0x7
9fc0479c:	ad120000 	sw	s2,0(t0)
9fc047a0:	3c149fc0 	lui	s4,0x9fc0
9fc047a4:	269447a8 	addiu	s4,s4,18344
9fc047a8:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc047ac:	9e3c56aa 	0x9e3c56aa
9fc047b0:	02f20018 	mult	s7,s2
9fc047b4:	1657000a 	bne	s2,s7,9fc047e0 <inst_error>
9fc047b8:	00000000 	nop
9fc047bc:	24120007 	li	s2,7
9fc047c0:	3c149fc0 	lui	s4,0x9fc0
9fc047c4:	269447cc 	addiu	s4,s4,18380
9fc047c8:	02f20018 	mult	s7,s2
9fc047cc:	0ff011f8 	jal	9fc047e0 <inst_error>
9fc047d0:	ec1ba960 	swc3	$27,-22176(zero)
9fc047d4:	16570002 	bne	s2,s7,9fc047e0 <inst_error>
9fc047d8:	00000000 	nop
9fc047dc:	26730001 	addiu	s3,s3,1

9fc047e0 <inst_error>:
9fc047e0:	00104e00 	sll	t1,s0,0x18
9fc047e4:	01334025 	or	t0,t1,s3
9fc047e8:	ae280000 	sw	t0,0(s1)
9fc047ec:	02c0f821 	move	ra,s6
9fc047f0:	03e00008 	jr	ra
9fc047f4:	00000000 	nop
9fc047f8:	00000000 	nop
9fc047fc:	00000000 	nop

9fc04800 <n93_jr_ds_ex_test>:
9fc04800:	26100001 	addiu	s0,s0,1
9fc04804:	3c08800d 	lui	t0,0x800d
9fc04808:	40805800 	mtc0	zero,$11
9fc0480c:	3c170040 	lui	s7,0x40
9fc04810:	40976000 	mtc0	s7,c0_sr
9fc04814:	00000000 	nop
9fc04818:	3c12a000 	lui	s2,0xa000
9fc0481c:	36520001 	ori	s2,s2,0x1
9fc04820:	3c170001 	lui	s7,0x1
9fc04824:	ad120000 	sw	s2,0(t0)
9fc04828:	3c149fc0 	lui	s4,0x9fc0
9fc0482c:	26944830 	addiu	s4,s4,18480
9fc04830:	02400008 	jr	s2
9fc04834:	0000000c 	syscall
9fc04838:	165700c1 	bne	s2,s7,9fc04b40 <inst_error>
9fc0483c:	00000000 	nop
9fc04840:	3c12a000 	lui	s2,0xa000
9fc04844:	36520001 	ori	s2,s2,0x1
9fc04848:	3c149fc0 	lui	s4,0x9fc0
9fc0484c:	26944850 	addiu	s4,s4,18512
9fc04850:	01000008 	jr	t0
9fc04854:	0000000c 	syscall
9fc04858:	165700b9 	bne	s2,s7,9fc04b40 <inst_error>
9fc0485c:	00000000 	nop
9fc04860:	3c12a000 	lui	s2,0xa000
9fc04864:	36520002 	ori	s2,s2,0x2
9fc04868:	3c170002 	lui	s7,0x2
9fc0486c:	ad120000 	sw	s2,0(t0)
9fc04870:	3c149fc0 	lui	s4,0x9fc0
9fc04874:	26944878 	addiu	s4,s4,18552
9fc04878:	02400008 	jr	s2
9fc0487c:	0000000d 	break
9fc04880:	165700af 	bne	s2,s7,9fc04b40 <inst_error>
9fc04884:	00000000 	nop
9fc04888:	3c12a000 	lui	s2,0xa000
9fc0488c:	36520002 	ori	s2,s2,0x2
9fc04890:	3c149fc0 	lui	s4,0x9fc0
9fc04894:	26944898 	addiu	s4,s4,18584
9fc04898:	01000008 	jr	t0
9fc0489c:	0000000d 	break
9fc048a0:	165700a7 	bne	s2,s7,9fc04b40 <inst_error>
9fc048a4:	00000000 	nop
9fc048a8:	3c12a000 	lui	s2,0xa000
9fc048ac:	36520003 	ori	s2,s2,0x3
9fc048b0:	3c170003 	lui	s7,0x3
9fc048b4:	ad120000 	sw	s2,0(t0)
9fc048b8:	3c149fc0 	lui	s4,0x9fc0
9fc048bc:	269448d0 	addiu	s4,s4,18640
9fc048c0:	3c04ba03 	lui	a0,0xba03
9fc048c4:	34844f60 	ori	a0,a0,0x4f60
9fc048c8:	3c05b615 	lui	a1,0xb615
9fc048cc:	34a5fd67 	ori	a1,a1,0xfd67
9fc048d0:	02400008 	jr	s2
9fc048d4:	0085b820 	add	s7,a0,a1
9fc048d8:	16570099 	bne	s2,s7,9fc04b40 <inst_error>
9fc048dc:	00000000 	nop
9fc048e0:	3c12a000 	lui	s2,0xa000
9fc048e4:	36520003 	ori	s2,s2,0x3
9fc048e8:	3c149fc0 	lui	s4,0x9fc0
9fc048ec:	269448f0 	addiu	s4,s4,18672
9fc048f0:	01000008 	jr	t0
9fc048f4:	0085b820 	add	s7,a0,a1
9fc048f8:	ad170000 	sw	s7,0(t0)
9fc048fc:	16570090 	bne	s2,s7,9fc04b40 <inst_error>
9fc04900:	00000000 	nop
9fc04904:	3c12a000 	lui	s2,0xa000
9fc04908:	36520003 	ori	s2,s2,0x3
9fc0490c:	ad120000 	sw	s2,0(t0)
9fc04910:	3c149fc0 	lui	s4,0x9fc0
9fc04914:	26944920 	addiu	s4,s4,18720
9fc04918:	3c047fff 	lui	a0,0x7fff
9fc0491c:	3484c19e 	ori	a0,a0,0xc19e
9fc04920:	02400008 	jr	s2
9fc04924:	20976512 	addi	s7,a0,25874
9fc04928:	16570085 	bne	s2,s7,9fc04b40 <inst_error>
9fc0492c:	00000000 	nop
9fc04930:	3c12a000 	lui	s2,0xa000
9fc04934:	36520003 	ori	s2,s2,0x3
9fc04938:	3c149fc0 	lui	s4,0x9fc0
9fc0493c:	26944940 	addiu	s4,s4,18752
9fc04940:	01000008 	jr	t0
9fc04944:	20976512 	addi	s7,a0,25874
9fc04948:	1657007d 	bne	s2,s7,9fc04b40 <inst_error>
9fc0494c:	00000000 	nop
9fc04950:	3c12a000 	lui	s2,0xa000
9fc04954:	36520003 	ori	s2,s2,0x3
9fc04958:	3c149fc0 	lui	s4,0x9fc0
9fc0495c:	26944970 	addiu	s4,s4,18800
9fc04960:	3c04a85e 	lui	a0,0xa85e
9fc04964:	34847d00 	ori	a0,a0,0x7d00
9fc04968:	3c056b7e 	lui	a1,0x6b7e
9fc0496c:	34a58e36 	ori	a1,a1,0x8e36
9fc04970:	02400008 	jr	s2
9fc04974:	0085b822 	sub	s7,a0,a1
9fc04978:	16570071 	bne	s2,s7,9fc04b40 <inst_error>
9fc0497c:	00000000 	nop
9fc04980:	3c12a000 	lui	s2,0xa000
9fc04984:	36520003 	ori	s2,s2,0x3
9fc04988:	3c149fc0 	lui	s4,0x9fc0
9fc0498c:	26944990 	addiu	s4,s4,18832
9fc04990:	01000008 	jr	t0
9fc04994:	0085b822 	sub	s7,a0,a1
9fc04998:	16570069 	bne	s2,s7,9fc04b40 <inst_error>
9fc0499c:	00000000 	nop
9fc049a0:	3c12a000 	lui	s2,0xa000
9fc049a4:	36520004 	ori	s2,s2,0x4
9fc049a8:	3c170004 	lui	s7,0x4
9fc049ac:	ad120000 	sw	s2,0(t0)
9fc049b0:	3c149fc0 	lui	s4,0x9fc0
9fc049b4:	269449b8 	addiu	s4,s4,18872
9fc049b8:	02400008 	jr	s2
9fc049bc:	8d170002 	lw	s7,2(t0)
9fc049c0:	1657005f 	bne	s2,s7,9fc04b40 <inst_error>
9fc049c4:	00000000 	nop
9fc049c8:	3c12a000 	lui	s2,0xa000
9fc049cc:	36520004 	ori	s2,s2,0x4
9fc049d0:	3c149fc0 	lui	s4,0x9fc0
9fc049d4:	269449d8 	addiu	s4,s4,18904
9fc049d8:	01000008 	jr	t0
9fc049dc:	8d170002 	lw	s7,2(t0)
9fc049e0:	16570057 	bne	s2,s7,9fc04b40 <inst_error>
9fc049e4:	00000000 	nop
9fc049e8:	3c12a000 	lui	s2,0xa000
9fc049ec:	36520004 	ori	s2,s2,0x4
9fc049f0:	3c149fc0 	lui	s4,0x9fc0
9fc049f4:	269449f8 	addiu	s4,s4,18936
9fc049f8:	02400008 	jr	s2
9fc049fc:	85170001 	lh	s7,1(t0)
9fc04a00:	02f2001b 	divu	zero,s7,s2
9fc04a04:	1657004e 	bne	s2,s7,9fc04b40 <inst_error>
9fc04a08:	00000000 	nop
9fc04a0c:	3c12a000 	lui	s2,0xa000
9fc04a10:	36520004 	ori	s2,s2,0x4
9fc04a14:	3c149fc0 	lui	s4,0x9fc0
9fc04a18:	26944a1c 	addiu	s4,s4,18972
9fc04a1c:	02400008 	jr	s2
9fc04a20:	85170001 	lh	s7,1(t0)
9fc04a24:	16570046 	bne	s2,s7,9fc04b40 <inst_error>
9fc04a28:	00000000 	nop
9fc04a2c:	3c149fc0 	lui	s4,0x9fc0
9fc04a30:	26944a34 	addiu	s4,s4,18996
9fc04a34:	01000008 	jr	t0
9fc04a38:	95170003 	lhu	s7,3(t0)
9fc04a3c:	16570040 	bne	s2,s7,9fc04b40 <inst_error>
9fc04a40:	00000000 	nop
9fc04a44:	3c12a000 	lui	s2,0xa000
9fc04a48:	36520004 	ori	s2,s2,0x4
9fc04a4c:	3c149fc0 	lui	s4,0x9fc0
9fc04a50:	26944a54 	addiu	s4,s4,19028
9fc04a54:	01000008 	jr	t0
9fc04a58:	95170003 	lhu	s7,3(t0)
9fc04a5c:	16570038 	bne	s2,s7,9fc04b40 <inst_error>
9fc04a60:	00000000 	nop
9fc04a64:	3c12a000 	lui	s2,0xa000
9fc04a68:	36520005 	ori	s2,s2,0x5
9fc04a6c:	3c170005 	lui	s7,0x5
9fc04a70:	ad120000 	sw	s2,0(t0)
9fc04a74:	3c149fc0 	lui	s4,0x9fc0
9fc04a78:	26944a7c 	addiu	s4,s4,19068
9fc04a7c:	02400008 	jr	s2
9fc04a80:	ad170002 	sw	s7,2(t0)
9fc04a84:	1657002e 	bne	s2,s7,9fc04b40 <inst_error>
9fc04a88:	00000000 	nop
9fc04a8c:	3c12a000 	lui	s2,0xa000
9fc04a90:	36520005 	ori	s2,s2,0x5
9fc04a94:	3c149fc0 	lui	s4,0x9fc0
9fc04a98:	26944a9c 	addiu	s4,s4,19100
9fc04a9c:	02400008 	jr	s2
9fc04aa0:	ad170002 	sw	s7,2(t0)
9fc04aa4:	16570026 	bne	s2,s7,9fc04b40 <inst_error>
9fc04aa8:	00000000 	nop
9fc04aac:	3c12a000 	lui	s2,0xa000
9fc04ab0:	36520005 	ori	s2,s2,0x5
9fc04ab4:	3c149fc0 	lui	s4,0x9fc0
9fc04ab8:	26944abc 	addiu	s4,s4,19132
9fc04abc:	01000008 	jr	t0
9fc04ac0:	a5170001 	sh	s7,1(t0)
9fc04ac4:	1657001e 	bne	s2,s7,9fc04b40 <inst_error>
9fc04ac8:	00000000 	nop
9fc04acc:	3c12a000 	lui	s2,0xa000
9fc04ad0:	36520005 	ori	s2,s2,0x5
9fc04ad4:	3c149fc0 	lui	s4,0x9fc0
9fc04ad8:	26944adc 	addiu	s4,s4,19164
9fc04adc:	01000008 	jr	t0
9fc04ae0:	a5170001 	sh	s7,1(t0)
9fc04ae4:	16570016 	bne	s2,s7,9fc04b40 <inst_error>
9fc04ae8:	00000000 	nop
9fc04aec:	3c12a000 	lui	s2,0xa000
9fc04af0:	36520007 	ori	s2,s2,0x7
9fc04af4:	3c170007 	lui	s7,0x7
9fc04af8:	ad120000 	sw	s2,0(t0)
9fc04afc:	3c149fc0 	lui	s4,0x9fc0
9fc04b00:	26944b04 	addiu	s4,s4,19204
9fc04b04:	02400008 	jr	s2
9fc04b08:	9e3c56aa 	0x9e3c56aa
9fc04b0c:	02f20018 	mult	s7,s2
9fc04b10:	1657000b 	bne	s2,s7,9fc04b40 <inst_error>
9fc04b14:	00000000 	nop
9fc04b18:	3c12a000 	lui	s2,0xa000
9fc04b1c:	36520007 	ori	s2,s2,0x7
9fc04b20:	3c149fc0 	lui	s4,0x9fc0
9fc04b24:	26944b2c 	addiu	s4,s4,19244
9fc04b28:	02f20018 	mult	s7,s2
9fc04b2c:	01000008 	jr	t0
9fc04b30:	ec1ba960 	swc3	$27,-22176(zero)
9fc04b34:	16570002 	bne	s2,s7,9fc04b40 <inst_error>
9fc04b38:	00000000 	nop
9fc04b3c:	26730001 	addiu	s3,s3,1

9fc04b40 <inst_error>:
9fc04b40:	00104e00 	sll	t1,s0,0x18
9fc04b44:	01334025 	or	t0,t1,s3
9fc04b48:	ae280000 	sw	t0,0(s1)
9fc04b4c:	03e00008 	jr	ra
9fc04b50:	00000000 	nop
9fc04b54:	00000000 	nop
9fc04b58:	00000000 	nop
9fc04b5c:	00000000 	nop

9fc04b60 <n94_jalr_ds_ex_test>:
9fc04b60:	03e0b021 	move	s6,ra
9fc04b64:	26100001 	addiu	s0,s0,1
9fc04b68:	3c08800d 	lui	t0,0x800d
9fc04b6c:	40805800 	mtc0	zero,$11
9fc04b70:	3c170040 	lui	s7,0x40
9fc04b74:	40976000 	mtc0	s7,c0_sr
9fc04b78:	00000000 	nop
9fc04b7c:	3c12a000 	lui	s2,0xa000
9fc04b80:	36520001 	ori	s2,s2,0x1
9fc04b84:	3c170001 	lui	s7,0x1
9fc04b88:	ad120000 	sw	s2,0(t0)
9fc04b8c:	3c149fc0 	lui	s4,0x9fc0
9fc04b90:	26944b94 	addiu	s4,s4,19348
9fc04b94:	0240f809 	jalr	s2
9fc04b98:	0000000c 	syscall
9fc04b9c:	165700c1 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04ba0:	00000000 	nop
9fc04ba4:	3c12a000 	lui	s2,0xa000
9fc04ba8:	36520001 	ori	s2,s2,0x1
9fc04bac:	3c149fc0 	lui	s4,0x9fc0
9fc04bb0:	26944bb4 	addiu	s4,s4,19380
9fc04bb4:	0100f809 	jalr	t0
9fc04bb8:	0000000c 	syscall
9fc04bbc:	165700b9 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04bc0:	00000000 	nop
9fc04bc4:	3c12a000 	lui	s2,0xa000
9fc04bc8:	36520002 	ori	s2,s2,0x2
9fc04bcc:	3c170002 	lui	s7,0x2
9fc04bd0:	ad120000 	sw	s2,0(t0)
9fc04bd4:	3c149fc0 	lui	s4,0x9fc0
9fc04bd8:	26944bdc 	addiu	s4,s4,19420
9fc04bdc:	0240f809 	jalr	s2
9fc04be0:	0000000d 	break
9fc04be4:	165700af 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04be8:	00000000 	nop
9fc04bec:	3c12a000 	lui	s2,0xa000
9fc04bf0:	36520002 	ori	s2,s2,0x2
9fc04bf4:	3c149fc0 	lui	s4,0x9fc0
9fc04bf8:	26944bfc 	addiu	s4,s4,19452
9fc04bfc:	0100f809 	jalr	t0
9fc04c00:	0000000d 	break
9fc04c04:	165700a7 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04c08:	00000000 	nop
9fc04c0c:	3c12a000 	lui	s2,0xa000
9fc04c10:	36520003 	ori	s2,s2,0x3
9fc04c14:	3c170003 	lui	s7,0x3
9fc04c18:	ad120000 	sw	s2,0(t0)
9fc04c1c:	3c149fc0 	lui	s4,0x9fc0
9fc04c20:	26944c34 	addiu	s4,s4,19508
9fc04c24:	3c04ba03 	lui	a0,0xba03
9fc04c28:	34844f60 	ori	a0,a0,0x4f60
9fc04c2c:	3c05b615 	lui	a1,0xb615
9fc04c30:	34a5fd67 	ori	a1,a1,0xfd67
9fc04c34:	0240f809 	jalr	s2
9fc04c38:	0085b820 	add	s7,a0,a1
9fc04c3c:	16570099 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04c40:	00000000 	nop
9fc04c44:	3c12a000 	lui	s2,0xa000
9fc04c48:	36520003 	ori	s2,s2,0x3
9fc04c4c:	3c149fc0 	lui	s4,0x9fc0
9fc04c50:	26944c54 	addiu	s4,s4,19540
9fc04c54:	0100f809 	jalr	t0
9fc04c58:	0085b820 	add	s7,a0,a1
9fc04c5c:	ad170000 	sw	s7,0(t0)
9fc04c60:	16570090 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04c64:	00000000 	nop
9fc04c68:	3c12a000 	lui	s2,0xa000
9fc04c6c:	36520003 	ori	s2,s2,0x3
9fc04c70:	ad120000 	sw	s2,0(t0)
9fc04c74:	3c149fc0 	lui	s4,0x9fc0
9fc04c78:	26944c84 	addiu	s4,s4,19588
9fc04c7c:	3c047fff 	lui	a0,0x7fff
9fc04c80:	3484c19e 	ori	a0,a0,0xc19e
9fc04c84:	0240f809 	jalr	s2
9fc04c88:	20976512 	addi	s7,a0,25874
9fc04c8c:	16570085 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04c90:	00000000 	nop
9fc04c94:	3c12a000 	lui	s2,0xa000
9fc04c98:	36520003 	ori	s2,s2,0x3
9fc04c9c:	3c149fc0 	lui	s4,0x9fc0
9fc04ca0:	26944ca4 	addiu	s4,s4,19620
9fc04ca4:	0100f809 	jalr	t0
9fc04ca8:	20976512 	addi	s7,a0,25874
9fc04cac:	1657007d 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04cb0:	00000000 	nop
9fc04cb4:	3c12a000 	lui	s2,0xa000
9fc04cb8:	36520003 	ori	s2,s2,0x3
9fc04cbc:	3c149fc0 	lui	s4,0x9fc0
9fc04cc0:	26944cd4 	addiu	s4,s4,19668
9fc04cc4:	3c04a85e 	lui	a0,0xa85e
9fc04cc8:	34847d00 	ori	a0,a0,0x7d00
9fc04ccc:	3c056b7e 	lui	a1,0x6b7e
9fc04cd0:	34a58e36 	ori	a1,a1,0x8e36
9fc04cd4:	0240f809 	jalr	s2
9fc04cd8:	0085b822 	sub	s7,a0,a1
9fc04cdc:	16570071 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04ce0:	00000000 	nop
9fc04ce4:	3c12a000 	lui	s2,0xa000
9fc04ce8:	36520003 	ori	s2,s2,0x3
9fc04cec:	3c149fc0 	lui	s4,0x9fc0
9fc04cf0:	26944cf4 	addiu	s4,s4,19700
9fc04cf4:	0100f809 	jalr	t0
9fc04cf8:	0085b822 	sub	s7,a0,a1
9fc04cfc:	16570069 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04d00:	00000000 	nop
9fc04d04:	3c12a000 	lui	s2,0xa000
9fc04d08:	36520004 	ori	s2,s2,0x4
9fc04d0c:	3c170004 	lui	s7,0x4
9fc04d10:	ad120000 	sw	s2,0(t0)
9fc04d14:	3c149fc0 	lui	s4,0x9fc0
9fc04d18:	26944d1c 	addiu	s4,s4,19740
9fc04d1c:	0240f809 	jalr	s2
9fc04d20:	8d170002 	lw	s7,2(t0)
9fc04d24:	1657005f 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04d28:	00000000 	nop
9fc04d2c:	3c12a000 	lui	s2,0xa000
9fc04d30:	36520004 	ori	s2,s2,0x4
9fc04d34:	3c149fc0 	lui	s4,0x9fc0
9fc04d38:	26944d3c 	addiu	s4,s4,19772
9fc04d3c:	0100f809 	jalr	t0
9fc04d40:	8d170002 	lw	s7,2(t0)
9fc04d44:	16570057 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04d48:	00000000 	nop
9fc04d4c:	3c12a000 	lui	s2,0xa000
9fc04d50:	36520004 	ori	s2,s2,0x4
9fc04d54:	3c149fc0 	lui	s4,0x9fc0
9fc04d58:	26944d5c 	addiu	s4,s4,19804
9fc04d5c:	0240f809 	jalr	s2
9fc04d60:	85170001 	lh	s7,1(t0)
9fc04d64:	02f2001b 	divu	zero,s7,s2
9fc04d68:	1657004e 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04d6c:	00000000 	nop
9fc04d70:	3c12a000 	lui	s2,0xa000
9fc04d74:	36520004 	ori	s2,s2,0x4
9fc04d78:	3c149fc0 	lui	s4,0x9fc0
9fc04d7c:	26944d80 	addiu	s4,s4,19840
9fc04d80:	0240f809 	jalr	s2
9fc04d84:	85170001 	lh	s7,1(t0)
9fc04d88:	16570046 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04d8c:	00000000 	nop
9fc04d90:	3c149fc0 	lui	s4,0x9fc0
9fc04d94:	26944d98 	addiu	s4,s4,19864
9fc04d98:	0100f809 	jalr	t0
9fc04d9c:	95170003 	lhu	s7,3(t0)
9fc04da0:	16570040 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04da4:	00000000 	nop
9fc04da8:	3c12a000 	lui	s2,0xa000
9fc04dac:	36520004 	ori	s2,s2,0x4
9fc04db0:	3c149fc0 	lui	s4,0x9fc0
9fc04db4:	26944db8 	addiu	s4,s4,19896
9fc04db8:	0100f809 	jalr	t0
9fc04dbc:	95170003 	lhu	s7,3(t0)
9fc04dc0:	16570038 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04dc4:	00000000 	nop
9fc04dc8:	3c12a000 	lui	s2,0xa000
9fc04dcc:	36520005 	ori	s2,s2,0x5
9fc04dd0:	3c170005 	lui	s7,0x5
9fc04dd4:	ad120000 	sw	s2,0(t0)
9fc04dd8:	3c149fc0 	lui	s4,0x9fc0
9fc04ddc:	26944de0 	addiu	s4,s4,19936
9fc04de0:	0240f809 	jalr	s2
9fc04de4:	ad170002 	sw	s7,2(t0)
9fc04de8:	1657002e 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04dec:	00000000 	nop
9fc04df0:	3c12a000 	lui	s2,0xa000
9fc04df4:	36520005 	ori	s2,s2,0x5
9fc04df8:	3c149fc0 	lui	s4,0x9fc0
9fc04dfc:	26944e00 	addiu	s4,s4,19968
9fc04e00:	0240f809 	jalr	s2
9fc04e04:	ad170002 	sw	s7,2(t0)
9fc04e08:	16570026 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04e0c:	00000000 	nop
9fc04e10:	3c12a000 	lui	s2,0xa000
9fc04e14:	36520005 	ori	s2,s2,0x5
9fc04e18:	3c149fc0 	lui	s4,0x9fc0
9fc04e1c:	26944e20 	addiu	s4,s4,20000
9fc04e20:	0100f809 	jalr	t0
9fc04e24:	a5170001 	sh	s7,1(t0)
9fc04e28:	1657001e 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04e2c:	00000000 	nop
9fc04e30:	3c12a000 	lui	s2,0xa000
9fc04e34:	36520005 	ori	s2,s2,0x5
9fc04e38:	3c149fc0 	lui	s4,0x9fc0
9fc04e3c:	26944e40 	addiu	s4,s4,20032
9fc04e40:	0100f809 	jalr	t0
9fc04e44:	a5170001 	sh	s7,1(t0)
9fc04e48:	16570016 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04e4c:	00000000 	nop
9fc04e50:	3c12a000 	lui	s2,0xa000
9fc04e54:	36520007 	ori	s2,s2,0x7
9fc04e58:	3c170007 	lui	s7,0x7
9fc04e5c:	ad120000 	sw	s2,0(t0)
9fc04e60:	3c149fc0 	lui	s4,0x9fc0
9fc04e64:	26944e68 	addiu	s4,s4,20072
9fc04e68:	0240f809 	jalr	s2
9fc04e6c:	9e3c56aa 	0x9e3c56aa
9fc04e70:	02f20018 	mult	s7,s2
9fc04e74:	1657000b 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04e78:	00000000 	nop
9fc04e7c:	3c12a000 	lui	s2,0xa000
9fc04e80:	36520007 	ori	s2,s2,0x7
9fc04e84:	3c149fc0 	lui	s4,0x9fc0
9fc04e88:	26944e90 	addiu	s4,s4,20112
9fc04e8c:	02f20018 	mult	s7,s2
9fc04e90:	0100f809 	jalr	t0
9fc04e94:	ec1ba960 	swc3	$27,-22176(zero)
9fc04e98:	16570002 	bne	s2,s7,9fc04ea4 <inst_error>
9fc04e9c:	00000000 	nop
9fc04ea0:	26730001 	addiu	s3,s3,1

9fc04ea4 <inst_error>:
9fc04ea4:	00104e00 	sll	t1,s0,0x18
9fc04ea8:	01334025 	or	t0,t1,s3
9fc04eac:	ae280000 	sw	t0,0(s1)
9fc04eb0:	02c0f821 	move	ra,s6
9fc04eb4:	03e00008 	jr	ra
9fc04eb8:	00000000 	nop
9fc04ebc:	00000000 	nop
9fc04ec0:	9e3f7f70 	0x9e3f7f70
9fc04ec4:	00000000 	nop
9fc04ec8:	00000000 	nop
9fc04ecc:	00000000 	nop
9fc04ed0:	00000000 	nop
9fc04ed4:	00000000 	nop
