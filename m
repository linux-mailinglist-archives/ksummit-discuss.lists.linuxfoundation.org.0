Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3B09B6A5
	for <lists@lfdr.de>; Fri, 23 Aug 2019 21:09:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8618EED1;
	Fri, 23 Aug 2019 19:08:53 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7274BDD9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:08:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E14487FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:08:49 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id p13so9092670qkg.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 12:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wMeKM5RDtPaMfzfoQwt/SOsWLA6ph/RkonlHR5nDguw=;
	b=uS4wu+65DgWgopvCDTmwyBPndeqVbhqnRBK3X9MuZPK+hg8m3gxJdVNf4zhyeuEa2u
	1yd2+H3SqNKjx6fx2fQfCecBqTvetF/+VYSECnKtB9yPCH1xKBS86rYmWF3bLahkPC2n
	gc5sG1UaAMK5V7ziVdosS33XFcA/+NQMbikvPiK71mOz1PsZTxutK9n/lyFmYfdmgEJZ
	ZiDKRIIxmrVlGRBpNuoL3EKPwA8bESO0hL7mM9LY+5cVG8uBMV4suYAQpJzTYM/7y2VC
	Hap+bickGHUYirl1T2dyH0q8Jv+2UBqtVPFuwfmkBkIYMz9w+WAFv4l/q73EN+5LlO7p
	g5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wMeKM5RDtPaMfzfoQwt/SOsWLA6ph/RkonlHR5nDguw=;
	b=iddHdLK29vOXer7DXoTjfYSmq/H54B6nT0OBy7cykofqJuAvpgF3Yet8f36wuboi9C
	6G0c7/q5Npp/ZPMo93QlMFShbCIqOwKYqUM1bTr3Zrjan4UmMYhiGrDtDlVPGRWf/iGM
	QKsT5uC5b7rrWpXOx3VK3ZSZAUc8FUXP8MyvNq+xOWi4RX8j3TaxGjBEXbUx08rJIEiL
	SmHOYhhmduVo1R17zz78iAS6AibsfIYENhQXnW+IogWLTzRkKW/zF6E4fScYIi5fflZD
	CZgUtySE060tojRVP+29qVc7BMtJWP7RoH5i4WpY4qY64v6qdBlyPQF3r+j8WIpxbR8g
	tAww==
X-Gm-Message-State: APjAAAUzs6bfuyjiCsxCy75bVK3nLwj05Jx+SjQfa/H5FTw244/WOdvI
	gKAJjXi00HW59p2Oz/VVLFPb/LkTTm6mxCarkT08ag==
X-Google-Smtp-Source: APXvYqzjfLL85bgHI9fUENpz3tL9RcDRRTglNUU0DRK8U3pmsC79GuPI0QN0VLei5M7YsnEIn2xn9u5mUmOI1C3cjtQ=
X-Received: by 2002:ac8:33a6:: with SMTP id c35mr6493275qtb.34.1566587328569; 
	Fri, 23 Aug 2019 12:08:48 -0700 (PDT)
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
	<CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
	<CAJWu+oo++AVx-xsQkVCscWLVQyExA7QUPX8AxyQ=RWFw3FrmiQ@mail.gmail.com>
	<CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
In-Reply-To: <CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
Date: Fri, 23 Aug 2019 15:08:36 -0400
Message-ID: <CAJWu+or4Lur_q65yTtPQmh8wX2A7EaXaOWXmCnOq3ThRpnN=Tg@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
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

On Fri, Aug 23, 2019 at 2:00 PM Doug Anderson <dianders@chromium.org> wrote:
[snip]
> > On Fri, Aug 23, 2019 at 12:45 PM Doug Anderson <dianders@chromium.org> wrote:
> > [snip]
> > > Sure, if a given patch in the series is totally wrong and I re-write
> > > it (but still want the re-write to be considered a new version of the
> > > previous patch) then I have to manually copy the Change-Id for a
> > > gerrit upload.  ...but I'd also be OK if people just get a new
> > > Change-Id in this case.
> >
> > Sometimes it is not "totally wrong" but just "done in a different
> > away" and is a new series. This happens a lot since upstream
> > development can be evolutionary. So your v1 may look nothing like v2
> > and is a whole new series. Yet the history linking the 2 series is
> > important. And no amount of automated commit ID generation can link
> > them. This is the scenario I was talking about. I know the git hook
> > works, but sometimes the Change-Id has to be manually copied. That's
> > not automatable. May be we are slightly on different tracks, but this
> > is the scenario that would be useful to trace IMO.
>
> Agreed that it would be useful and (personally) I'd do it.  Maybe
> others who are used to the gerrit workflow would also do it.  ...but
> what I like is that the fallback for those that don't try to hard
> isn't that terrible.  Yes they'd end up with a new Change-Id in some
> cases, but presumably it still wouldn't be that hard for tools to help
> you.  Namely, if you have a series:
>
> Patch v1 1/3 - Add a frob - Change-Id A
> Patch v1 2/3 - Add a larb - Change-Id B
> Patch v1 3/3 - Use the frob to tweak the larb - Change-Id C
>
> ...and you decide that you should be tweaking a sneech instead of a
> larb, you might end up with this if someone isn't careful to copy
> Change-Ids and their workflow is to throw away the old patch #2 and #3
> instead of amending.
>
> Patch v2 1/3 - Add a frob - Change-Id A
> Patch v2 2/3 - Add a sneech - Change-Id D
> Patch v2 3/3 - Use the frob to tweak the sneech - Change-Id E
>
> So you can't find v1 of patch #2 directly from v2 of patch #2.
> ...but, a good tool could still help you here.  It would see that at
> least one patch in this series had the same Change-Id and it should
> help you find the whole v1 series.
>
> If all 3 patches were all totally new and lost Change IDs then I guess
> you're SOL, but maybe in that case it really should be considered a
> new series anyway?

Maybe it should be. It is hard to generalize it to work all the time.
But I agree with you the above flow is better than nothing.

It does seem people need more convincing here though, that inserting a
unique ID into a commit message is acceptable.

Another thing that could be done is, have the git hook insert the
whatever-ID into the discardable part of the patch. The archive will
then have it even if the commit doesn't. Then something email2git or
patchwork can connect different patches in the archive with a
particular commit. I think Thomas Gleixner or someone else also
proposed something similar in this thread.  What's wrong with that
idea?

thanks,

 - Joel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
