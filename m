Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90255551358
	for <lists@lfdr.de>; Mon, 20 Jun 2022 10:52:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E31B941694;
	Mon, 20 Jun 2022 08:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E31B941694
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.cz header.i=@suse.cz header.a=rsa-sha256 header.s=susede2_rsa header.b=NliYWXLg;
	dkim=fail reason="signature verification failed" header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=o1v/OE5k
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbrAq3Kqw4K3; Mon, 20 Jun 2022 08:52:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 571B041813;
	Mon, 20 Jun 2022 08:52:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 571B041813
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5DB8C002D;
	Mon, 20 Jun 2022 08:52:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 414A0C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 08:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E6F78318C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 08:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6F78318C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=NliYWXLg; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=o1v/OE5k
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jnm24dxQR2E7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 08:52:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13DD883187
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13DD883187
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 08:52:00 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id E83211F98F;
 Mon, 20 Jun 2022 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655715118; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uLgQIwSF2R3icUXAwzekJI1Cf7WXQKD5oGKJ4cxjaBM=;
 b=NliYWXLgcoADT+crplkGnwWJyG3XmSQMCoi1C0EKu/rbJmLluwKAgfB+cbYnFpJGD1dBus
 FP8ULW/NoXMI2KsQNfprAhtHTa9h6P9zg1Wxuq5NQXjYrgGXm1zylJN/l22N0Vk4pbwjVq
 TDtMO5hiWnmTXBcnStuYdOpoyDK7k+U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655715118;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uLgQIwSF2R3icUXAwzekJI1Cf7WXQKD5oGKJ4cxjaBM=;
 b=o1v/OE5kK0DGtpvDOKGTY1aPPcY4ZROFdBnwW0gvjdyzt7GxoIhWuFI5Mqh38KtvLerF7e
 GLLyDSCWSm1hMnBg==
Received: from quack3.suse.cz (unknown [10.100.224.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 33FE12C141;
 Mon, 20 Jun 2022 08:51:58 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 98788A0636; Mon, 20 Jun 2022 10:51:57 +0200 (CEST)
Date: Mon, 20 Jun 2022 10:51:57 +0200
From: Jan Kara <jack@suse.cz>
To: NeilBrown <neilb@suse.de>
Message-ID: <20220620085157.oq4s2chtsl2s6eo7@quack3.lan>
References: <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
 <20220617103050.2almimus5hjcifxl@quack3.lan>
 <165550941279.26404.17631638863614666198@noble.neil.brown.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <165550941279.26404.17631638863614666198@noble.neil.brown.name>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 ksummit-discuss@lists.linuxfoundation.org,
 Peter Zijlstra <peterz@infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Luca Weiss <luca@z3ntu.xyz>, Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Sat 18-06-22 09:43:32, NeilBrown wrote:
> On Fri, 17 Jun 2022, Jan Kara wrote:
> > On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
> > > On Thu, 16 Jun 2022, James Bottomley wrote:
> > > 
> > > > > If you want a "stable ebpf program" then you submit it upstream and
> > > > > we can make sure that it works with any internal API changes, the
> > > > > same way we do for modules. Those with out-of-tree modules will have
> > > > > the technical debt of changing every time a new kernel release is
> > > > > out, and so should out-of-tree bpf programs.
> > > > 
> > > > Assuming eBPF takes off, that would have some poor maintainer managing
> > > > the whole of the compatibility changes for the entire eBPF ecosystem
> > > > ... I really don't think that's scalable.
> > > 
> > > I nevertheless still see this as the best and only option we have; that 
> > > is, have an infrastructure in the kernel tree for maintaining eBPF 
> > > programs, somehow sorted per subsystem so that it mirrors the standard 
> > > maintainership / subsystem structure proper, and have the maintainers 
> > > responsible for keeping the eBPF programs related to their subsystem in 
> > > sync with the internal changes happening in the subsystem.
> > > 
> > > At the end of the day, it will be the subsystem maintainers themsleves 
> > > accepting the program into the tree in the first place, so it's not like 
> > > they are receiving responsibility for something they never wanted in the 
> > > first place. So we'll probably end up with subsystems with many eBPF 
> > > programs, and also subsystems with zero. Similarly to tracepoints.
> > > 
> > > I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can 
> > > hook to just about anything).
> > > 
> > > Any other option seems to lead to having eBPF programs sprinkled all over 
> > > the internet that depend on particular kernel version / API, leading to 
> > > nothing else than unhappy users, because "I downloaded it, it didn't work, 
> > > Linux sucks".
> > 
> > OK, but if we keep eBPF programs this closely coupled to the kernel, then
> > what is the advantage of using eBPF, say for HID as was discussed earlier
> > in this thread, compared to just making sure HID has appropriate hooks and
> > the handling of the device quirks is done in normal C code (kernel module)
> > attached to these hooks?
> > 
> > Because frankly for me the main value of eBPF over patching and recompiling
> > the kernel is that I can tweak the eBPF code exactly to my needs and load
> > it to the kernel without needing to reboot, over time it is less work than
> > maintaining a source code patch out of tree, and usually it is a hacky
> > tweak I use for some debugging so merging it upstream does not make sense.
> > 
> 
> How is "load without needing to reboot" different from loading a module.
> And if the code you need to tweak with eBPF isn't in a module, then how
> it is different from live-patching ?

Well, typically I want to print some values when entering a function or
gather some stats while kernel is running. I could modify the kernel to do
this and as you say for a module (if it can be unused), I could even start
running the new code without reboot. And yes, live-patching could work for
the non-modular bits in princible but it is a matter of convenience -
live-patching is by far not as easy to use as eBPF for my purposes as eBPF
trivially hooks to trace points, has data structures to coalescing data
before passing it to userspace etc. But I'm getting offtopic here I'm
afraid.

> And how is "less work than maintaining a source code patch out of tree"
> different to asking for a stable abi?

To be clear I'm of the opinion we need to avoid tying us with stable ABI
requirements by eBPF. But my experience shows that eBPF programs attaching
to tracepoints / functions require less tweaking from version to version
than source code patches which happen to not apply for all sorts of
unrelated reasons. So it is not that eBPF programs would not require
tweaking from time to time but simply the way how kernel extension happens
with eBPF tends to result in less pointless conflicts.

> It seems like eBPF might be just a back-door for a stable abi, which
> seems easier because the compiler lives in the kernel which allows us to
> distribute arch-independent modules.

I don't think so. eBPF is used for multiple different purposes. So far its
uses were such that it was understood that eBPF programs will break from
time to time and need update for a newer kernel. As the use of eBPF is
expanding there's a real risk we develop eBPF programs breaking which
would be difficult to deal with for users and that's where problems start.
And AFAIU Jiri's topic proposal which started this thread is exactly trying
to get the discussion going how to avoid such situation.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
