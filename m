Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3971E54E76B
	for <lists@lfdr.de>; Thu, 16 Jun 2022 18:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C1E061234;
	Thu, 16 Jun 2022 16:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33CXpR2wvsYw; Thu, 16 Jun 2022 16:38:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C2FE96122F;
	Thu, 16 Jun 2022 16:38:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 76F0AC002D;
	Thu, 16 Jun 2022 16:38:30 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 004A6C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE9BD418BF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.b="o48wZnVo"; dkim=pass (1024-bit key)
 header.d=hansenpartnership.com header.b="o48wZnVo"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-ZAavydkKdu
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:38:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFA074189D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655397506;
 bh=ZufYxAmh/4I6KfA1i1uGOnrUZXKXWDSUE2aJbsn9eI0=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=o48wZnVomq287sfUUJz+6qjvpIAIxWMUUCbmjI+U37AiXqm5KDTLMb+lbChv4/jcl
 LXLLXuVOxoIwROdbE0kGBqJF+tyIpOXqOTlWnPfD9WSqk1r+z3GzHUlAZo80kPjT9t
 lW/ok4KyZ4EhKln9gzuNA8NL9bvvrvo0+rPFqkok=
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 582F512868C2;
 Thu, 16 Jun 2022 12:38:26 -0400 (EDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 23w4p_2Wl2rW; Thu, 16 Jun 2022 12:38:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655397506;
 bh=ZufYxAmh/4I6KfA1i1uGOnrUZXKXWDSUE2aJbsn9eI0=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=o48wZnVomq287sfUUJz+6qjvpIAIxWMUUCbmjI+U37AiXqm5KDTLMb+lbChv4/jcl
 LXLLXuVOxoIwROdbE0kGBqJF+tyIpOXqOTlWnPfD9WSqk1r+z3GzHUlAZo80kPjT9t
 lW/ok4KyZ4EhKln9gzuNA8NL9bvvrvo0+rPFqkok=
Received: from [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b] (unknown
 [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 8131B12868BB;
 Thu, 16 Jun 2022 12:38:25 -0400 (EDT)
Message-ID: <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>, Jiri Kosina <jikos@kernel.org>
Date: Thu, 16 Jun 2022 12:38:24 -0400
In-Reply-To: <20220616122634.6e11e58c@gandalf.local.home>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
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

On Thu, 2022-06-16 at 12:26 -0400, Steven Rostedt wrote:
> On Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
> Jiri Kosina <jikos@kernel.org> wrote:
> 
> > > I might as well ask the naive question:  Should subsystems
> > > document
> > > which hooks they intend to treat as ABI?  ;-)  
> 
> I would like there to be a decree that eBPF is denoted as the same as
> a fancy module. And be treated the same as modules. That is, there is
> NO ABI!

Well, you can wish for a Pony, but there's no guarantee you'll get one
...

> 
> A eBPF program that works on one kernel should have no guarantee that
> it will work on another version of the kernel. Because eBPF is
> basically just that, a module. It is compiled into native code that
> runs in kernel space. Exactly like a module, with the caveat that it
> must first go through a verifier.

Based on the encouragement we gave as kernel developers, certain
tracing as a service companies that previously had propritary modules
(Sysdig for instance) are now moving over to using tracing with eBPF. 
At the time we thought this was good for the kernel; if we now try to
tell them "actually you can't use the interface because it's completely
unstable" that's going to undermine our whole argument to them for
dumping proprietary modules.  So I don't think no eBPF at all is stable
is a tenable position for us.

Equally well, I don't think it's as hard as a userspace ABI meaning it
can never change.  I think we can get away with changes that force
tracing and other value added service providers to change their eBPF, I
just don't think we can do it very often without damaging the value of
eBPF over proprietary modules.

> > Unfortunately, this "just select a subset" aproach has been proven
> > not to work with tracepoints (which is exactly why some subsytems
> > systematically refused to add tracepoints in the first place,
> > because they explicitly did want to avoid being constrained by
> > tracepoints having to be stable), which in this particular aspect
> > is a similar problem.

As I said above, I think we have to provide *some* stability, but for a
sophisticated consumer it doesn't have to be the absolute stability
guarantee of an ABI.  I think we should debate what kinds of slightly
unstable stability we could provide

James



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
