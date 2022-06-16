Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B92054E946
	for <lists@lfdr.de>; Thu, 16 Jun 2022 20:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C307A40CF9;
	Thu, 16 Jun 2022 18:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uq_fKkie6v2Q; Thu, 16 Jun 2022 18:25:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 14A1F41027;
	Thu, 16 Jun 2022 18:25:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A418FC002D;
	Thu, 16 Jun 2022 18:25:50 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B536C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 18:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 013F641BB2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 18:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.b="lr06pfTc"; dkim=pass (1024-bit key)
 header.d=hansenpartnership.com header.b="lr06pfTc"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4WFAI5uMycR
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 18:25:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83C6941BA5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 18:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655403946;
 bh=Lzk0Od5PZfDdclluQanTfmuMYPRd+03ss7SjEv6r+mQ=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=lr06pfTclBI+sh6zAT2MN8r6Z2NUolwty/WVKb9SohRNKk969kWhSJ33ZF/zXRTqT
 ax1dcdZ98uCK+VOlZDEmQfyn/CfUl6AgAZG/5m+B+N6qDMvu2sX3F9INGeaFQrPaHE
 GlY0nrziAdDJRwZ5nxW69hBcxGyasGGs2wfngOdg=
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id B51DD1287927;
 Thu, 16 Jun 2022 14:25:46 -0400 (EDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 8eNr2hzaNg47; Thu, 16 Jun 2022 14:25:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655403946;
 bh=Lzk0Od5PZfDdclluQanTfmuMYPRd+03ss7SjEv6r+mQ=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=lr06pfTclBI+sh6zAT2MN8r6Z2NUolwty/WVKb9SohRNKk969kWhSJ33ZF/zXRTqT
 ax1dcdZ98uCK+VOlZDEmQfyn/CfUl6AgAZG/5m+B+N6qDMvu2sX3F9INGeaFQrPaHE
 GlY0nrziAdDJRwZ5nxW69hBcxGyasGGs2wfngOdg=
Received: from [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b] (unknown
 [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id C126E128791D;
 Thu, 16 Jun 2022 14:25:45 -0400 (EDT)
Message-ID: <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 16 Jun 2022 14:25:44 -0400
In-Reply-To: <20220616125128.68151432@gandalf.local.home>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
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

On Thu, 2022-06-16 at 12:51 -0400, Steven Rostedt wrote:
> On Thu, 16 Jun 2022 12:38:24 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > > A eBPF program that works on one kernel should have no guarantee
> > > that it will work on another version of the kernel. Because eBPF
> > > is basically just that, a module. It is compiled into native code
> > > that runs in kernel space. Exactly like a module, with the caveat
> > > that it must first go through a verifier.  
> > 
> > Based on the encouragement we gave as kernel developers, certain
> > tracing as a service companies that previously had propritary
> > modules (Sysdig for instance) are now moving over to using tracing
> > with eBPF. 
> 
> I wasn't in this conversation, so I'm unaware of the advantages of
> it.

Unaware of the advantages of using eBPF over proprietary modules? 
We've had a long standing policy of discouraging proprietary modules. 
We use the carrot and stick methods.  The stick is definitely the API
is unstable and changes often and will break you (and even some kernel
developers will go out of their way to change the API your using).  The
carrot is showing them there are better and easier ways of doing the
things they're trying to achieve without using proprietary modules.

> > At the time we thought this was good for the kernel; if we now try
> > to tell them "actually you can't use the interface because it's
> > completely unstable" that's going to undermine our whole argument
> > to them for dumping proprietary modules.  So I don't think no eBPF
> > at all is stable is a tenable position for us.
> > 
> > Equally well, I don't think it's as hard as a userspace ABI meaning
> > it can never change.  I think we can get away with changes that
> > force tracing and other value added service providers to change
> > their eBPF, I just don't think we can do it very often without
> > damaging the value of eBPF over proprietary modules.
> 
> Perhaps we should add a place in tools/bpf for "upstream bpf
> programs". Or is there already something there? Again, I would like
> to treat bpf no different than modules. Sorry, I don't see a
> "convince proprietary module folks to create proprietary bpf
> programs" as progress. If anything, it's going backwards.

That's a false dichotomy: it's not true the only way of forcing
openness is to pull something into the kernel tree.  I gave the
proprietary module as one example, but not everything that uses eBPF is
proprietary ... although it is also true that not everything that's
open is under a licence compatible with the kernel.

> If you want a "stable ebpf program" then you submit it upstream and
> we can make sure that it works with any internal API changes, the
> same way we do for modules. Those with out-of-tree modules will have
> the technical debt of changing every time a new kernel release is
> out, and so should out-of-tree bpf programs.

Assuming eBPF takes off, that would have some poor maintainer managing
the whole of the compatibility changes for the entire eBPF ecosystem
... I really don't think that's scalable.

> > > > Unfortunately, this "just select a subset" aproach has been
> > > > proven not to work with tracepoints (which is exactly why some
> > > > subsytems systematically refused to add tracepoints in the
> > > > first place, because they explicitly did want to avoid being
> > > > constrained by tracepoints having to be stable), which in this
> > > > particular aspect is a similar problem.  
> > 
> > As I said above, I think we have to provide *some* stability, but
> > for a sophisticated consumer it doesn't have to be the absolute
> > stability guarantee of an ABI.  I think we should debate what kinds
> > of slightly unstable stability we could provide
> 
> What you define as "somewhat stable" others may define as "not stable
> at all". There is no happy medium (as you said, "you can wish for a
> Pony, but there's no guarantee you'll get one").
> 
> Once you say you will have some stability, that will become an
> albatross around your neck forever.

Not if it's managed correctly.  One method could simply be to not care
but be careful.  After all, lots of companies still manage to produce
proprietary modules even with us actively trying to break the API. 
Either it's not as difficult as we think or API changes are easier to
cope with than we assume.

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
