Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 208E954E6FC
	for <lists@lfdr.de>; Thu, 16 Jun 2022 18:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA4486122A;
	Thu, 16 Jun 2022 16:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnSPJv14dRz6; Thu, 16 Jun 2022 16:26:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 151BA60E90;
	Thu, 16 Jun 2022 16:26:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA844C002D;
	Thu, 16 Jun 2022 16:26:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FE8FC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D37C40A8E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpW6xvvldSjk
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:26:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F068B40134
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 16:26:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0C079B824C3;
 Thu, 16 Jun 2022 16:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D31C3411A;
 Thu, 16 Jun 2022 16:26:35 +0000 (UTC)
Date: Thu, 16 Jun 2022 12:26:34 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20220616122634.6e11e58c@gandalf.local.home>
In-Reply-To: <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
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

On Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
Jiri Kosina <jikos@kernel.org> wrote:

> > I might as well ask the naive question:  Should subsystems document
> > which hooks they intend to treat as ABI?  ;-)  

I would like there to be a decree that eBPF is denoted as the same as a
fancy module. And be treated the same as modules. That is, there is NO ABI!

A eBPF program that works on one kernel should have no guarantee that it
will work on another version of the kernel. Because eBPF is basically just
that, a module. It is compiled into native code that runs in kernel space.
Exactly like a module, with the caveat that it must first go through a
verifier.

> 
> Unfortunately, this "just select a subset" aproach has been proven not to 
> work with tracepoints (which is exactly why some subsytems systematically 
> refused to add tracepoints in the first place, because they explicitly did 
> want to avoid being constrained by tracepoints having to be stable), which 
> in this particular aspect is a similar problem.

The difference between eBPF and tracepoints (actually only trace events),
is that trace events are exported visibly to user space and attached via
the perf system call. The trace event's format is shown in the tracefs
events directory. Just like any file in /proc, the trace events can easily
be read by a privileged user space application.

Now tracepoints are not exported to user space.

  The difference between a tracepoint and trace event is that a tracepoint
  is the "trace_foo()" in the kernel, where as the trace event is the data
  extracted from the tracepoint via the TRACE_EVENT() macro and listed in
  the format files in the tracefs events directory.

The tracepoint interface is just like any other C function in the kernel,
and should never be considered an ABI.

I wanted to bring this up at MS as well, so I'd like to extend this topic,
and say eBPF programs *are* modules.

We had an issue [1] that we added a parameter to the sched_switch
tracepooint (not trace event), and that broke some eBPF programs. Since all
they wanted was for use to reorder the parameters of the tracepoint call,
we obliged. But we made it a point that this must not set a precedent.
The mere fact that we had to do this has brought up major concerns that
eBPF is starting to become too invasive and may limit the ability of kernel
development.

[1] https://lore.kernel.org/all/c8a6930dfdd58a4a5755fc01732675472979732b.camel@fb.com/T/#mc2ec6eded478552fc01d10e32dc4a892f95a9900

-- Steve

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
