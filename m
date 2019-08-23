Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 626AB9A44B
	for <lists@lfdr.de>; Fri, 23 Aug 2019 02:30:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BA8D1F45;
	Fri, 23 Aug 2019 00:30:30 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29620F3B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:30:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 358677FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:30:28 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id w5so10615332edl.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lixom-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dj2ey4OJo4i72eJrIjcZUkKqpk5Iwp1kKtSQA9rL4QE=;
	b=bdmY4sn3wF+3yyOUPFFKn7VnSWNZZne6+7Ad75Cyw2XLF6FL6HNiZ9maRptJLDzG8p
	5z/VDROBJ8tT6pwYbMY78qFXlSfKlzo920u4MFIrs2qbkEUBsgv4jRXaCOyb01uNpjhr
	UqydC5gcpDZdZmbH4y+Kbka+4wPjZfyraUFolZPbvmEkWV7fxpZ6piHEE2b5lkH/RHHz
	m0dHNBOTgFOE1Qyf3sKGw0nwr/5lBc7F6dSpKI5GoN6Tegfk8B75AHBkRpnk41WX6XQt
	gn/VsrmDF2VGuKITNHPup680IhZHiqNHHOdG9vq7/Jg/gqjO9onFy7Yezm3MPkSV12HF
	aIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dj2ey4OJo4i72eJrIjcZUkKqpk5Iwp1kKtSQA9rL4QE=;
	b=HctqGN2P4C/Q//bff2p67TqZLxIbddSxXX/78e8Vjgp3lFm5EhrRA3sl1tKKXxvJ2g
	NdT0OpTD9RwgIwxZnBAvCO0EOZ46wnPmsyUCbscB6iYC1UkfS8UiLTmDtbTXQiMHgkmy
	zmfvWtbUFX9N7y5bKBQqu35JHEIqrGmSGZXLN6H0T0YPq2RBPaONkxy1xYn9aGXUafQu
	HFakY0waHYWamx14DWGHq9TVI7JFzxn6zsSd5m8PdPYHuYXb0N+PhoI+4IBLkTmZWOCE
	1RB/haDKdGd9b2TzcUejdoAM+TKSOs38hoIabJmZtplLMH3wAh15B6j3O8Giv5mFEv2c
	SQRg==
X-Gm-Message-State: APjAAAU5E0JP8r2NwCeS7e5Za8toV/zfOobh+prmSukCdao6wyL8vy9D
	zbXfXWGhIuggsQrzek+7BQJzPfJBnFdr2E3Hfn4IUg==
X-Google-Smtp-Source: APXvYqy/PLS0cL7y1N4Qghllsjf5FpG3sHqYUYZ606D+KjA5nB0ixt9iKyM0shSYZ14sw2fRT9GjhwybLSMfhei5M0Y=
X-Received: by 2002:a17:906:70c3:: with SMTP id
	g3mr1726469ejk.195.1566520226690; 
	Thu, 22 Aug 2019 17:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
In-Reply-To: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 22 Aug 2019 17:30:14 -0700
Message-ID: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
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

On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > The Linux kernel has always viewed these Change-Id tags as obnoxious
> > and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > patch when posting to the mailing list is told to please re-post their
> > patch without the Change-Id.  In this email, I will attempt to argue
> > that the Linux kernel ought to relax this restriction and allow
> > (possibly even encourage) Change-Ids.
>
> No.
>
> Not without some ground rules.
>
> > To begin with, let me make sure we're on the same page about what
> > Change-Ids are.  As I understand it:
> >
> > * A change ID is much alike a UUID.  It is locally generated on a
> > developer's computer and is (in theory) unique across the universe.
>
> Completely irrelevant.
>
> The point of an UUID is not just that it's unique, but THAT YOU CAN
> LOOK SOMETHING UP USING IT!
>
> A "change ID" that I can't use to look anything up with is completely
> pointless and should be removed from kernel history.
>
> But if you have something unique that is actually useful for looking
> things up, then by all means. But it needs to be useful for
> _everybody_.
>
> > * When a developer keeps the same Change-Id across two patches they
> > are making the assertion that the two patches are either the same or
> > should be treated as two versions of the same logical change.
>
> .. and we have better ways to do that.
>
> For example, we are actively encouraging things like message ID's
> (which are _also_ a form of locally generated UUID, they just are more
> than the silly purely numerical one).
>
> That gives you the origin of something, but it also gives you the
> development history and context.
>
> But note that how when it comes to message ID's we encourage them in a
> form that actually also helps look that information up, ie the
> preferred form isn't just the message ID (although that exists), it's
> a link like
>
>     Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
>
> instead of
>
>    Message-ID: 20190723065733.4899-5-leon@kernel.org
>
> even though technically they have just as much actual information in theory.
>
> Do you see people complaining about that kind of UUID? No.  Because it
> gives useful information to the project, and when something happens,
> people can look things up and _use_ that kind of UUID.

For the actual open projects, the answer to this might be relative
easy: Most gerrit instances can feed a mailing list with emails of
both the initial patch, and later comments.

Said emails would obviously have a Message-ID, and if the list is
added to lore, it can be referenced there.

Note, even if the Change-Id had a full URL, there would be no archival
guarantee in the same way as lore gives us, so that approach alone
isn't useful. A URL to a "forever" mailing list archive seems like the
most stable possible reference.

This doesn't address the full issue Doug was looking to solve, which
is the reverse mapping of "posted patch" to "previous version of the
patch". Patchwork tries to guess this, but it's best effort. I don't
have a great answer to this, besides possibly in-reply-to threading
and associating back that way via the email trail.


-Oloif
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
