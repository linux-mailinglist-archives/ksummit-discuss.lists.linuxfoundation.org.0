Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 997B89A4BF
	for <lists@lfdr.de>; Fri, 23 Aug 2019 03:09:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 78B7211B3;
	Fri, 23 Aug 2019 01:09:30 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2710BE9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:09:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 788FD8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:09:27 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i18so4715287pgl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SpNVgUBIdLcLp4IELvCS1I+T+CPss9C3Z2bC1tR6FfI=;
	b=KmyhEqxmISe4iF4u1Oqqh9yoPmYzeIZ2JquVOc4ZM2t6yQC9bpNZADtKjUTC7GxBhF
	2D3llVp7YQiLBk2+nuryi3i/n059zXexJ10v9zhvvlqdqzciGk0ublcp/Pk0cP2gFb33
	lCJmCruaWHWkSuV2gDq/BwAjCD4HK3B635sSyaqEMVP6Gxj9ZHPq3veXd93chYDr+CXq
	6OM6NlDIkUnG0Ld1xQzQNu7jYeAIr5D/aJfUaHej4ay7bi6I96ENG/KODI5PwY3cW+hQ
	InWy0Mfvz4BiBAcBOkiJbS4zNALHcLz1HBGn6vASm5hPhLznjyKQ0kP4oaxgQ9QkWlbs
	DfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SpNVgUBIdLcLp4IELvCS1I+T+CPss9C3Z2bC1tR6FfI=;
	b=M+DHDnOp7G+MvjWAsbxrVieddiOMmw7q+4r6IptzCunsdvhGhOzBKmc5x36j0xBxfZ
	39MNn1U8PFf2Jv0kp/ie7yCYJutAEA9gxzwLRqZorVR5oQOEP4+kXAX56VS1mCjrwob9
	gsDp58S+9neehnzw8o5ORZmSEMSwE+gLIJq0NBjf2dSamhI5zMrycYx8FKQYpI6zLH1r
	8t+F1y9+PHhpTeZ5TI6WLn582rU3itpdnFDymBhEq56+kSMh9tW1J3ocU/14hwlEq101
	ZZR71amHDwaAvHxcCO6IPNeQMpo/GELoeCOIFH3krZQFMWmHIVVPFHu4X/Ma+pJb8185
	R1wA==
X-Gm-Message-State: APjAAAXjAlIO2qC5reBOCN2t1juRhLh6wsHbNx5pJBth46ynQGJlyCrF
	Zfe0XM7vXj2ThEt+44TEi/o=
X-Google-Smtp-Source: APXvYqxYlOhje647oQmt19bo6zjSKFKz6eeCQ4SErVYsfb9F11UiMTErixwxqkTXi50Wlju1NXVm6A==
X-Received: by 2002:aa7:8193:: with SMTP id g19mr2236769pfi.16.1566522566724; 
	Thu, 22 Aug 2019 18:09:26 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
	by smtp.gmail.com with ESMTPSA id b3sm663667pfp.65.2019.08.22.18.09.25
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Aug 2019 18:09:26 -0700 (PDT)
Date: Thu, 22 Aug 2019 18:09:23 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20190823010923.GC139536@dtor-ws>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<CAOesGMhOvjihHvncLaove80vr0qeOjtZ=HPLiMtSL+it84aGuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMhOvjihHvncLaove80vr0qeOjtZ=HPLiMtSL+it84aGuQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	Dmitry Vyukov <dvyukov@google.com>, David Rientjes <rientjes@google.com>,
	Dmitry Torokhov <dtor@chromium.org>
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

On Thu, Aug 22, 2019 at 06:05:29PM -0700, Olof Johansson wrote:
> On Thu, Aug 22, 2019 at 5:45 PM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Thu, Aug 22, 2019 at 5:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > On 8/22/19 5:30 PM, Olof Johansson wrote:
> > > > On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
> > > > <torvalds@linux-foundation.org> wrote:
> > > >>
> > > >> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> > > >>>
> > > >>> The Linux kernel has always viewed these Change-Id tags as obnoxious
> > > >>> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > > >>> patch when posting to the mailing list is told to please re-post their
> > > >>> patch without the Change-Id.  In this email, I will attempt to argue
> > > >>> that the Linux kernel ought to relax this restriction and allow
> > > >>> (possibly even encourage) Change-Ids.
> > > >>
> > > >> No.
> > > >>
> > > >> Not without some ground rules.
> > > >>
> > > >>> To begin with, let me make sure we're on the same page about what
> > > >>> Change-Ids are.  As I understand it:
> > > >>>
> > > >>> * A change ID is much alike a UUID.  It is locally generated on a
> > > >>> developer's computer and is (in theory) unique across the universe.
> > > >>
> > > >> Completely irrelevant.
> > > >>
> > > >> The point of an UUID is not just that it's unique, but THAT YOU CAN
> > > >> LOOK SOMETHING UP USING IT!
> > > >>
> > > >> A "change ID" that I can't use to look anything up with is completely
> > > >> pointless and should be removed from kernel history.
> > > >>
> > > >> But if you have something unique that is actually useful for looking
> > > >> things up, then by all means. But it needs to be useful for
> > > >> _everybody_.
> > > >>
> > > >>> * When a developer keeps the same Change-Id across two patches they
> > > >>> are making the assertion that the two patches are either the same or
> > > >>> should be treated as two versions of the same logical change.
> > > >>
> > > >> .. and we have better ways to do that.
> > > >>
> > > >> For example, we are actively encouraging things like message ID's
> > > >> (which are _also_ a form of locally generated UUID, they just are more
> > > >> than the silly purely numerical one).
> > > >>
> > > >> That gives you the origin of something, but it also gives you the
> > > >> development history and context.
> > > >>
> > > >> But note that how when it comes to message ID's we encourage them in a
> > > >> form that actually also helps look that information up, ie the
> > > >> preferred form isn't just the message ID (although that exists), it's
> > > >> a link like
> > > >>
> > > >>      Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
> > > >>
> > > >> instead of
> > > >>
> > > >>     Message-ID: 20190723065733.4899-5-leon@kernel.org
> > > >>
> > > >> even though technically they have just as much actual information in theory.
> > > >>
> > > >> Do you see people complaining about that kind of UUID? No.  Because it
> > > >> gives useful information to the project, and when something happens,
> > > >> people can look things up and _use_ that kind of UUID.
> > > >
> > > > For the actual open projects, the answer to this might be relative
> > > > easy: Most gerrit instances can feed a mailing list with emails of
> > > > both the initial patch, and later comments.
> > > >
> > > > Said emails would obviously have a Message-ID, and if the list is
> > > > added to lore, it can be referenced there.
> > > >
> > > > Note, even if the Change-Id had a full URL, there would be no archival
> > > > guarantee in the same way as lore gives us, so that approach alone
> > > > isn't useful. A URL to a "forever" mailing list archive seems like the
> > > > most stable possible reference.
> > > >
> > > > This doesn't address the full issue Doug was looking to solve, which
> > > > is the reverse mapping of "posted patch" to "previous version of the
> > > > patch". Patchwork tries to guess this, but it's best effort. I don't
> > > > have a great answer to this, besides possibly in-reply-to threading
> > > > and associating back that way via the email trail.
> > > >
> > >
> > > Wouldn't a direct link to the Gerrit instance solve the problem ?
> > > After all,
> > >
> > > Link: https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1759334
> > >
> > > points to the same Gerrit entry as
> > >
> > > Change-Id: I5a2e33424e7fb19fed13afb854ae6546ef9bfa35
> > >
> > > and there would be no need to look anything up.
> >
> > Nope, for the same reason I already mentioned: In 2 years when Google
> > deprecates Chromium and EOL's the product and project (see: Reader,
> > Google+, Youtube messaging), there will be no way to get to the
> > history. (I know, unlikely in this case, but URLs move without
> > redirects, etc).
> >
> > Lore solves that, since it's externally archived.
> 
> Actually, it seems like the outgoing email already has suitable headers.
> 
> I looked up a random review, and viewed raw message:
> 
> https://groups.google.com/a/chromium.org/forum/#!original/chromium-os-reviews/Y2R_LLKytQw/M0TRRzfoAgAJ
> 
> X-Gerrit-Change-Id: I50d72612569743198825afdf41200c15db759076
> X-Gerrit-Change-Number: 1762035
> X-Gerrit-ChangeURL:
> <https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1762035>
> X-Gerrit-Commit: 5b7dff2b2cb0b1a8769a53d59e387772ae569243
> 
> Since that would be captured in a mail archive, you could easily get
> it from there if needed.
> 
> Based on this, there's no reason to use opaque Change-Id, all the
> functionality needed can be reached through the mail URLs we already
> agreed are reasonable to use.
> 
> 
> (Someone should maybe tell Hao that he has the email address
> misspelled in his S-o-b).

This is however Gerrit-specific and I do not believe that Doug is
proposing to tie it all to Gerrit. I should be able to stick Change-Id
or tag we settle upon onto my outgoing patches and have it there without
any Gerrit involvement.

Thanks.

-- 
Dmitry
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
