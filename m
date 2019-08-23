Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AC69B5FB
	for <lists@lfdr.de>; Fri, 23 Aug 2019 20:00:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2D80EE44;
	Fri, 23 Aug 2019 18:00:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E47486D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 18:00:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D66EF7FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 18:00:31 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q22so22068749iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 11:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ksVPQ9pZIc6zlW6zTJjh8MMgqFnyNJdyNZLb2Plo5V0=;
	b=hKn5JuFxR94SPxSZrSYyVPzLxaZ9YZnOCIADvl1nV6QugPxqGUn5hdOtM+0aCrlTRR
	bTYdRISmPIKO38rcXaFOWEnpf12EI46MMcm6A+eu0xf95LjvvDkF9AEzPuSclHpgxybf
	NMeqY7uRP0kwSK6CSEZ3qGlclt2Dy2Kof5wSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ksVPQ9pZIc6zlW6zTJjh8MMgqFnyNJdyNZLb2Plo5V0=;
	b=KKqV6yH3SUcgmeOee64E+mjz17nIBxbphnXGllP/S2y9AT8lxaN87mz2oaUtUYumn5
	rJjTqQYgaKY3yPlGQ0ZmwD3sSKe/yIkQpvQaz+ULBf65ITOqTiiauRpH1Rzg+y68Aq1w
	AArI9ulrauUSz6L0scewwkqPEK7v1YXEHeZeohIkeZ424A2G2DTFIufrjbxNilOwwK/R
	EeVJI6P+aFKPq1DvNb3ihhYh9l3NoeKWgHEMuSeIk2G8Z8OKFreUc5Cjb/pxrFz9IWpH
	wbbMtRTAcG8xs/KZJxi1ikhgbvhMVE9SPK2vU2DizlLxog0Gd1PUkA7GPrbRKP5znKMN
	cwaA==
X-Gm-Message-State: APjAAAWR2Ssxd8ansguxW771lIfgGOt5gl3ANCZ8zGlNGFqwQORcHR0N
	j+CkqmPeBa67OOxv599++nmwmt+N6So=
X-Google-Smtp-Source: APXvYqwPgwsGSiviydbWpLj3pesQ/0rbxslVKGyPtHCp0C0XfBenubUF3GcqKzUInAPtDlMk75hOHA==
X-Received: by 2002:a5e:d70a:: with SMTP id v10mr8571465iom.19.1566583230719; 
	Fri, 23 Aug 2019 11:00:30 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
	[209.85.166.45])
	by smtp.gmail.com with ESMTPSA id l8sm3216760ioh.85.2019.08.23.11.00.29
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 11:00:29 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id z3so22115627iog.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 11:00:29 -0700 (PDT)
X-Received: by 2002:a02:a386:: with SMTP id y6mr502607jak.90.1566583228825;
	Fri, 23 Aug 2019 11:00:28 -0700 (PDT)
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
In-Reply-To: <CAJWu+oo++AVx-xsQkVCscWLVQyExA7QUPX8AxyQ=RWFw3FrmiQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 23 Aug 2019 11:00:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
Message-ID: <CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
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

On Fri, Aug 23, 2019 at 9:54 AM Joel Fernandes <joelaf@google.com> wrote:
>
> On Fri, Aug 23, 2019 at 12:45 PM Doug Anderson <dianders@chromium.org> wrote:
> [snip]
> > Sure, if a given patch in the series is totally wrong and I re-write
> > it (but still want the re-write to be considered a new version of the
> > previous patch) then I have to manually copy the Change-Id for a
> > gerrit upload.  ...but I'd also be OK if people just get a new
> > Change-Id in this case.
>
> Sometimes it is not "totally wrong" but just "done in a different
> away" and is a new series. This happens a lot since upstream
> development can be evolutionary. So your v1 may look nothing like v2
> and is a whole new series. Yet the history linking the 2 series is
> important. And no amount of automated commit ID generation can link
> them. This is the scenario I was talking about. I know the git hook
> works, but sometimes the Change-Id has to be manually copied. That's
> not automatable. May be we are slightly on different tracks, but this
> is the scenario that would be useful to trace IMO.

Agreed that it would be useful and (personally) I'd do it.  Maybe
others who are used to the gerrit workflow would also do it.  ...but
what I like is that the fallback for those that don't try to hard
isn't that terrible.  Yes they'd end up with a new Change-Id in some
cases, but presumably it still wouldn't be that hard for tools to help
you.  Namely, if you have a series:

Patch v1 1/3 - Add a frob - Change-Id A
Patch v1 2/3 - Add a larb - Change-Id B
Patch v1 3/3 - Use the frob to tweak the larb - Change-Id C

...and you decide that you should be tweaking a sneech instead of a
larb, you might end up with this if someone isn't careful to copy
Change-Ids and their workflow is to throw away the old patch #2 and #3
instead of amending.

Patch v2 1/3 - Add a frob - Change-Id A
Patch v2 2/3 - Add a sneech - Change-Id D
Patch v2 3/3 - Use the frob to tweak the sneech - Change-Id E

So you can't find v1 of patch #2 directly from v2 of patch #2.
...but, a good tool could still help you here.  It would see that at
least one patch in this series had the same Change-Id and it should
help you find the whole v1 series.

If all 3 patches were all totally new and lost Change IDs then I guess
you're SOL, but maybe in that case it really should be considered a
new series anyway?


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
