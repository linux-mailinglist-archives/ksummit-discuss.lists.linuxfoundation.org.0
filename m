Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340F354F55A
	for <lists@lfdr.de>; Fri, 17 Jun 2022 12:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AAEC40FE5;
	Fri, 17 Jun 2022 10:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AAEC40FE5
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.cz header.i=@suse.cz header.a=rsa-sha256 header.s=susede2_rsa header.b=MlZluzJP;
	dkim=fail reason="signature verification failed" header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=OklSkNmS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qs-HcRC_0c6M; Fri, 17 Jun 2022 10:31:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C752840FBF;
	Fri, 17 Jun 2022 10:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C752840FBF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63B75C002D;
	Fri, 17 Jun 2022 10:31:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79B24C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 10:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E923844F1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 10:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E923844F1
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=MlZluzJP; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=OklSkNmS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kaptADsQTa4k
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 10:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A33D844CE
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A33D844CE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 10:31:01 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 120BC1F9F2;
 Fri, 17 Jun 2022 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655461860; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=POUgd5d1djRa3Rkxi2s7Qm4UHxdCnTWmkFsYG/DgjSU=;
 b=MlZluzJPszlJmdR4/smSDHBlYXpFz+R0KmVfUtyc5k4KLJIoimHLs8cAlu/OkFcQzhhlP+
 yi97yZRyVRVsaRGZNxr4XnVCZkiHQm8yjfRvuNQH8eoHlmobTS5RD2BOJE97EMob+rD9OP
 YkCIfMrpMxmsjgGmxYLdu58aGQxmY7c=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655461860;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=POUgd5d1djRa3Rkxi2s7Qm4UHxdCnTWmkFsYG/DgjSU=;
 b=OklSkNmSjlOf3Q494jSCD8DYBu8LFCRkIiOJsyCdmVwI0V7ZEk4jpbtcZHDpJBqqYxFO+3
 xE4c8/+JGZY9waBw==
Received: from quack3.suse.cz (unknown [10.100.224.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 45C782C141;
 Fri, 17 Jun 2022 10:30:59 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id CE35EA0632; Fri, 17 Jun 2022 12:30:50 +0200 (CEST)
Date: Fri, 17 Jun 2022 12:30:50 +0200
From: Jan Kara <jack@suse.cz>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20220617103050.2almimus5hjcifxl@quack3.lan>
References: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
Cc: Luca Weiss <luca@z3ntu.xyz>, "Paul E. McKenney" <paulmck@kernel.org>,
 ksummit-discuss@lists.linuxfoundation.org,
 Peter Zijlstra <peterz@infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Christoph Hellwig <hch@lst.de>
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

On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
> On Thu, 16 Jun 2022, James Bottomley wrote:
> 
> > > If you want a "stable ebpf program" then you submit it upstream and
> > > we can make sure that it works with any internal API changes, the
> > > same way we do for modules. Those with out-of-tree modules will have
> > > the technical debt of changing every time a new kernel release is
> > > out, and so should out-of-tree bpf programs.
> > 
> > Assuming eBPF takes off, that would have some poor maintainer managing
> > the whole of the compatibility changes for the entire eBPF ecosystem
> > ... I really don't think that's scalable.
> 
> I nevertheless still see this as the best and only option we have; that 
> is, have an infrastructure in the kernel tree for maintaining eBPF 
> programs, somehow sorted per subsystem so that it mirrors the standard 
> maintainership / subsystem structure proper, and have the maintainers 
> responsible for keeping the eBPF programs related to their subsystem in 
> sync with the internal changes happening in the subsystem.
> 
> At the end of the day, it will be the subsystem maintainers themsleves 
> accepting the program into the tree in the first place, so it's not like 
> they are receiving responsibility for something they never wanted in the 
> first place. So we'll probably end up with subsystems with many eBPF 
> programs, and also subsystems with zero. Similarly to tracepoints.
> 
> I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can 
> hook to just about anything).
> 
> Any other option seems to lead to having eBPF programs sprinkled all over 
> the internet that depend on particular kernel version / API, leading to 
> nothing else than unhappy users, because "I downloaded it, it didn't work, 
> Linux sucks".

OK, but if we keep eBPF programs this closely coupled to the kernel, then
what is the advantage of using eBPF, say for HID as was discussed earlier
in this thread, compared to just making sure HID has appropriate hooks and
the handling of the device quirks is done in normal C code (kernel module)
attached to these hooks?

Because frankly for me the main value of eBPF over patching and recompiling
the kernel is that I can tweak the eBPF code exactly to my needs and load
it to the kernel without needing to reboot, over time it is less work than
maintaining a source code patch out of tree, and usually it is a hacky
tweak I use for some debugging so merging it upstream does not make sense.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
