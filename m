Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 293EAACE32
	for <lists@lfdr.de>; Sun,  8 Sep 2019 14:58:06 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D2B4EE96;
	Sun,  8 Sep 2019 12:57:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B2EBE75;
	Sun,  8 Sep 2019 12:57:51 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D86D5E6;
	Sun,  8 Sep 2019 12:57:50 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3C2D42190F;
	Sun,  8 Sep 2019 12:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1567947470;
	bh=XGDbPTQ7fEchYrd+qOlCtEOWjnlNDujlK86cgDBv70k=;
	h=Date:From:To:Subject:From;
	b=Cyn7TyV/0u3M1o9sORU+GdTxdI/qaU/aLGDujSr0suGiheS4ooMNIo1bZUhossSz5
	5eoyznnOf9iZF7HUV+l2Rdy3Kry47TQa1FM2m1Rymj3YRt9Sk+2+I+drj9blgbwzzz
	OlcA4wy/9S8Q9tmnGVEdGP1owVF2/C7k4Tg9vW/s=
Date: Sun, 8 Sep 2019 08:57:48 -0400
From: Sasha Levin <sashal@kernel.org>
To: tech-board-discuss@lists.linuxfoundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190908125748.GE2012@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	RCVD_IN_SBL_CSS autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] TAB Nomination - Sasha Levin
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

While it is true that many eyeballs make all bugs shallow, we are short
on eyeballs. Our current development methodology doesn't work well when
we don't have enough developers reviewing the code: it takes longer for
code to be reviewed and merged upstream, it allows more bugs to sneak
into the upstream kernel, and even more bugs into stable kernels - which
our users rely on. The kernel sees continued growth year after year, and
extensive efforts are made to introduce "new blood", but I believe it is
not enough: the way forward is not only to get more eyeballs in the
game, but also to enable our existing eyeballs to be even more effective
and to allow them to focus on what matters most - the code.

If elected, I would work to promote and encourage LF projects and
initiatives that make our existing developers more effective:

 - Better kernel infrastructure, such as the work being done on
   lore.kernel.org or pgpkeys.git.
 - Better testing infrastructure, such as the recently founded kernelci
   project.
 - New initiatives to reduce developer overhead, such as AUTOSEL or the
   pull-tracker bot.
 - Great conferences: LPC Is a great tool to help developers, but right
   now it's at capacity and we need to find ways to address that.

In short, as a TAB member I would like to focus more on the day to day
work we all do, and work with the the Linux Foundation to make it a more
hospitable home for us - Linux Kernel developers.


About me: I maintain the stable/LTS kernel trees and liblockdep. I'm
currently employed by Microsoft where I maintain the internal kernel
tree for our various products, maintain the upstream Hyper-V subsystem,
support developers making the switch from Windows to Linux, and advise
on various technical topics not directly related to the kernel.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
