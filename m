Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 206C654E81B
	for <lists@lfdr.de>; Thu, 16 Jun 2022 18:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2A2E60AC6;
	Thu, 16 Jun 2022 16:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQa7GMQ-BUCs; Thu, 16 Jun 2022 16:51:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A88F06122E;
	Thu, 16 Jun 2022 16:51:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53D78C002D;
	Thu, 16 Jun 2022 16:51:35 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CCC4CC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A79F483FFC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDlPpbvRXt31
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:51:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A79EF83F95
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:51:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E1F18618DF;
 Thu, 16 Jun 2022 16:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59AABC34114;
 Thu, 16 Jun 2022 16:51:30 +0000 (UTC)
Date: Thu, 16 Jun 2022 12:51:28 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20220616125128.68151432@gandalf.local.home>
In-Reply-To: <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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

On Thu, 16 Jun 2022 12:38:24 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > 
> > A eBPF program that works on one kernel should have no guarantee that
> > it will work on another version of the kernel. Because eBPF is
> > basically just that, a module. It is compiled into native code that
> > runs in kernel space. Exactly like a module, with the caveat that it
> > must first go through a verifier.  
> 
> Based on the encouragement we gave as kernel developers, certain
> tracing as a service companies that previously had propritary modules
> (Sysdig for instance) are now moving over to using tracing with eBPF. 

I wasn't in this conversation, so I'm unaware of the advantages of it.

> At the time we thought this was good for the kernel; if we now try to
> tell them "actually you can't use the interface because it's completely
> unstable" that's going to undermine our whole argument to them for
> dumping proprietary modules.  So I don't think no eBPF at all is stable
> is a tenable position for us.
> 
> Equally well, I don't think it's as hard as a userspace ABI meaning it
> can never change.  I think we can get away with changes that force
> tracing and other value added service providers to change their eBPF, I
> just don't think we can do it very often without damaging the value of
> eBPF over proprietary modules.

Perhaps we should add a place in tools/bpf for "upstream bpf programs". Or
is there already something there? Again, I would like to treat bpf no
different than modules. Sorry, I don't see a "convince proprietary
module folks to create proprietary bpf programs" as progress. If anything,
it's going backwards.

If you want a "stable ebpf program" then you submit it upstream and we can
make sure that it works with any internal API changes, the same way we do
for modules. Those with out-of-tree modules will have the technical debt of
changing every time a new kernel release is out, and so should out-of-tree
bpf programs.

> 
> > > Unfortunately, this "just select a subset" aproach has been proven
> > > not to work with tracepoints (which is exactly why some subsytems
> > > systematically refused to add tracepoints in the first place,
> > > because they explicitly did want to avoid being constrained by
> > > tracepoints having to be stable), which in this particular aspect
> > > is a similar problem.  
> 
> As I said above, I think we have to provide *some* stability, but for a
> sophisticated consumer it doesn't have to be the absolute stability
> guarantee of an ABI.  I think we should debate what kinds of slightly
> unstable stability we could provide

What you define as "somewhat stable" others may define as "not stable at
all". There is no happy medium (as you said, "you can wish for a Pony, but
there's no guarantee you'll get one").

Once you say you will have some stability, that will become an albatross
around your neck forever.

-- Steve

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
