Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD954F63C
	for <lists@lfdr.de>; Fri, 17 Jun 2022 13:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6BA7600D4;
	Fri, 17 Jun 2022 11:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6BA7600D4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Z6fi3ANk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWsj6xIFFDsv; Fri, 17 Jun 2022 11:04:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E587F60030;
	Fri, 17 Jun 2022 11:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E587F60030
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4762DC002D;
	Fri, 17 Jun 2022 11:04:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60B5CC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 353B0600CD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 353B0600CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkyltbF3sDTq
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:04:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0F5C60030
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0F5C60030
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655463890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=c8NAYmE2Su1AfUCo8cAQiNV7eXdrbNVb0dtIR/Ezs8I=;
 b=Z6fi3ANkE5sEnhTx9Gxf3p1udgvPNGbb8jxPPK/B6BeO4Dw/Tdk1dfC75fx0vZF5yVSb6U
 p1OH2JwDVrtnafCpp+/p6sPhuAYtK09uTwj8+WVbrkTi11sZXq7ZZZzK2WW8X4x0+RtW9m
 rukd1nJSalzTDZ0odqYo21gUWT7GZK8=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-HkYETGsFPNaPZ42ylF6TZQ-1; Fri, 17 Jun 2022 07:04:49 -0400
X-MC-Unique: HkYETGsFPNaPZ42ylF6TZQ-1
Received: by mail-pl1-f199.google.com with SMTP id
 b15-20020a170902d50f00b00167501814edso2497931plg.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 04:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c8NAYmE2Su1AfUCo8cAQiNV7eXdrbNVb0dtIR/Ezs8I=;
 b=lqEZKiqyYqAz3vnNnC7wlGKOaCLk6m6rlVPt2hyKJoWNTpYiyyzSz2btqgjUMAPDMy
 Hef8eRkZStTLo6hM6YHMOAZY9Up2DbzM2rN/rPQkiO+mPlZWFCBNmTpfCuGetde9sYdP
 IT1S4x03uTnuu4EOgQ6g1+eLh7yZFM/qX4WK+BpqLzMcUCm0HAiEGfwMZyA3NXvMmgG2
 6G4acbpTjVtnp9ePIS5GbKcfe9FvN02SEMNUJWonMccr5Lt/fYsnnuP0z2nacFdQsfTP
 TDJzMNMdWNMwJ7PNAMz+vLJJPNw75ZfIG1w6QAiXCDoL2yEE4YFBw6mt9NE6xLkrq0fI
 cLgQ==
X-Gm-Message-State: AJIora96QGMC+QfWts1eqYV1lDLs+sU8IYHsyXwx50EPMHRx8WZ6+RVP
 3X/+lQ5ayzTX0A8UTu7R59HjEftyDhXBj5Z6/+209mTK1AY9U6aUI/Ac2+0BF4yRpyjLeAq2TGu
 sgtShJGYl4NcCcNPpy76w409w+sXqhv/Y1ZYXPWS0S/QjtgBQg/rRubBSXQ==
X-Received: by 2002:a17:902:b7cc:b0:16a:3f8:98c3 with SMTP id
 v12-20020a170902b7cc00b0016a03f898c3mr3177172plz.73.1655463887367; 
 Fri, 17 Jun 2022 04:04:47 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uWH0Ve7XrNvCjx65wp0KX0fl/dj3ksA1c+APUJPj5ciduYA1nzOp7jbVwsRbSJcHguF3wshgxXts0W5eMgWs0=
X-Received: by 2002:a17:902:b7cc:b0:16a:3f8:98c3 with SMTP id
 v12-20020a170902b7cc00b0016a03f898c3mr3177140plz.73.1655463887050; Fri, 17
 Jun 2022 04:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
 <20220617103050.2almimus5hjcifxl@quack3.lan>
In-Reply-To: <20220617103050.2almimus5hjcifxl@quack3.lan>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Fri, 17 Jun 2022 13:04:35 +0200
Message-ID: <CAO-hwJJxCteD_BHZTeqQ1f7gWOHoj+05qP8bmFsRYVfMc_3FxQ@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Fri, Jun 17, 2022 at 12:31 PM Jan Kara <jack@suse.cz> wrote:
>
> On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
> > On Thu, 16 Jun 2022, James Bottomley wrote:
> >
> > > > If you want a "stable ebpf program" then you submit it upstream and
> > > > we can make sure that it works with any internal API changes, the
> > > > same way we do for modules. Those with out-of-tree modules will have
> > > > the technical debt of changing every time a new kernel release is
> > > > out, and so should out-of-tree bpf programs.
> > >
> > > Assuming eBPF takes off, that would have some poor maintainer managing
> > > the whole of the compatibility changes for the entire eBPF ecosystem
> > > ... I really don't think that's scalable.
> >
> > I nevertheless still see this as the best and only option we have; that
> > is, have an infrastructure in the kernel tree for maintaining eBPF
> > programs, somehow sorted per subsystem so that it mirrors the standard
> > maintainership / subsystem structure proper, and have the maintainers
> > responsible for keeping the eBPF programs related to their subsystem in
> > sync with the internal changes happening in the subsystem.
> >
> > At the end of the day, it will be the subsystem maintainers themsleves
> > accepting the program into the tree in the first place, so it's not like
> > they are receiving responsibility for something they never wanted in the
> > first place. So we'll probably end up with subsystems with many eBPF
> > programs, and also subsystems with zero. Similarly to tracepoints.
> >
> > I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can
> > hook to just about anything).
> >
> > Any other option seems to lead to having eBPF programs sprinkled all over
> > the internet that depend on particular kernel version / API, leading to
> > nothing else than unhappy users, because "I downloaded it, it didn't work,
> > Linux sucks".
>
> OK, but if we keep eBPF programs this closely coupled to the kernel, then
> what is the advantage of using eBPF, say for HID as was discussed earlier
> in this thread, compared to just making sure HID has appropriate hooks and
> the handling of the device quirks is done in normal C code (kernel module)
> attached to these hooks?

[sorry some of my messages are kept in the moderation queue]

This is something I tried to explain in my talk at Kernel Recipes 2
weeks ago [1].

Basically, for regular users, it will be simpler for them to test patches:
A developer patches the device through a bpf program, compiles it and
sends to the user the source and the bytecode. The user just has to
drop the bytecode in the file system and a udev rule automatically
loads it without having to reboot the current kernel, making testing
way faster and simpler for users.

Then developers take the burden of upstreaming the bpf program through
the usual email submission.

This way users are testing the actual code that is upstreamed without
too much hurdle.

IMO those kinds of fixes should be in-tree because they are actual fixes.


>
> Because frankly for me the main value of eBPF over patching and recompiling
> the kernel is that I can tweak the eBPF code exactly to my needs and load
> it to the kernel without needing to reboot, over time it is less work than
> maintaining a source code patch out of tree, and usually it is a hacky
> tweak I use for some debugging so merging it upstream does not make sense.
>

And that's also why I want to give *some* guarantees that the eBPF
hooks I am putting in HID are somewhat stable. Or at least I won't
break everything at each release and look carefully when there is a
change in the API.

But these guarantees are just *my* constraints I put on *my*
subsystem. I have reasons to believe I can ensure that, so I will.

But I am not saying any internal HID function will have ABI
guarantees. Only the few hooks I am explicitly documenting as such.

So the idea is that your debugging program can live in your own tree,
without being submitted, but this is just a contract between myself as
a subsystem maintainer and you, not the entire eBPF or ftrace
community.

I made this so I can put any fancy new kernel API out in eBPF
programs, that would be handled by the actual user of that kernel API.
If a user wants to set some fancy feature on a particular device,
instead of having a kernel parameter that no one will ever use besides
that program that may be short-lived, we can then load that
functionality with the eBPF program.
Or if a user is only interested in a particular event in a report for
a device (with the custom protocols some gaming devices are enjoying),
then that user can load a BPF program and keep it outside of the tree
because the program doesn't make sense without the userspace
component.

I hope it clarifies a little bit now. For HID at least.

Cheers,
Benjamin

[1] https://kernel-recipes.org/en/2022/talks/hid-bpf/ and
https://www.youtube.com/watch?v=nhJqaZT94z0&t=14923s

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
