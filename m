Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D99B48D
	for <lists@lfdr.de>; Fri, 23 Aug 2019 18:35:37 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 957F21000;
	Fri, 23 Aug 2019 16:35:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A428FA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:35:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20DFB67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:35:16 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id s145so8668060qke.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=09dcLju1j/SjO9iQY5Lkd/RLVKkpku2BrCOkBrOsa7o=;
	b=dd/KZ5osf7W3PDOT36DGhoVPaff93Cz5DJCqBfOP9WlvayQr+8TDxl4D3oU1lppG1O
	yJ6cy/HPE1Q2VVw6QVsdqKoq7QXHDIvfDV0XCihW/hlHh+4ZJ98baIi4hJ3t9pvnuAB8
	w6BGUraY/vABXgiw9fGUfcLD8MewiB7ybKHSifpFdfoTv6Jos14tW8vccXa6ohoBv7tr
	lf3PFfnVnTKpAHBWAoyuu7NO8/CzLoJBEvbxYjbB6TM6W/2n2x9UrDIN4nl8eV38tpgh
	oMZ14WNajwlrWLt51FHTYIZY4uzQMGL3OF0aFeCRWMEj3xlxU3CDzfDzK1DEJigGPLwQ
	bKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=09dcLju1j/SjO9iQY5Lkd/RLVKkpku2BrCOkBrOsa7o=;
	b=n2Rv+pRdWecU1rsCgrDEyjFKDtWkRkqM3iKnPa4YEvV7MZiHu5yxAMe8FvJJaEaq1S
	ooFKlQJJKW9WQz3BshKMElgfYZdu869/C6NMxHqg+P79WnzC1oBwkec5Pjkbdv9iIKF9
	w5qmO1D5FPn53ylGIrPHnamBjnybKo6jEAaIRa1tWrVB0bV6gZGBhYeTjVN214dT2wgW
	MFbu6+4M1hgKpTvttGgu8vrN28np9xNRDxkFDw+pi+Huc/VIG6f6R+Yo7tgNaHobcUes
	ty2+d5fju+ZVOGg05aZKe8XL4hyrysKJy5S64htO43u5+UQ30CCgaSAZ1bgSEfRZvjn2
	UeyQ==
X-Gm-Message-State: APjAAAV5XicB9C3Pg7v9aT/M6MnZWktN17mhGj1OQ4p3mVMkmBz1sPgj
	OJzdA+H/4epDF7G9SDRFxaG6MbsNHO2kP0D+T+Yowg==
X-Google-Smtp-Source: APXvYqzscCA6NSGdMUVwKZMNV97hQKVzaOKSRaNEL5y7UXPBfi//AFYnkMAhiCuaNZIuyfvGbWxDqJY8VPIylb+RpGM=
X-Received: by 2002:ae9:ec1a:: with SMTP id h26mr4946304qkg.80.1566578114844; 
	Fri, 23 Aug 2019 09:35:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
In-Reply-To: <20190823161947.GA112509@dtor-ws>
Date: Fri, 23 Aug 2019 12:35:03 -0400
Message-ID: <CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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
From: Joel Fernandes via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Joel Fernandes <joelaf@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> Hi Thomas,
>
> On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> >
> > Yes, it's work for the submitter, but it's always work if the submitter
> > wants to have a proper trace.
>
> Here is where I disagree with you. As a patch submitter, I frankly could
> not care less about proper trace, history, etc. I might be putting cover

But that is exactly what the problem statement is. Doug does care
about tracing/history and wants that to be more robust etc.

> letter and outline the version changes, but I am doing that to reduce
> friction and help committer to land my change. Thant's it. And
> committers seem to have enough context from the provided version history
> and memory of the previous iterations.
>
> Who this new ID benefits most is a system integrator that is tracking
> all bits and pieces that are needed for their board to boot and work
> properly. Hopefully the system integrator is a good community citizen
> and not only wants to apply patches locally, but also make sure
> stragglers end up in mainline after all. But they need additional
> history to know whether the series was just forgotten, a new solution
> was adopted instead, and so on.
>
> It also can help maintainers who need (maybe years later) to research
> why particular change was made and whether there was additional
> discussion around certain point of the change.
>
> The process you outlined above (collecting msg ids from previous
> submissions, putting them into cover letter, etc) adds too much friction
> at submission time so that submitters will not actually do any of that.
> However having a git hook adding an ID to any new commit is much more
> workable.

I don't think a git-hook will solve what Doug is asking. There is
always some need for manual labor to add the metadata pointing to
previous patch posting. How does anyone but the patch submitter know
what the link/id/whatever of the previous patch posting or series is?
Unless git has some telepathy abilities that I did not know about.

Since my day job involves gerrit usage, I have used gerrit and
whenever I have a brand new patch for something; I have had to
manually add the old Change-Id to the new change so that gerrit
recognizes that it is linked to the old patch. That process is not
done by a hook. Sure the initial generation is through a hook, but
still.

thanks,

 - Joel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
