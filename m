Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E900262AB1
	for <lists@lfdr.de>; Mon,  8 Jul 2019 23:12:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 724A72B2B;
	Mon,  8 Jul 2019 21:11:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 042032B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:06:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.efficios.com (mail.efficios.com [167.114.142.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 012F4826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:06:48 +0000 (UTC)
Received: from localhost (ip6-localhost [IPv6:::1])
	by mail.efficios.com (Postfix) with ESMTP id 076572A2E2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:48 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
	by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
	with ESMTP id 4aJU2fE6QXQG
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
	by mail.efficios.com (Postfix) with ESMTP id 73ED12A2E27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 73ED12A2E27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
	s=default; t=1562620007;
	bh=NaFlyIb485g4+ioK+EjTvkxJ/RcDO2h4MKeP+ZZXhcA=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=Hn5Xv0Bq1i4nbh3t8s5RfYY5bqUiWLrqms3E2UcEmnLZyh/H9zhOBfFT7jhlqaI8q
	caco1vdkGGdK6jWvMUHhuGKZvgfyJU07NXe7ASTO7+whgGG3z0PyzsiHyvS3va1MqC
	mIETiu9SeZF49tPX7lWIm6b8M/JLI/P9LHUF4Kc9FAYvlAXQ7szw6eL+coiSSIKOeC
	hUNgLkHTj+2On4kcqv+5XQk78ThVgVJB2sRRmmUXbVoKmKLSSQWLecz0gJrVvxaPv+
	Y65wH3acdp+I9Q6A/+SVbHetzmDViFit0JvLopuyDqpRs4l9WnU6updGH9BhA6SCFn
	MGqcDCmRtiLZA==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
	by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
	with ESMTP id jlvOMqZEiUQb
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
	by mail.efficios.com (Postfix) with ESMTP id 629592A2E1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Date: Mon, 8 Jul 2019 17:06:47 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <1763198136.14021.1562620007328.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3809)
Thread-Index: EK+xzNaNK64AExTni0NsXJhW/Y0ruw==
Thread-Topic: Beyond per-CPU atomics and rseq syscall: thoroughly abusing mm
	with the do_on_cpu syscall
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] [TECH TOPIC] Beyond per-CPU atomics and rseq
 syscall: thoroughly abusing mm with the do_on_cpu syscall
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

The Restartable Sequences system call [1,2,3,4] introduced in Linux 4.18
has limitations which can be solved by introducing a bytecode
interpreter running in inter-processor interrupt context which accesses
user-space data.

However, there are a handful of reasons why accessing user-space
data from an IPI handler concurrently with user-space execution
is a bad idea, starting with page fault handling. This discussion
aims at gathering feedback from the mm community on the do_on_cpu
system call aiming to solve this gracefully.

[1] "PerCpu Atomics" http://www.linuxplumbersconf.org/2013/ocw/system/presentations/1695/original/LPC%20-%20PerCpu%20Atomics.pdf
[2] "Restartable sequences" https://lwn.net/Articles/650333/
[3] "Restartable sequences restarted" https://lwn.net/Articles/697979/
[4] "Restartable sequences and ops vectors" https://lwn.net/Articles/737662/

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
