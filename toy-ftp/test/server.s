	.file	"inline.bc"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.file	1 "../../straightDFA/init.c"
	.file	2 "/usr/include/libio.h"
	.file	3 "../../straightDFA/log.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits/semaphore.h"
	.file	5 "../../straightDFA/log.c"
	.text
	.globl	_Z8myListenv
	.align	16, 0x90
	.type	_Z8myListenv,@function
_Z8myListenv:                           # @_Z8myListenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movw	$1, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$1, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_3
# BB#1:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_3:                                # %_StraightTaint_log.exit
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rcx, %r15
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	$0, -16(%r15)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, -16(%rax)
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, -16(%r15)
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$3472328296227680304, %rax # imm = 0x3030303030303030
	movq	%rax, -8(%rbx)
	movq	%rax, -16(%rbx)
	movw	$2, -16(%rbx)
	xorl	%edi, %edi
	callq	htonl
	movl	%eax, -12(%rbx)
	movl	$5000, %edi             # imm = 0x1388
	callq	htons
	movw	%ax, -14(%rbx)
	movl	-16(%r15), %edi
	movl	$16, %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	bind
	movl	-16(%r15), %edi
	movl	$10, %esi
	callq	listen
	cmpl	$-1, %eax
	je	.LBB0_4
# BB#8:                                 # %if.end
	movw	$3, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$3, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_11
# BB#9:                                 # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_11
# BB#10:                                # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_11:                               # %_StraightTaint_log.exit38
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, (%r12)
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_67:                               # %_StraightTaint_log.exit323
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	(%r12)
.LBB0_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movw	$4, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$4, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_15
# BB#13:                                # %if.else.i52
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_15
# BB#14:                                # %if.then2.i55
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_15:                               # %_StraightTaint_log.exit57
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$1, (%r12)
	jg	.LBB0_68
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$5, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$5, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_19
# BB#17:                                # %if.else.i71
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_19
# BB#18:                                # %if.then2.i74
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_19:                               # %_StraightTaint_log.exit76
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str6, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %edi
	callq	accept
	movl	%eax, (%r13)
	movl	$.L.str7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %esi
	movl	$.L.str8, %edi
	xorl	%eax, %eax
	callq	printf
	callq	fork
	movl	%eax, %ebx
	movl	%ebx, -44(%rbp)
	.loc	1 273 0                 # ../../straightDFA/init.c:273:0
	movl	%ebx, %edi
	callq	do_StraightTaint_fork
	testl	%ebx, %ebx
	movl	%ebx, (%r14)
	js	.LBB0_20
# BB#24:                                # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$7, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$7, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_27
# BB#25:                                # %if.else.i109
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_27
# BB#26:                                # %if.then2.i112
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_27:                               # %_StraightTaint_log.exit114
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, (%r14)
	je	.LBB0_28
# BB#32:                                # %if.else26
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$9, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$9, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_35
# BB#33:                                # %if.else.i147
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_35
# BB#34:                                # %if.then2.i150
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_35:                               # %_StraightTaint_log.exit152
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	wait
	cmpl	$-1, %eax
	movl	%eax, (%r14)
	jne	.LBB0_40
# BB#36:                                # %if.then29
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$10, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$10, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_39
# BB#37:                                # %if.else.i166
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_39
# BB#38:                                # %if.then2.i169
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_39:                               # %_StraightTaint_log.exit171
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str11, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_55
	.align	16, 0x90
.LBB0_40:                               # %if.else31
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$11, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$11, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_43
# BB#41:                                # %if.else.i185
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_43
# BB#42:                                # %if.then2.i188
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_43:                               # %_StraightTaint_log.exit190
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$127, (%rax)
	jne	.LBB0_48
# BB#44:                                # %if.then34
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$12, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$12, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_47
# BB#45:                                # %if.else.i204
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_47
# BB#46:                                # %if.then2.i207
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_47:                               # %_StraightTaint_log.exit209
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	(%r13), %edi
	callq	close
	movl	(%r14), %esi
	movl	$.L.str12, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_48:                               # %if.else37
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$13, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$13, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_51
# BB#49:                                # %if.else.i223
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_51
# BB#50:                                # %if.then2.i226
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_51:                               # %_StraightTaint_log.exit228
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str13, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_52:                               # %if.end39
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$14, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$14, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_55
# BB#53:                                # %if.else.i242
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_55
# BB#54:                                # %if.then2.i245
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	.align	16, 0x90
.LBB0_55:                               # %if.end40
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$15, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$15, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_58
# BB#56:                                # %if.else.i261
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_58
# BB#57:                                # %if.then2.i264
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_58:                               # %if.end42
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, %edi
	callq	sleep
	movw	$16, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$16, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_61
# BB#59:                                # %if.else.i280
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_61
# BB#60:                                # %if.then2.i283
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_61:                               # %if.end43
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$17, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$17, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_64
# BB#62:                                # %if.else.i299
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_64
# BB#63:                                # %if.then2.i302
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_64:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$18, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$18, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_67
# BB#65:                                # %if.else.i318
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_67
# BB#66:                                # %if.then2.i321
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	jmp	.LBB0_67
.LBB0_28:                               # %if.then19
	movw	$8, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$8, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_31
# BB#29:                                # %if.else.i128
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_31
# BB#30:                                # %if.then2.i131
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_31:                               # %_StraightTaint_log.exit133
	movl	(%r14), %esi
	movl	$.L.str9, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %edi
	xorl	%esi, %esi
	callq	dup2
	movl	%eax, %ecx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	movl	$.L.str10, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	(%r13), %esi
	movl	$.L.str8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %edi
	callq	close
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	callq	close
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_4:                                # %if.then
	movw	$2, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$2, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_7:                                # %_StraightTaint_log.exit19
	movl	$.L.str2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str3, %edi
	movl	$.L.str4, %esi
	movl	$31, %edx
	movl	$.L__PRETTY_FUNCTION__._Z8myListenv, %ecx
	callq	__assert_fail
.LBB0_68:                               # %for.end
	movw	$19, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$19, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_71
# BB#69:                                # %if.else.i337
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_71
# BB#70:                                # %if.then2.i340
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_71:                               # %_StraightTaint_log.exit342
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, %edi
	callq	close
	xorl	%edi, %edi
	callq	exit
.LBB0_20:                               # %if.then17
	movw	$6, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$6, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_23
# BB#21:                                # %if.else.i90
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_23
# BB#22:                                # %if.then2.i93
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_23:                               # %_StraightTaint_log.exit95
	movl	$.L.str3, %edi
	movl	$.L.str4, %esi
	movl	$46, %edx
	movl	$.L__PRETTY_FUNCTION__._Z8myListenv, %ecx
	callq	__assert_fail
.Ltmp11:
	.size	_Z8myListenv, .Ltmp11-_Z8myListenv
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movl	$addr, %edi
	callq	_StraightTaint_init
	movq	%rax, addr(%rip)
	movw	$20, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$20, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_3
# BB#1:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_3:                                # %_StraightTaint_log.exit
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r15
	addq	$-1040, %r15            # imm = 0xFFFFFFFFFFFFFBF0
	movq	%r15, %rsp
	movq	%rsp, %r13
	leaq	-16(%r13), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r14
	addq	$-32, %r14
	movq	%r14, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	addq	$-16, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movl	$.L.str14, %edi
	xorl	%eax, %eax
	callq	printf
	callq	_Z8myListenv
	xorl	%edi, %edi
	movl	$1025, %edx             # imm = 0x401
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	callq	recv
	testl	%eax, %eax
	movl	%eax, -16(%r13)
	je	.LBB1_18
# BB#4:                                 # %cond.true
	movw	$21, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$21, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_7:                                # %cond.end
	movw	$24, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$24, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_10
# BB#8:                                 # %if.else.i71
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_10
# BB#9:                                 # %if.then2.i74
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_10:                               # %_StraightTaint_log.exit76
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movl	$.L.str16, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	sleep
	movq	%r15, %rdi
	callq	strlen
	movl	$1, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	write
	callq	getpid
	testl	%eax, %eax
	movl	%eax, (%r12)
	jle	.LBB1_22
# BB#11:                                # %cond.true10
	movw	$25, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$25, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_14
# BB#12:                                # %if.else.i90
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_14
# BB#13:                                # %if.then2.i93
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_14:                               # %cond.end12
	movw	$28, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$28, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_17
# BB#15:                                # %if.else.i147
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_17
# BB#16:                                # %if.then2.i150
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_17:                               # %_StraightTaint_log.exit152
	movl	(%r12), %ecx
	movl	$6, %esi
	movl	$.L.str18, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	movl	$.L.str19, %esi
	movq	%r14, %rdi
	callq	strcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str20, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rax, (%rbx)
	movl	$1, %esi
	movl	$1025, %edx             # imm = 0x401
	movq	%r15, %rdi
	movq	%rax, %rcx
	callq	fwrite
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rbx), %rdi
	callq	fclose
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB1_18:                               # %cond.false
	movw	$22, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$22, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_21
# BB#19:                                # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_21
# BB#20:                                # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB1_21:                               # %_StraightTaint_log.exit38
	movl	$.L.str15, %edi
	movl	$.L.str4, %esi
	movl	$89, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.LBB1_22:                               # %cond.false11
	movw	$26, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$26, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_25
# BB#23:                                # %if.else.i109
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_25
# BB#24:                                # %if.then2.i112
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB1_25:                               # %_StraightTaint_log.exit114
	movl	$.L.str17, %edi
	movl	$.L.str4, %esi
	movl	$94, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.Ltmp23:
	.size	main, .Ltmp23-main
	.cfi_endproc

	.globl	_StraightTaint_init
	.align	16, 0x90
	.type	_StraightTaint_init,@function
_StraightTaint_init:                    # @_StraightTaint_init
.Lfunc_begin2:
	.loc	1 76 0                  # ../../straightDFA/init.c:76:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	.loc	1 84 0 prologue_end     # ../../straightDFA/init.c:84:0
.Ltmp31:
	movq	$buf2, buf1+96(%rip)
	.loc	1 85 0                  # ../../straightDFA/init.c:85:0
	movq	$buf1, buf2+96(%rip)
	.loc	1 86 0                  # ../../straightDFA/init.c:86:0
	movq	$buf1, buf(%rip)
	movl	$20971520, %edi         # imm = 0x1400000
	.loc	1 87 0                  # ../../straightDFA/init.c:87:0
	callq	malloc
	testq	%rax, %rax
	movq	%rax, -24(%rbp)
	.loc	1 88 0                  # ../../straightDFA/init.c:88:0
.Ltmp32:
	je	.LBB2_3
.Ltmp33:
# BB#1:                                 # %if.end
	.loc	1 92 0                  # ../../straightDFA/init.c:92:0
	movq	-24(%rbp), %rax
	movq	%rax, buf1(%rip)
	movl	$10485758, %eax         # imm = 0x9FFFFE
	.loc	1 93 0                  # ../../straightDFA/init.c:93:0
	addq	-24(%rbp), %rax
	movq	%rax, buf1+8(%rip)
	movl	$10485760, %eax         # imm = 0xA00000
	.loc	1 94 0                  # ../../straightDFA/init.c:94:0
	addq	-24(%rbp), %rax
	movq	%rax, buf2(%rip)
	movl	$20971518, %eax         # imm = 0x13FFFFE
	.loc	1 95 0                  # ../../straightDFA/init.c:95:0
	addq	-24(%rbp), %rax
	movq	%rax, buf2+8(%rip)
	movl	$buf1+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 96 0                  # ../../straightDFA/init.c:96:0
	callq	sem_init
	movl	$buf1+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 97 0                  # ../../straightDFA/init.c:97:0
	callq	sem_init
	movl	$buf2+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 98 0                  # ../../straightDFA/init.c:98:0
	callq	sem_init
	movl	$buf2+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 99 0                  # ../../straightDFA/init.c:99:0
	callq	sem_init
	movl	$buf1+64, %edi
	.loc	1 100 0                 # ../../straightDFA/init.c:100:0
	callq	sem_post
	movl	$buf2+64, %edi
	.loc	1 101 0                 # ../../straightDFA/init.c:101:0
	callq	sem_post
.Ltmp34:
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	.loc	1 103 0                 # ../../straightDFA/init.c:103:0
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.Ltmp35:
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	1 105 0                 # ../../straightDFA/init.c:105:0
	movl	$.L.str122, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 106 0                 # ../../straightDFA/init.c:106:0
	movl	$.L.str223, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
	.loc	1 107 0                 # ../../straightDFA/init.c:107:0
	movl	$.L.str324, %edi
	.loc	1 106 0                 # ../../straightDFA/init.c:106:0
	movl	$.L.str223, %esi
	.loc	1 107 0                 # ../../straightDFA/init.c:107:0
	callq	fopen
	movq	%rax, %rcx
	movq	%rcx, configFile(%rip)
	.loc	1 108 0                 # ../../straightDFA/init.c:108:0
	movl	$.L.str425, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	.loc	1 109 0                 # ../../straightDFA/init.c:109:0
	movq	configFile(%rip), %rdi
	callq	fflush
	.loc	1 113 0                 # ../../straightDFA/init.c:113:0
	movl	$_StraightTaint_logger_thread_terminate, %edi
	callq	atexit
	.loc	1 114 0                 # ../../straightDFA/init.c:114:0
.Ltmp36:
	movl	$logger_thread, %edi
	xorl	%esi, %esi
	movl	$_StraightTaint_logger_thread, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB2_4
.Ltmp37:
# BB#2:                                 # %if.end22
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	.loc	1 119 0                 # ../../straightDFA/init.c:119:0
	movq	buf(%rip), %rax
	movq	(%rax), %rax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%rbp
.Ltmp38:
	ret
.Ltmp39:
.LBB2_3:                                # %if.then
	.loc	1 89 0                  # ../../straightDFA/init.c:89:0
	movl	$.L.str21, %edi
	callq	perror
	movl	$1, %edi
	.loc	1 90 0                  # ../../straightDFA/init.c:90:0
	callq	exit
.Ltmp40:
.LBB2_4:                                # %if.then21
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	.loc	1 115 0                 # ../../straightDFA/init.c:115:0
	movl	$.L.str526, %edi
	callq	perror
	xorl	%edi, %edi
	.loc	1 116 0                 # ../../straightDFA/init.c:116:0
	callq	exit
.Ltmp41:
.Ltmp42:
	.size	_StraightTaint_init, .Ltmp42-_StraightTaint_init
.Lfunc_end2:
	.cfi_endproc

	.globl	_StraightTaint_fork32
	.align	16, 0x90
	.type	_StraightTaint_fork32,@function
_StraightTaint_fork32:                  # @_StraightTaint_fork32
.Lfunc_begin3:
	.loc	1 272 0                 # ../../straightDFA/init.c:272:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc	1 273 0 prologue_end    # ../../straightDFA/init.c:273:0
.Ltmp48:
	callq	do_StraightTaint_fork
	.loc	1 274 0                 # ../../straightDFA/init.c:274:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp49:
.Ltmp50:
	.size	_StraightTaint_fork32, .Ltmp50-_StraightTaint_fork32
.Lfunc_end3:
	.cfi_endproc

	.globl	_StraightTaint_fork64
	.align	16, 0x90
	.type	_StraightTaint_fork64,@function
_StraightTaint_fork64:                  # @_StraightTaint_fork64
.Lfunc_begin4:
	.loc	1 277 0                 # ../../straightDFA/init.c:277:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc	1 278 0 prologue_end    # ../../straightDFA/init.c:278:0
.Ltmp56:
	movl	-8(%rbp), %edi
	movl	%edi, -12(%rbp)
	.loc	1 279 0                 # ../../straightDFA/init.c:279:0
	callq	do_StraightTaint_fork
	.loc	1 280 0                 # ../../straightDFA/init.c:280:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp57:
.Ltmp58:
	.size	_StraightTaint_fork64, .Ltmp58-_StraightTaint_fork64
.Lfunc_end4:
	.cfi_endproc

	.align	16, 0x90
	.type	do_StraightTaint_fork,@function
do_StraightTaint_fork:                  # @do_StraightTaint_fork
.Lfunc_begin5:
	.loc	1 205 0                 # ../../straightDFA/init.c:205:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
.Ltmp65:
	.cfi_offset %rbx, -24
	testl	%edi, %edi
	movl	%edi, -16(%rbp)
	.loc	1 206 0 prologue_end    # ../../straightDFA/init.c:206:0
.Ltmp66:
	jle	.LBB5_11
# BB#1:                                 # %if.then
	movw	$0, -10(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp67:
	movq	addr(%rip), %rax
	movw	$0, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_4
# BB#2:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp68:
.LBB5_4:                                # %_StraightTaint_log.exit
	.loc	1 209 0                 # ../../straightDFA/init.c:209:0
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$16, %ecx
	addl	%eax, %ecx
	shrl	$16, %ecx
	movw	%cx, -10(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp69:
	movq	addr(%rip), %rax
	movw	%cx, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp70:
.LBB5_7:                                # %_StraightTaint_log.exit19
	.loc	1 210 0                 # ../../straightDFA/init.c:210:0
	movw	-16(%rbp), %ax
	movw	%ax, -10(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp71:
	movq	addr(%rip), %rcx
	movw	%ax, (%rcx)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_10
# BB#8:                                 # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_10
# BB#9:                                 # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	jmp	.LBB5_10
.Ltmp72:
.LBB5_11:                               # %if.else
	.loc	1 213 0                 # ../../straightDFA/init.c:213:0
	cmpl	$0, -16(%rbp)
	jne	.LBB5_15
# BB#12:                                # %if.then4
	.loc	1 240 0                 # ../../straightDFA/init.c:240:0
.Ltmp73:
	movq	$buf1, buf(%rip)
	.loc	1 241 0                 # ../../straightDFA/init.c:241:0
	movq	buf1(%rip), %rax
	movq	%rax, addr(%rip)
	movl	$buf1+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 242 0                 # ../../straightDFA/init.c:242:0
	callq	sem_init
	movl	$buf1+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 243 0                 # ../../straightDFA/init.c:243:0
	callq	sem_init
	movl	$buf2+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 244 0                 # ../../straightDFA/init.c:244:0
	callq	sem_init
	movl	$buf2+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 245 0                 # ../../straightDFA/init.c:245:0
	callq	sem_init
	movl	$buf1+64, %edi
	.loc	1 246 0                 # ../../straightDFA/init.c:246:0
	callq	sem_post
	movl	$buf2+64, %edi
	.loc	1 247 0                 # ../../straightDFA/init.c:247:0
	callq	sem_post
.Ltmp74:
	#DEBUG_VALUE: pid <- [RBP+-20]
	.loc	1 249 0                 # ../../straightDFA/init.c:249:0
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.Ltmp75:
	#DEBUG_VALUE: filename <- [RBP+-1056]
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	1 251 0                 # ../../straightDFA/init.c:251:0
	movl	$.L.str122, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 252 0                 # ../../straightDFA/init.c:252:0
	movl	$.L.str223, %esi
	movq	%rbx, %rdi
	callq	fopen
	testq	%rax, %rax
	movq	%rax, flog(%rip)
	.loc	1 253 0                 # ../../straightDFA/init.c:253:0
	je	.LBB5_16
# BB#13:                                # %cond.end
	#DEBUG_VALUE: pid <- [RBP+-20]
	#DEBUG_VALUE: filename <- [RBP+-1056]
	.loc	1 255 0                 # ../../straightDFA/init.c:255:0
	movq	configFile(%rip), %rdi
	leaq	-1056(%rbp), %rdx
	movl	$.L.str425, %esi
	xorl	%eax, %eax
	callq	fprintf
	.loc	1 256 0                 # ../../straightDFA/init.c:256:0
	movq	configFile(%rip), %rdi
	callq	fflush
	.loc	1 260 0                 # ../../straightDFA/init.c:260:0
	movl	$_StraightTaint_logger_thread_terminate, %edi
	callq	atexit
	.loc	1 261 0                 # ../../straightDFA/init.c:261:0
.Ltmp76:
	movl	$logger_thread, %edi
	xorl	%esi, %esi
	movl	$_StraightTaint_logger_thread, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB5_14
.Ltmp77:
.LBB5_10:                               # %if.end24
	.loc	1 269 0                 # ../../straightDFA/init.c:269:0
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%rbp
	ret
.LBB5_15:                               # %if.else22
	.loc	1 267 0                 # ../../straightDFA/init.c:267:0
.Ltmp78:
	movl	$.L.str829, %edi
	movl	$.L.str728, %esi
	movl	$267, %edx              # imm = 0x10B
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.Ltmp79:
.LBB5_16:                               # %cond.false
	#DEBUG_VALUE: pid <- [RBP+-20]
	#DEBUG_VALUE: filename <- [RBP+-1056]
	.loc	1 253 0                 # ../../straightDFA/init.c:253:0
	movl	$.L.str627, %edi
	movl	$.L.str728, %esi
	movl	$253, %edx
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.LBB5_14:                               # %if.then21
.Ltmp80:
	#DEBUG_VALUE: pid <- [RBP+-20]
	#DEBUG_VALUE: filename <- [RBP+-1056]
	.loc	1 262 0                 # ../../straightDFA/init.c:262:0
	movl	$.L.str526, %edi
	callq	perror
	xorl	%edi, %edi
	.loc	1 263 0                 # ../../straightDFA/init.c:263:0
	callq	exit
.Ltmp81:
.Ltmp82:
	.size	do_StraightTaint_fork, .Ltmp82-do_StraightTaint_fork
.Lfunc_end5:
	.cfi_endproc

	.globl	_StraightTaint_pseudo
	.align	16, 0x90
	.type	_StraightTaint_pseudo,@function
_StraightTaint_pseudo:                  # @_StraightTaint_pseudo
.Lfunc_begin6:
	.loc	5 24 0                  # ../../straightDFA/log.c:24:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	.loc	5 25 0 prologue_end     # ../../straightDFA/log.c:25:0
.Ltmp88:
	popq	%rbp
	ret
.Ltmp89:
.Ltmp90:
	.size	_StraightTaint_pseudo, .Ltmp90-_StraightTaint_pseudo
.Lfunc_end6:
	.cfi_endproc

	.globl	_StraightTaint_flush
	.align	16, 0x90
	.type	_StraightTaint_flush,@function
_StraightTaint_flush:                   # @_StraightTaint_flush
.Lfunc_begin7:
	.loc	5 28 0                  # ../../straightDFA/log.c:28:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	5 29 0 prologue_end     # ../../straightDFA/log.c:29:0
.Ltmp96:
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	5 30 0                  # ../../straightDFA/log.c:30:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp97:
.Ltmp98:
	.size	_StraightTaint_flush, .Ltmp98-_StraightTaint_flush
.Lfunc_end7:
	.cfi_endproc

	.globl	_StraightTaint_log
	.align	16, 0x90
	.type	_StraightTaint_log,@function
_StraightTaint_log:                     # @_StraightTaint_log
.Lfunc_begin8:
	.loc	5 33 0                  # ../../straightDFA/log.c:33:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	5 38 0 prologue_end     # ../../straightDFA/log.c:38:0
.Ltmp104:
	movq	addr(%rip), %rax
	movw	%di, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
.Ltmp105:
	movq	buf(%rip), %rcx
.Ltmp106:
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB8_3
# BB#1:                                 # %if.else
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
.Ltmp107:
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
.Ltmp108:
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then2
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
.Ltmp109:
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp110:
.LBB8_3:                                # %return
	.loc	5 62 0                  # ../../straightDFA/log.c:62:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp111:
.Ltmp112:
	.size	_StraightTaint_log, .Ltmp112-_StraightTaint_log
.Lfunc_end8:
	.cfi_endproc

	.globl	_StraightTaint_logger_thread
	.align	16, 0x90
	.type	_StraightTaint_logger_thread,@function
_StraightTaint_logger_thread:           # @_StraightTaint_logger_thread
.Lfunc_begin9:
	.loc	5 65 0                  # ../../straightDFA/log.c:65:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp119:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	leaq	-144(%rbp), %rbx
	.loc	5 68 0 prologue_end     # ../../straightDFA/log.c:68:0
.Ltmp120:
	movq	%rbx, %rdi
	callq	sigfillset
	movl	$2, %edi
	xorl	%edx, %edx
	.loc	5 69 0                  # ../../straightDFA/log.c:69:0
	movq	%rbx, %rsi
	callq	pthread_sigmask
	movl	%eax, -148(%rbp)
	.loc	5 71 0                  # ../../straightDFA/log.c:71:0
	movq	buf(%rip), %rax
	movq	%rax, -160(%rbp)
	.align	16, 0x90
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	5 74 0                  # ../../straightDFA/log.c:74:0
.Ltmp121:
	movq	-160(%rbp), %rdi
	addq	$32, %rdi
	callq	sem_wait
.Ltmp122:
	#DEBUG_VALUE: size <- [RBP+-164]
	.loc	5 78 0                  # ../../straightDFA/log.c:78:0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	subq	(%rax), %rcx
	shrq	%rcx
	movl	%ecx, -164(%rbp)
	.loc	5 79 0                  # ../../straightDFA/log.c:79:0
	movq	-160(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-164(%rbp), %rdx
	movq	flog(%rip), %rcx
	movl	$2, %esi
	callq	fwrite
	.loc	5 80 0                  # ../../straightDFA/log.c:80:0
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	5 82 0                  # ../../straightDFA/log.c:82:0
	movq	-160(%rbp), %rdi
	addq	$64, %rdi
	callq	sem_post
	.loc	5 83 0                  # ../../straightDFA/log.c:83:0
	movq	-160(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	movq	%rax, -160(%rbp)
	.loc	5 84 0                  # ../../straightDFA/log.c:84:0
.Ltmp123:
	jne	.LBB9_1
.Ltmp124:
# BB#2:                                 # %for.end
	xorl	%eax, %eax
	.loc	5 89 0                  # ../../straightDFA/log.c:89:0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp125:
.Ltmp126:
	.size	_StraightTaint_logger_thread, .Ltmp126-_StraightTaint_logger_thread
.Lfunc_end9:
	.file	6 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.cfi_endproc

	.globl	_StraightTaint_logger_thread_terminate
	.align	16, 0x90
	.type	_StraightTaint_logger_thread_terminate,@function
_StraightTaint_logger_thread_terminate: # @_StraightTaint_logger_thread_terminate
.Lfunc_begin10:
	.loc	5 93 0                  # ../../straightDFA/log.c:93:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	.loc	5 94 0 prologue_end     # ../../straightDFA/log.c:94:0
.Ltmp132:
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 95 0                  # ../../straightDFA/log.c:95:0
	movq	buf(%rip), %rax
	movq	$0, 96(%rax)
	.loc	5 96 0                  # ../../straightDFA/log.c:96:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 97 0                  # ../../straightDFA/log.c:97:0
	movq	logger_thread(%rip), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	5 98 0                  # ../../straightDFA/log.c:98:0
	popq	%rbp
	ret
.Ltmp133:
.Ltmp134:
	.size	_StraightTaint_logger_thread_terminate, .Ltmp134-_StraightTaint_logger_thread_terminate
.Lfunc_end10:
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Parent pid is: %d\n"
	.size	.L.str, 19

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"socket retrieve success\n"
	.size	.L.str1, 25

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"Failed to listen\n"
	.size	.L.str2, 18

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"0"
	.size	.L.str3, 2

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"server.cpp"
	.size	.L.str4, 11

	.type	.L__PRETTY_FUNCTION__._Z8myListenv,@object # @__PRETTY_FUNCTION__._Z8myListenv
.L__PRETTY_FUNCTION__._Z8myListenv:
	.asciz	"void myListen()"
	.size	.L__PRETTY_FUNCTION__._Z8myListenv, 16

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"begin listen...\n"
	.size	.L.str5, 17

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"loop...\n"
	.size	.L.str6, 9

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"socket accept\n"
	.size	.L.str7, 15

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"connfd: %d\n"
	.size	.L.str8, 12

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"This is child process. pid: %d\n"
	.size	.L.str9, 32

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"newfdin: %d\n"
	.size	.L.str10, 13

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"wait failed\n"
	.size	.L.str11, 13

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"This is parent process. child pid is : %d\n"
	.size	.L.str12, 43

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"Child process ends unexpectedly\n"
	.size	.L.str13, 33

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"main()\n"
	.size	.L.str14, 8

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"recvnum!=0"
	.size	.L.str15, 11

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main()"
	.size	.L__PRETTY_FUNCTION__.main, 11

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"recvnum: %d\n"
	.size	.L.str16, 13

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"pid>0"
	.size	.L.str17, 6

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"%d"
	.size	.L.str18, 3

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	"log_"
	.size	.L.str19, 5

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"w"
	.size	.L.str20, 2

	.type	addr,@object            # @addr
	.comm	addr,8,8
	.type	buf2,@object            # @buf2
	.comm	buf2,104,8
	.type	buf1,@object            # @buf1
	.comm	buf1,104,8
	.type	buf,@object             # @buf
	.comm	buf,8,8
	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"malloc"
	.size	.L.str21, 7

	.type	.L.str122,@object       # @.str122
.L.str122:
	.asciz	"tmp.%d"
	.size	.L.str122, 7

	.type	.L.str223,@object       # @.str223
.L.str223:
	.asciz	"w+"
	.size	.L.str223, 3

	.type	flog,@object            # @flog
	.comm	flog,8,8
	.type	.L.str324,@object       # @.str324
.L.str324:
	.asciz	"configFile"
	.size	.L.str324, 11

	.type	configFile,@object      # @configFile
	.comm	configFile,8,8
	.type	.L.str425,@object       # @.str425
.L.str425:
	.asciz	"%s\n"
	.size	.L.str425, 4

	.type	logger_thread,@object   # @logger_thread
	.comm	logger_thread,8,8
	.type	.L.str526,@object       # @.str526
.L.str526:
	.asciz	"failed to create logger thread"
	.size	.L.str526, 31

	.type	.L.str627,@object       # @.str627
.L.str627:
	.asciz	"flog"
	.size	.L.str627, 5

	.type	.L.str728,@object       # @.str728
.L.str728:
	.asciz	"../../straightDFA/init.c"
	.size	.L.str728, 25

	.type	.L__PRETTY_FUNCTION__.do_StraightTaint_fork,@object # @__PRETTY_FUNCTION__.do_StraightTaint_fork
.L__PRETTY_FUNCTION__.do_StraightTaint_fork:
	.asciz	"void do_StraightTaint_fork(int)"
	.size	.L__PRETTY_FUNCTION__.do_StraightTaint_fork, 32

	.type	.L.str829,@object       # @.str829
.L.str829:
	.asciz	"0"
	.size	.L.str829, 2

	.text
.Ldebug_end1:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
.Linfo_string1:
	.asciz	"../../straightDFA/init.c"
.Linfo_string2:
	.asciz	"/home/jun/straight-DTA/toy-ftp/test"
.Linfo_string3:
	.asciz	"flog"
.Linfo_string4:
	.asciz	"_flags"
.Linfo_string5:
	.asciz	"int"
.Linfo_string6:
	.asciz	"_IO_read_ptr"
.Linfo_string7:
	.asciz	"char"
.Linfo_string8:
	.asciz	"_IO_read_end"
.Linfo_string9:
	.asciz	"_IO_read_base"
.Linfo_string10:
	.asciz	"_IO_write_base"
.Linfo_string11:
	.asciz	"_IO_write_ptr"
.Linfo_string12:
	.asciz	"_IO_write_end"
.Linfo_string13:
	.asciz	"_IO_buf_base"
.Linfo_string14:
	.asciz	"_IO_buf_end"
.Linfo_string15:
	.asciz	"_IO_save_base"
.Linfo_string16:
	.asciz	"_IO_backup_base"
.Linfo_string17:
	.asciz	"_IO_save_end"
.Linfo_string18:
	.asciz	"_markers"
.Linfo_string19:
	.asciz	"_next"
.Linfo_string20:
	.asciz	"_sbuf"
.Linfo_string21:
	.asciz	"_pos"
.Linfo_string22:
	.asciz	"_IO_marker"
.Linfo_string23:
	.asciz	"_chain"
.Linfo_string24:
	.asciz	"_fileno"
.Linfo_string25:
	.asciz	"_flags2"
.Linfo_string26:
	.asciz	"_old_offset"
.Linfo_string27:
	.asciz	"long int"
.Linfo_string28:
	.asciz	"__off_t"
.Linfo_string29:
	.asciz	"_cur_column"
.Linfo_string30:
	.asciz	"unsigned short"
.Linfo_string31:
	.asciz	"_vtable_offset"
.Linfo_string32:
	.asciz	"signed char"
.Linfo_string33:
	.asciz	"_shortbuf"
.Linfo_string34:
	.asciz	"_lock"
.Linfo_string35:
	.asciz	"_offset"
.Linfo_string36:
	.asciz	"__off64_t"
.Linfo_string37:
	.asciz	"__pad1"
.Linfo_string38:
	.asciz	"__pad2"
.Linfo_string39:
	.asciz	"__pad3"
.Linfo_string40:
	.asciz	"__pad4"
.Linfo_string41:
	.asciz	"__pad5"
.Linfo_string42:
	.asciz	"long unsigned int"
.Linfo_string43:
	.asciz	"size_t"
.Linfo_string44:
	.asciz	"_mode"
.Linfo_string45:
	.asciz	"_unused2"
.Linfo_string46:
	.asciz	"_IO_FILE"
.Linfo_string47:
	.asciz	"FILE"
.Linfo_string48:
	.asciz	"configFile"
.Linfo_string49:
	.asciz	"buf1"
.Linfo_string50:
	.asciz	"start"
.Linfo_string51:
	.asciz	"short"
.Linfo_string52:
	.asciz	"end"
.Linfo_string53:
	.asciz	"cursor"
.Linfo_string54:
	.asciz	"size"
.Linfo_string55:
	.asciz	"full"
.Linfo_string56:
	.asciz	"__size"
.Linfo_string57:
	.asciz	"__align"
.Linfo_string58:
	.asciz	"sem_t"
.Linfo_string59:
	.asciz	"empty"
.Linfo_string60:
	.asciz	"next"
.Linfo_string61:
	.asciz	"buffer"
.Linfo_string62:
	.asciz	"buf2"
.Linfo_string63:
	.asciz	"buf"
.Linfo_string64:
	.asciz	"logger_thread"
.Linfo_string65:
	.asciz	"pthread_t"
.Linfo_string66:
	.asciz	"_StraightTaint_init"
.Linfo_string67:
	.asciz	"_StraightTaint_fork32"
.Linfo_string68:
	.asciz	"_StraightTaint_fork64"
.Linfo_string69:
	.asciz	"do_StraightTaint_fork"
.Linfo_string70:
	.asciz	"../../straightDFA/log.c"
.Linfo_string71:
	.asciz	"_StraightTaint_pseudo"
.Linfo_string72:
	.asciz	"_StraightTaint_flush"
.Linfo_string73:
	.asciz	"_StraightTaint_log"
.Linfo_string74:
	.asciz	"_StraightTaint_logger_thread"
.Linfo_string75:
	.asciz	"_StraightTaint_logger_thread_terminate"
.Linfo_string76:
	.asciz	"ptrToAddr"
.Linfo_string77:
	.asciz	"ptr"
.Linfo_string78:
	.asciz	"pid"
.Linfo_string79:
	.asciz	"filename"
.Linfo_string80:
	.asciz	"lpid"
.Linfo_string81:
	.asciz	"BBID"
.Linfo_string82:
	.asciz	"arg"
.Linfo_string83:
	.asciz	"set"
.Linfo_string84:
	.asciz	"__val"
.Linfo_string85:
	.asciz	"__sigset_t"
.Linfo_string86:
	.asciz	"sigset_t"
.Linfo_string87:
	.asciz	"s"
.Linfo_string88:
	.asciz	"cur_buf"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1236                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x4cd DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	59                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	flog
	.byte	3                       # Abbrev [3] 0x3b:0x5 DW_TAG_pointer_type
	.long	64                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x40:0xb DW_TAG_typedef
	.long	75                      # DW_AT_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x4b:0x1a0 DW_TAG_structure_type
	.long	.Linfo_string46         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.short	273                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x54:0xe DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x62:0xe DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x70:0xe DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x7e:0xe DW_TAG_member
	.long	.Linfo_string9          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	281                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x8c:0xe DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	282                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x9a:0xe DW_TAG_member
	.long	.Linfo_string11         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xa8:0xe DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xb6:0xe DW_TAG_member
	.long	.Linfo_string13         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	285                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xc4:0xe DW_TAG_member
	.long	.Linfo_string14         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xd2:0xe DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xe0:0xe DW_TAG_member
	.long	.Linfo_string16         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xee:0xe DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xfc:0xe DW_TAG_member
	.long	.Linfo_string18         # DW_AT_name
	.long	510                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x10a:0xe DW_TAG_member
	.long	.Linfo_string23         # DW_AT_name
	.long	563                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x118:0xe DW_TAG_member
	.long	.Linfo_string24         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x126:0xe DW_TAG_member
	.long	.Linfo_string25         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	300                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x134:0xe DW_TAG_member
	.long	.Linfo_string26         # DW_AT_name
	.long	568                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x142:0xe DW_TAG_member
	.long	.Linfo_string29         # DW_AT_name
	.long	586                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x150:0xe DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	593                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x15e:0xe DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	600                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x16c:0xe DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	312                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x17a:0xe DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	620                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	321                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x188:0xe DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	330                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x196:0xe DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	331                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1a4:0xe DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1b2:0xe DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	333                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1c0:0xe DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	631                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1ce:0xe DW_TAG_member
	.long	.Linfo_string44         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	336                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1dc:0xe DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	649                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	338                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x1eb:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1f2:0x5 DW_TAG_pointer_type
	.long	503                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x1f7:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1fe:0x5 DW_TAG_pointer_type
	.long	515                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x203:0x30 DW_TAG_structure_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x20b:0xd DW_TAG_member
	.long	.Linfo_string19         # DW_AT_name
	.long	510                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x218:0xd DW_TAG_member
	.long	.Linfo_string20         # DW_AT_name
	.long	563                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x225:0xd DW_TAG_member
	.long	.Linfo_string21         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	194                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x233:0x5 DW_TAG_pointer_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x238:0xb DW_TAG_typedef
	.long	579                     # DW_AT_type
	.long	.Linfo_string28         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x243:0x7 DW_TAG_base_type
	.long	.Linfo_string27         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x24a:0x7 DW_TAG_base_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x251:0x7 DW_TAG_base_type
	.long	.Linfo_string32         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x258:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x25d:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x264:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x26b:0x1 DW_TAG_pointer_type
	.byte	4                       # Abbrev [4] 0x26c:0xb DW_TAG_typedef
	.long	579                     # DW_AT_type
	.long	.Linfo_string36         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x277:0xb DW_TAG_typedef
	.long	642                     # DW_AT_type
	.long	.Linfo_string43         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x282:0x7 DW_TAG_base_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x289:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x28e:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	19                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x295:0x15 DW_TAG_variable
	.long	.Linfo_string48         # DW_AT_name
	.long	59                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	configFile
	.byte	2                       # Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	.Linfo_string49         # DW_AT_name
	.long	703                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf1
	.byte	8                       # Abbrev [8] 0x2bf:0x64 DW_TAG_structure_type
	.long	.Linfo_string61         # DW_AT_name
	.byte	104                     # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x2c7:0xd DW_TAG_member
	.long	.Linfo_string50         # DW_AT_name
	.long	803                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2d4:0xd DW_TAG_member
	.long	.Linfo_string52         # DW_AT_name
	.long	803                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2e1:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	803                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2ee:0xd DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2fb:0xd DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	815                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x308:0xd DW_TAG_member
	.long	.Linfo_string59         # DW_AT_name
	.long	815                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x315:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	869                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x323:0x5 DW_TAG_pointer_type
	.long	808                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x328:0x7 DW_TAG_base_type
	.long	.Linfo_string51         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x32f:0xb DW_TAG_typedef
	.long	826                     # DW_AT_type
	.long	.Linfo_string58         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x33a:0x1f DW_TAG_union_type
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x33e:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	857                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x34b:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	579                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x359:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x35e:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	31                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x365:0x5 DW_TAG_pointer_type
	.long	703                     # DW_AT_type
	.byte	2                       # Abbrev [2] 0x36a:0x15 DW_TAG_variable
	.long	.Linfo_string62         # DW_AT_name
	.long	703                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf2
	.byte	2                       # Abbrev [2] 0x37f:0x15 DW_TAG_variable
	.long	.Linfo_string63         # DW_AT_name
	.long	869                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf
	.byte	2                       # Abbrev [2] 0x394:0x15 DW_TAG_variable
	.long	.Linfo_string64         # DW_AT_name
	.long	937                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	logger_thread
	.byte	4                       # Abbrev [4] 0x3a9:0xb DW_TAG_typedef
	.long	642                     # DW_AT_type
	.long	.Linfo_string65         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x3b4:0x57 DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	803                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x3d1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string76         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	1221                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      # Abbrev [17] 0x3df:0xe DW_TAG_variable
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.byte	17                      # Abbrev [17] 0x3ed:0xe DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.byte	17                      # Abbrev [17] 0x3fb:0xf DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	1226                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x40b:0x2a DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	271                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	19                      # Abbrev [19] 0x425:0xf DW_TAG_formal_parameter
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	271                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x435:0x39 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	19                      # Abbrev [19] 0x44f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
	.long	579                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	20                      # Abbrev [20] 0x45e:0xf DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x46e:0x57 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x487:0xe DW_TAG_formal_parameter
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	22                      # Abbrev [22] 0x495:0x2f DW_TAG_lexical_block
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	22                      # Abbrev [22] 0x49a:0x29 DW_TAG_lexical_block
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	22                      # Abbrev [22] 0x49f:0x23 DW_TAG_lexical_block
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x4a4:0xe DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	249                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.byte	17                      # Abbrev [17] 0x4b2:0xf DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
	.long	1226                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x4c5:0x5 DW_TAG_pointer_type
	.long	803                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x4ca:0xd DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4cf:0x7 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
.L.debug_info_begin1:
	.long	511                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1f8 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string70         # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	24                      # Abbrev [24] 0x26:0x19 DW_TAG_subprogram
	.long	.Linfo_string71         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.quad	.Lfunc_end6             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	25                      # Abbrev [25] 0x3f:0x28 DW_TAG_subprogram
	.long	.Linfo_string72         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.quad	.Lfunc_end7             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	26                      # Abbrev [26] 0x58:0xe DW_TAG_formal_parameter
	.long	.Linfo_string81         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	.Lsection_info+808      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x67:0x28 DW_TAG_subprogram
	.long	.Linfo_string73         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.quad	.Lfunc_end8             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	26                      # Abbrev [26] 0x80:0xe DW_TAG_formal_parameter
	.long	.Linfo_string81         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.long	.Lsection_info+808      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x8f:0x8c DW_TAG_subprogram
	.long	.Linfo_string74         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+619      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.quad	.Lfunc_end9             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	26                      # Abbrev [26] 0xac:0xe DW_TAG_formal_parameter
	.long	.Linfo_string82         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	.Lsection_info+619      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      # Abbrev [17] 0xba:0xf DW_TAG_variable
	.long	.Linfo_string83         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	308                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.byte	28                      # Abbrev [28] 0xc9:0xf DW_TAG_variable
	.long	.Linfo_string87         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\354~"
	.byte	17                      # Abbrev [17] 0xd8:0xf DW_TAG_variable
	.long	.Linfo_string88         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	367                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.byte	29                      # Abbrev [29] 0xe7:0x33 DW_TAG_lexical_block
	.quad	.Ltmp121                # DW_AT_low_pc
	.quad	.Ltmp124                # DW_AT_high_pc
	.byte	29                      # Abbrev [29] 0xf8:0x21 DW_TAG_lexical_block
	.quad	.Ltmp121                # DW_AT_low_pc
	.quad	.Ltmp124                # DW_AT_high_pc
	.byte	28                      # Abbrev [28] 0x109:0xf DW_TAG_variable
	.long	.Linfo_string54         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\334~"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x11b:0x19 DW_TAG_subprogram
	.long	.Linfo_string75         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.quad	.Lfunc_end10            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	4                       # Abbrev [4] 0x134:0xb DW_TAG_typedef
	.long	319                     # DW_AT_type
	.long	.Linfo_string86         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x13f:0xb DW_TAG_typedef
	.long	330                     # DW_AT_type
	.long	.Linfo_string85         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	31                      # Abbrev [31] 0x14a:0x12 DW_TAG_structure_type
	.byte	128                     # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x14e:0xd DW_TAG_member
	.long	.Linfo_string84         # DW_AT_name
	.long	348                     # DW_AT_type
	.byte	6                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x15c:0xc DW_TAG_array_type
	.long	.Lsection_info+642      # DW_AT_type
	.byte	11                      # Abbrev [11] 0x161:0x6 DW_TAG_subrange_type
	.long	360                     # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x168:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	3                       # Abbrev [3] 0x16f:0x5 DW_TAG_pointer_type
	.long	372                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x174:0x64 DW_TAG_structure_type
	.long	.Linfo_string61         # DW_AT_name
	.byte	104                     # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	33                      # Abbrev [33] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string50         # DW_AT_name
	.long	.Lsection_info+803      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	33                      # Abbrev [33] 0x189:0xd DW_TAG_member
	.long	.Linfo_string52         # DW_AT_name
	.long	.Lsection_info+803      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	33                      # Abbrev [33] 0x196:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	.Lsection_info+803      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	33                      # Abbrev [33] 0x1a3:0xd DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1b0:0xd DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	472                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1bd:0xd DW_TAG_member
	.long	.Linfo_string59         # DW_AT_name
	.long	472                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1ca:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	367                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x1d8:0xb DW_TAG_typedef
	.long	483                     # DW_AT_type
	.long	.Linfo_string58         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x1e3:0x1f DW_TAG_union_type
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	33                      # Abbrev [33] 0x1e7:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	.Lsection_info+857      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	33                      # Abbrev [33] 0x1f4:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	.Lsection_info+579      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end1:
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	31                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	32                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_aranges,"",@progbits
	.long	140                     # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin0    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	buf2
	.quad	104
	.quad	buf1
	.quad	104
	.quad	buf
	.quad	8
	.quad	flog
	.quad	8
	.quad	configFile
	.quad	8
	.quad	logger_thread
	.quad	8
	.quad	.Lfunc_begin2
.Lset0 = .Lfunc_begin6-.Lfunc_begin2
	.quad	.Lset0
	.quad	0                       # ARange terminator
	.quad	0
	.long	44                      # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin1    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	.Lfunc_begin6
.Lset1 = .Ldebug_end1-.Lfunc_begin6
	.quad	.Lset1
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
.Lgnu_ranges0:
.Ldebug_ranges0:
	.quad	.Ltmp73
	.quad	.Ltmp77
	.quad	.Ltmp79
	.quad	.Ltmp81
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp72
	.quad	.Ltmp77
	.quad	.Ltmp78
	.quad	.Ltmp81
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp66
	.quad	.Ltmp77
	.quad	.Ltmp78
	.quad	.Ltmp81
	.quad	0
	.quad	0
.Lgnu_ranges1:
	.section	.debug_macinfo,"",@progbits
	.section	.debug_pubnames,"",@progbits
.Lset2 = .Lpubnames_end0-.Lpubnames_begin0 # Length of Public Names Info
	.long	.Lset2
.Lpubnames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset3 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset3
	.long	1077                    # DIE offset
	.asciz	"_StraightTaint_fork64" # External Name
	.long	661                     # DIE offset
	.asciz	"configFile"            # External Name
	.long	916                     # DIE offset
	.asciz	"logger_thread"         # External Name
	.long	38                      # DIE offset
	.asciz	"flog"                  # External Name
	.long	948                     # DIE offset
	.asciz	"_StraightTaint_init"   # External Name
	.long	1134                    # DIE offset
	.asciz	"do_StraightTaint_fork" # External Name
	.long	1035                    # DIE offset
	.asciz	"_StraightTaint_fork32" # External Name
	.long	895                     # DIE offset
	.asciz	"buf"                   # External Name
	.long	682                     # DIE offset
	.asciz	"buf1"                  # External Name
	.long	874                     # DIE offset
	.asciz	"buf2"                  # External Name
	.long	0                       # End Mark
.Lpubnames_end0:
.Lset4 = .Lpubnames_end1-.Lpubnames_begin1 # Length of Public Names Info
	.long	.Lset4
.Lpubnames_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset5 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset5
	.long	283                     # DIE offset
	.asciz	"_StraightTaint_logger_thread_terminate" # External Name
	.long	38                      # DIE offset
	.asciz	"_StraightTaint_pseudo" # External Name
	.long	63                      # DIE offset
	.asciz	"_StraightTaint_flush"  # External Name
	.long	103                     # DIE offset
	.asciz	"_StraightTaint_log"    # External Name
	.long	143                     # DIE offset
	.asciz	"_StraightTaint_logger_thread" # External Name
	.long	0                       # End Mark
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset6 = .Lpubtypes_end0-.Lpubtypes_begin0 # Length of Public Types Info
	.long	.Lset6
.Lpubtypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset7 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset7
	.long	64                      # DIE offset
	.asciz	"FILE"                  # External Name
	.long	937                     # DIE offset
	.asciz	"pthread_t"             # External Name
	.long	815                     # DIE offset
	.asciz	"sem_t"                 # External Name
	.long	491                     # DIE offset
	.asciz	"int"                   # External Name
	.long	568                     # DIE offset
	.asciz	"__off_t"               # External Name
	.long	586                     # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	631                     # DIE offset
	.asciz	"size_t"                # External Name
	.long	808                     # DIE offset
	.asciz	"short"                 # External Name
	.long	620                     # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	75                      # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	642                     # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	515                     # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	703                     # DIE offset
	.asciz	"buffer"                # External Name
	.long	593                     # DIE offset
	.asciz	"signed char"           # External Name
	.long	579                     # DIE offset
	.asciz	"long int"              # External Name
	.long	503                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end0:
.Lset8 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset8
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset9 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset9
	.long	319                     # DIE offset
	.asciz	"__sigset_t"            # External Name
	.long	308                     # DIE offset
	.asciz	"sigset_t"              # External Name
	.long	472                     # DIE offset
	.asciz	"sem_t"                 # External Name
	.long	372                     # DIE offset
	.asciz	"buffer"                # External Name
	.long	0                       # End Mark
.Lpubtypes_end1:

	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
