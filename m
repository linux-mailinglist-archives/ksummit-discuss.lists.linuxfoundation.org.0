Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 223389B4CD
	for <lists@lfdr.de>; Fri, 23 Aug 2019 18:45:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E04F3103B;
	Fri, 23 Aug 2019 16:45:48 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50EB3504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:45:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EF4C89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:45:46 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id l7so21566101ioj.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pXeBzH16AUfCnP2RSJAlPSrq5PZyXCc6uJXa8kLbuOw=;
	b=PqssVL27EV3+7v4pfYDMBnmKe6EyAcjLd4qKcoDKvcmJhQnq3kalyYPcmMVmZgK34N
	ICH/ZGK26I4kQmSwPX/tHV/sFc8MeUvQWceicxrbuvvv3FEISXZG+QB3ehsXKNwEt1XA
	o1lLJa2t3in9036YmwM5JLjtrHVItNyNzMuc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pXeBzH16AUfCnP2RSJAlPSrq5PZyXCc6uJXa8kLbuOw=;
	b=Y1ghPaxvB/gz2/0U5R3+aDY9BH5Gdetu8bzgKfMsUQR36NKhPmhYQ1qXCCYPFaVPei
	bS+tQLEapwzqxF+G6wS3+s7nSIxkvHEknZSBs2fxkIXaQbM+KJQCR7b3fdwVzBx2SzWB
	j0u6zp6jrwNHiVcUVfqQc17kVjfqdO9bl1tAGUp2V0hh0b2Cpd1hykOTuW+0bitK/1Tc
	eCmRFY/28O/Ou7i2szIJFpw68cjoE0qpmTDT+Mgh8U9GD0bwSYtZwYOnRX6W9LPasLj0
	qfrMBkJlGjTbjF19m1ygSnBgVoQILY1g9D3QE3edlJHGaArCbRYZdG+E8VA15G+mhw7n
	6jPQ==
X-Gm-Message-State: APjAAAXbSyscmJ93fsGeFCuNsYWRMx6JppcAWcLnfHjolxr4VwkEcekP
	VNMfrkuVnnx0jMrgDlIy8XlXWROwfH8=
X-Google-Smtp-Source: APXvYqxplzBOONGV474khk0R82aQ5P8EkxMPYcddAgsE8kzzqBIdz649GGQnXo3WPGV53ooQ8PAUUg==
X-Received: by 2002:a6b:5901:: with SMTP id n1mr1433750iob.179.1566578745389; 
	Fri, 23 Aug 2019 09:45:45 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
	[209.85.166.44])
	by smtp.gmail.com with ESMTPSA id o3sm2099428ioo.74.2019.08.23.09.45.43
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 09:45:44 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id o9so21542904iom.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:45:43 -0700 (PDT)
X-Received: by 2002:a5e:a502:: with SMTP id 2mr558775iog.269.1566578743469;
	Fri, 23 Aug 2019 09:45:43 -0700 (PDT)
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
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
In-Reply-To: <CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 23 Aug 2019 09:45:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
Message-ID: <CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
To: Joel Fernandes <joelaf@google.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi,

On Fri, Aug 23, 2019 at 9:35 AM Joel Fernandes via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
>
> On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > Hi Thomas,
> >
> > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> > >
> > > Yes, it's work for the submitter, but it's always work if the submitter
> > > wants to have a proper trace.
> >
> > Here is where I disagree with you. As a patch submitter, I frankly could
> > not care less about proper trace, history, etc. I might be putting cover
>
> But that is exactly what the problem statement is. Doug does care
> about tracing/history and wants that to be more robust etc.

Well, I care because I'm a system integrator, not because I'm a patch
submitter.  I try to make my patch submissions useful for system
integrators because I am also a system integrator.  ...but most patch
submitters don't try so hard.  We need to make this easy for them.


> > letter and outline the version changes, but I am doing that to reduce
> > friction and help committer to land my change. Thant's it. And
> > committers seem to have enough context from the provided version history
> > and memory of the previous iterations.
> >
> > Who this new ID benefits most is a system integrator that is tracking
> > all bits and pieces that are needed for their board to boot and work
> > properly. Hopefully the system integrator is a good community citizen
> > and not only wants to apply patches locally, but also make sure
> > stragglers end up in mainline after all. But they need additional
> > history to know whether the series was just forgotten, a new solution
> > was adopted instead, and so on.
> >
> > It also can help maintainers who need (maybe years later) to research
> > why particular change was made and whether there was additional
> > discussion around certain point of the change.
> >
> > The process you outlined above (collecting msg ids from previous
> > submissions, putting them into cover letter, etc) adds too much friction
> > at submission time so that submitters will not actually do any of that.
> > However having a git hook adding an ID to any new commit is much more
> > workable.
>
> I don't think a git-hook will solve what Doug is asking. There is
> always some need for manual labor to add the metadata pointing to
> previous patch posting. How does anyone but the patch submitter know
> what the link/id/whatever of the previous patch posting or series is?
> Unless git has some telepathy abilities that I did not know about.
>
> Since my day job involves gerrit usage, I have used gerrit and
> whenever I have a brand new patch for something; I have had to
> manually add the old Change-Id to the new change so that gerrit
> recognizes that it is linked to the old patch. That process is not
> done by a hook. Sure the initial generation is through a hook, but
> still.

You must have a different flow than I do.  For me the Change-Id just
naturally stays there as I make changes to the patch.  When I post
patches to an upstream list I keep them around as a local branch.
When changes are requested, I pick the old patches and amend to them.
...or I use "git rebase -i" and do a "FIXUP" to make changes to a
previous patch.  With this workflow the Change-Id is super low
friction and automatic.

...so for me the git-hook works perfectly well and the Change-Id just
naturally stays there in most cases.

Sure, if a given patch in the series is totally wrong and I re-write
it (but still want the re-write to be considered a new version of the
previous patch) then I have to manually copy the Change-Id for a
gerrit upload.  ...but I'd also be OK if people just get a new
Change-Id in this case.


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
