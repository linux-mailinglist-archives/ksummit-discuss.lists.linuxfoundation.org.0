Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A519B1F4
	for <lists@lfdr.de>; Fri, 23 Aug 2019 16:29:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9270EF69;
	Fri, 23 Aug 2019 14:29:10 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DBC411DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:18:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1CFE89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:18:57 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id t12so9787076qtp.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Zr+bu7VM3AeLtRooE18P4LcOj3AMpx8zaEk4C+v09i4=;
	b=p0t7x4epAc/SauIAEDLlfEg2BMTmkbPsmye4JH2smQd3idSsXbkN3lb0MPBGiSHdjJ
	UYMoGwDOW2ugxQpvZXE0wuzdgx4DkhmG7Uqg4rV1nxaSRc16EKY+Y06qSaLZBHBn3f9G
	1tQjf2bUADm4Xt5b/Jj2Yrj1PwDNWmImERsmyID+gFolyNnhgYQVnnVz8U0zlclle5Wu
	hqTQd7V2+Q1NBdicyuXAQ5flfmNhut0F5j7rPXR3UKzsg4ef+DdNJtyVrOi0jNd7G/m4
	4IjIa073FKJvv2EUu3kPfAGpgiv/P4U6NAI70Lw+4MyrzqvZVpsbgFBgJMTyHhO5EZhw
	0Ujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Zr+bu7VM3AeLtRooE18P4LcOj3AMpx8zaEk4C+v09i4=;
	b=FixybPzwGpgznYJQf4hnCtVCNqJxi5bmzxhfagvnio69HA3ELjpJmW3HqYVvDA8dh7
	8MwKGPgMDjpdE60Ygxg6j+cFIDEKoV3m9RhKIlJL5eRdimDyT7ItoRjpUOL1sXIXj11n
	jtusDUj6owh482YRB66HLrktuDz2HQOdF+pdlJtLh8OXRm0Ldv05AsvnlWdj+op8LrF/
	fbN0hllvScTAC8K43AKbecXOG0AEWA8NU3cpjRDX54/Rz9S9P9VFIAzMVG+uRWiSO8+w
	/IKo+nqfnSNJeYviC2rdLzT/GU7qfYr2mqXnxwsoEzaOZDTeKVX8f9L3flN3GtASbCUz
	Px7Q==
X-Gm-Message-State: APjAAAWpIJpaIQJocAbwPGK2tAhKxgHagMiCTEIw0RQnqShW8Ne4jbtX
	UTuQ8P7wWVsveYEIs8HUJA+TnmwZeVYa1KUaHncouQ==
X-Google-Smtp-Source: APXvYqxzfMfRU60TGw5w3qV9dErfxVlp/DCbic1dPHS7w0bnPBjGn6OqCIKIKaRr9Ga0Bw/gyu9HKSb5SvG5jNhvjxQ=
X-Received: by 2002:a0c:ac4b:: with SMTP id m11mr2059938qvb.103.1566523136146; 
	Thu, 22 Aug 2019 18:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAD=FV=UFSmZwydm7pgGXv-nMM2-9C0qZqGzOJo73b0y6+b4pZw@mail.gmail.com>
In-Reply-To: <CAD=FV=UFSmZwydm7pgGXv-nMM2-9C0qZqGzOJo73b0y6+b4pZw@mail.gmail.com>
Date: Thu, 22 Aug 2019 21:18:44 -0400
Message-ID: <CAJWu+orCGf0hAbsWEEQFu1kM3G41Kd-nm+BzKiWGo4bWrbyEGQ@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Fri, 23 Aug 2019 14:29:07 +0000
Cc: Barret Rhoden <brho@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	Dmitry Vyukov <dvyukov@google.com>, David Rientjes <rientjes@google.com>
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

On Thu, Aug 22, 2019 at 9:07 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > > To begin with, let me make sure we're on the same page about what
> > > Change-Ids are.  As I understand it:
> > >
> > > * A change ID is much alike a UUID.  It is locally generated on a
> > > developer's computer and is (in theory) unique across the universe.
> >
> > Completely irrelevant.
> >
> > The point of an UUID is not just that it's unique, but THAT YOU CAN
> > LOOK SOMETHING UP USING IT!
> >
> > A "change ID" that I can't use to look anything up with is completely
> > pointless and should be removed from kernel history.
> >
> > But if you have something unique that is actually useful for looking
> > things up, then by all means. But it needs to be useful for
> > _everybody_.
>
> I presumably wasn't clear in my proposal.  My apologies and I will try
> to be clearer.  I am proposing this:
>
> 1. I post v1 of my patch series to public mailing lists, like LKML.
> Each patch in the series is tagged with a Change-Id which my own PC
> made up.  I never touch a gerrit server anywhere.
>
> 2. I post v2 of my patch series to a public mailing list.  I make sure
> that patches that are supposed to be newer versions of the same patch
> in v1 contain the same Change-Id that they had in v1.  This is
> something I already know how to do since sometimes I use gerrit and
> that's how you work with gerrit.  I still haven't touched a single
> gerrit server in this process.
>
> 3. The patch lands and still has the Change-Id.
>
> Someone looking at the git history in the kernel can find the old
> versions by searching public mailing lists for the Change-Id simply
> using the standard ways to search mailing lists for a string.  There
> is nothing excluding anyone here and it should be useful for everyone.
>
> Someone doing a search of the mailing lists that finds patch v1 can
> note the Change-Id and search the same mailing lists (and the kernel
> history) for that Change-Id.  They can find it because the same string
> was in v1 and v2.
>
>
> > > * When a developer keeps the same Change-Id across two patches they
> > > are making the assertion that the two patches are either the same or
> > > should be treated as two versions of the same logical change.
> >
> > .. and we have better ways to do that.
> >
> > For example, we are actively encouraging things like message ID's
> > (which are _also_ a form of locally generated UUID, they just are more
> > than the silly purely numerical one).
> >
> > That gives you the origin of something, but it also gives you the
> > development history and context.
>
> I do not believe that there is any way to start with the Message-Id of
> v2 of a patch and easily find v1 of the same patch.  Things like
> cregit and email2git may have heuristics here, but I'm fairly certain
> that they are not guaranteed to work.  I am happy to be corrected
> here.  I can also spend time finding examples of cregit and email2git
> failing if needed.

Could email2git be made more robust - if each revision of a patch
contained a Message-id of the previous revision(s), then it strings
them together? A list post already has a Message-Id to uniquely
identify it.

Also Message-Id is more flexible, it can be used to refer to other
patches or other discussions which may not necessarily refer to older
patch revisions.

I see your point, but IMO - I don't think it is practical to force all
Linux contributors to use a new Change-Id and expect that they will
stick to using it. It is better to use existing tools.

thanks,

 - Joel
[snip]
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
