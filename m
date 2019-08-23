Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E4F9A489
	for <lists@lfdr.de>; Fri, 23 Aug 2019 03:05:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AFC371156;
	Fri, 23 Aug 2019 01:05:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DDF91146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:05:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C88F89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:05:41 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id q22so16226976iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lixom-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RspG1ecLDwBNS7jMU2FTVqeAutA2HU6riA/r2ahErIc=;
	b=f9PCFsp1HbYi0fu6BTFhDSd+qU83UamFe4Dg2IH1Pduz/re8YN6BK3GuMWadcGaCnM
	L4awUvVHckwuKelTYLliuX49pDOnNS3kX2gB5mGX3F46KhJLutqgT1Gv+/rZ1aK/je7W
	8+MCltr7kETMAJQEKSCJtcpM4Zq1t6auj3y5/ZuRAxFBEhtWiEJITIdF9wfnBgn8mHzv
	G6th6bne0Dk5CN+G5gli0bMUZ92GsOYWHUWEFRWig+N/UuCQ0rzRrBiinDycbcuieKxQ
	tZ3lR7swHrGf7p9HSElMCVSiLTg4owuHyIGcU4PLlIgh2qCakJKr+flCse37f/N6ZaYX
	3qGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RspG1ecLDwBNS7jMU2FTVqeAutA2HU6riA/r2ahErIc=;
	b=Yt+luAXMuivktBxODttPaHrSCEX7Fqcg3aEH7S6zak149tT15ln3QsbeocoBRUHVFV
	Q2OUjyazTEdfrs7q4Hc54+0oHNUNrpqXJl9V0f78OB/6PyW44guznko20Gpzy1VWO+hB
	HbIJ/7lOBn9w1pCnj6AM6phFl4+inhW6CEcPJ2focRqrFUW6OtAHQZA+iT/RXw+VIi0h
	g44r9U6u1rkFmU0XsHdngqvbg0YOLssQBXtoKtluQB6NnHgFwYSTmitPNE1rdJUGQcZS
	GfBxRdxsZH65Xq2b5LW0tg0AWULZXILFYV3JyVs/hXjhCoUg/+WqAarB83rVbnK5J5pi
	jXew==
X-Gm-Message-State: APjAAAXi0NdTUs89CUGNDU6ES0c/voP9F3gs3hLynyIWlBLQpsk4wk+k
	VA/BC8YaL70J9nEL0EA0D4ufCf/Ad3vX/ktQahNzHA==
X-Google-Smtp-Source: APXvYqyxM9DVHp341XYcMbQv3aZdoihiS4ExCWHaCukVciUkVjNaGy5qUIWsFs+z0IBSuPOV/pudEeaoeekhYI1c4Fo=
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr3285396iom.36.1566522340745;
	Thu, 22 Aug 2019 18:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
In-Reply-To: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 22 Aug 2019 18:05:29 -0700
Message-ID: <CAOesGMhOvjihHvncLaove80vr0qeOjtZ=HPLiMtSL+it84aGuQ@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
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

On Thu, Aug 22, 2019 at 5:45 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Thu, Aug 22, 2019 at 5:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > On 8/22/19 5:30 PM, Olof Johansson wrote:
> > > On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
> > > <torvalds@linux-foundation.org> wrote:
> > >>
> > >> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> > >>>
> > >>> The Linux kernel has always viewed these Change-Id tags as obnoxious
> > >>> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > >>> patch when posting to the mailing list is told to please re-post their
> > >>> patch without the Change-Id.  In this email, I will attempt to argue
> > >>> that the Linux kernel ought to relax this restriction and allow
> > >>> (possibly even encourage) Change-Ids.
> > >>
> > >> No.
> > >>
> > >> Not without some ground rules.
> > >>
> > >>> To begin with, let me make sure we're on the same page about what
> > >>> Change-Ids are.  As I understand it:
> > >>>
> > >>> * A change ID is much alike a UUID.  It is locally generated on a
> > >>> developer's computer and is (in theory) unique across the universe.
> > >>
> > >> Completely irrelevant.
> > >>
> > >> The point of an UUID is not just that it's unique, but THAT YOU CAN
> > >> LOOK SOMETHING UP USING IT!
> > >>
> > >> A "change ID" that I can't use to look anything up with is completely
> > >> pointless and should be removed from kernel history.
> > >>
> > >> But if you have something unique that is actually useful for looking
> > >> things up, then by all means. But it needs to be useful for
> > >> _everybody_.
> > >>
> > >>> * When a developer keeps the same Change-Id across two patches they
> > >>> are making the assertion that the two patches are either the same or
> > >>> should be treated as two versions of the same logical change.
> > >>
> > >> .. and we have better ways to do that.
> > >>
> > >> For example, we are actively encouraging things like message ID's
> > >> (which are _also_ a form of locally generated UUID, they just are more
> > >> than the silly purely numerical one).
> > >>
> > >> That gives you the origin of something, but it also gives you the
> > >> development history and context.
> > >>
> > >> But note that how when it comes to message ID's we encourage them in a
> > >> form that actually also helps look that information up, ie the
> > >> preferred form isn't just the message ID (although that exists), it's
> > >> a link like
> > >>
> > >>      Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
> > >>
> > >> instead of
> > >>
> > >>     Message-ID: 20190723065733.4899-5-leon@kernel.org
> > >>
> > >> even though technically they have just as much actual information in theory.
> > >>
> > >> Do you see people complaining about that kind of UUID? No.  Because it
> > >> gives useful information to the project, and when something happens,
> > >> people can look things up and _use_ that kind of UUID.
> > >
> > > For the actual open projects, the answer to this might be relative
> > > easy: Most gerrit instances can feed a mailing list with emails of
> > > both the initial patch, and later comments.
> > >
> > > Said emails would obviously have a Message-ID, and if the list is
> > > added to lore, it can be referenced there.
> > >
> > > Note, even if the Change-Id had a full URL, there would be no archival
> > > guarantee in the same way as lore gives us, so that approach alone
> > > isn't useful. A URL to a "forever" mailing list archive seems like the
> > > most stable possible reference.
> > >
> > > This doesn't address the full issue Doug was looking to solve, which
> > > is the reverse mapping of "posted patch" to "previous version of the
> > > patch". Patchwork tries to guess this, but it's best effort. I don't
> > > have a great answer to this, besides possibly in-reply-to threading
> > > and associating back that way via the email trail.
> > >
> >
> > Wouldn't a direct link to the Gerrit instance solve the problem ?
> > After all,
> >
> > Link: https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1759334
> >
> > points to the same Gerrit entry as
> >
> > Change-Id: I5a2e33424e7fb19fed13afb854ae6546ef9bfa35
> >
> > and there would be no need to look anything up.
>
> Nope, for the same reason I already mentioned: In 2 years when Google
> deprecates Chromium and EOL's the product and project (see: Reader,
> Google+, Youtube messaging), there will be no way to get to the
> history. (I know, unlikely in this case, but URLs move without
> redirects, etc).
>
> Lore solves that, since it's externally archived.

Actually, it seems like the outgoing email already has suitable headers.

I looked up a random review, and viewed raw message:

https://groups.google.com/a/chromium.org/forum/#!original/chromium-os-reviews/Y2R_LLKytQw/M0TRRzfoAgAJ

X-Gerrit-Change-Id: I50d72612569743198825afdf41200c15db759076
X-Gerrit-Change-Number: 1762035
X-Gerrit-ChangeURL:
<https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1762035>
X-Gerrit-Commit: 5b7dff2b2cb0b1a8769a53d59e387772ae569243

Since that would be captured in a mail archive, you could easily get
it from there if needed.

Based on this, there's no reason to use opaque Change-Id, all the
functionality needed can be reached through the mail URLs we already
agreed are reasonable to use.


(Someone should maybe tell Hao that he has the email address
misspelled in his S-o-b).


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
