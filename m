Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DE52B9A3FE
	for <lists@lfdr.de>; Fri, 23 Aug 2019 01:40:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 99164EC8;
	Thu, 22 Aug 2019 23:40:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43D44EC0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 23:40:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E21E89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 23:40:01 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id j4so7484499iog.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 16:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=4mwPe+AXLNP2Gx0nYnCV1bVk62vjt/s6s3k/4ZYpfzo=;
	b=Z8jeHGYuls4z5xDBoP2S7UTMf+ztQx807a9q+YScxB8BIpQVplreOovx2rmWKvLcTb
	bt1cHfCWiGLFt3Y3i/J3eVzbM0z1yD9bijiBPyIpbpVeHaQTU3Uk8kJDKGVNi0tcKYae
	EYXkK7UA7RCpGJ4eDYrwSIyloAV893Yz8vxaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=4mwPe+AXLNP2Gx0nYnCV1bVk62vjt/s6s3k/4ZYpfzo=;
	b=C2xqBCyJMJzRHdURx09tRS6ekIdy4NNYRNznRePv0T4qoHo56ltikiOZ7tsHPCQf0e
	zbp8CrY5p7hjHS8Tgx+96Z4q4TVXNv4w5fw5zjGCzbA7+CaJ+RohVAu2zOxO3HxHBVG5
	Wlb0a8Mxr01Uq34CGkZQm+mks2XWa45m4+kZ55z5kcYXAz5poCVlzyCIRjpE4ka1oapm
	Y9DZy9kfNeZ2F2UsKmB5GTy72Vo/hzmRC1tsWceO9E+Q06to0eFl1gzTdQJubgP8auLj
	WWbwjVlYW4bn0dBJ/nwe0my4QrjJ4GwfsXnz47r0A791ZMF1uP8jsL2eri4COAlngzlG
	IV4g==
X-Gm-Message-State: APjAAAUxN1wdoTEgX2EjDPMVKv8v8xeJHk4KnqpCUQECKAq8xKHQvPFv
	W/7Ghe3UAZjVl5OYU+XGFWRhzRHfhD4=
X-Google-Smtp-Source: APXvYqwTQytRe7HDYqpFtkpy1g35g/L1PqvnR7LFDZSsxNwsZbnuauZKEbgfbvH09JArPQFC51KEzQ==
X-Received: by 2002:a05:6602:228e:: with SMTP id
	d14mr1536760iod.85.1566517199987; 
	Thu, 22 Aug 2019 16:39:59 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com.
	[209.85.166.41]) by smtp.gmail.com with ESMTPSA id
	n22sm1309797iob.37.2019.08.22.16.39.59
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 16:39:59 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id q22so15846055iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 16:39:59 -0700 (PDT)
X-Received: by 2002:a02:a703:: with SMTP id k3mr2276375jam.12.1566517198730;
	Thu, 22 Aug 2019 16:39:58 -0700 (PDT)
MIME-Version: 1.0
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 22 Aug 2019 16:39:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
Message-ID: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Brendan Higgins <brendanhiggins@google.com>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: [Ksummit-discuss] Allowing something Change-Id (or something like
	it) in kernel commits
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

As everyone is probably aware, when you use the gerrit code review
system all of your commits get an extra line in them that looks
something like:

Change-Id: I6a007dfe91ee1077a437963cf26d91370fdd9556

The Linux kernel has always viewed these Change-Id tags as obnoxious
and useless spam.  Anyone who accidentally leaves a Change-Id in their
patch when posting to the mailing list is told to please re-post their
patch without the Change-Id.  In this email, I will attempt to argue
that the Linux kernel ought to relax this restriction and allow
(possibly even encourage) Change-Ids.


To begin with, let me make sure we're on the same page about what
Change-Ids are.  As I understand it:

* A change ID is much alike a UUID.  It is locally generated on a
developer's computer and is (in theory) unique across the universe.

* When a developer keeps the same Change-Id across two patches they
are making the assertion that the two patches are either the same or
should be treated as two versions of the same logical change.  For
instance, v1, v2, and v3 of the same patch should have the same
Change-Id.  Even if v2 and v3 of the patch have different subjects and
touch different files, if they have the same Change-Id then the
developer is asserting that v3 should be considered a new version of
the same logical change as v2.  If it helps to think about it,
Change-Id is used by gerrit servers to know that a new patch uploaded
should replace an older version with the same Change-Id.


At the moment, Change-Ids are highly associated in people's minds with
gerrit and many upstream developers dislike gerrit.  To be clear: I am
not suggesting that kernel developers should endorse gerrit or be
forced to use gerrit.  I am suggesting that the idea of Change-Ids is
a good one independent of gerrit.  If we start using Change-Id then it
will allow better tools to be created, making life better for kernel
developers.


Specifically, let me list the problems I'd like to solve:

1. If I see a commit in Linux, I would like to be able to easily find
all of the mailing list discussions relevant to that commit.  I know
there are proposals about including the Message-Id of the final post
in the commit log and that is certainly better than nothing, but the
Message-Id will only get you a link to the final version of the patch.
If the relevant discussion happened on a previous version of that
patch then you need to find it yourself.  This gets harder if the
patch changed subject, touched different files, if parts of the series
landed at different times, and if multiple people were involved in
posting different versions of the patch.  If the commit in Linux has a
Change-Id then the old versions are logically linked and easier to
associated with one another.

2. If I do a search through old mailing list archives and I stumble
upon a patch that didn't land, I can more easily find different
versions of that patch if I have a Change-Id.  Some of these different
versions may have relevant discussions that explains why the patch
didn't land.  Finding these other patches without a Change-Id might be
hard, again because they may touch different files, have a different
subject, or have been posted by a different person.


At the moment using a Change-Id in the way I described would require
searching through mailing lists for the Change-Id string to find other
versions of the same patch.  However, I would expect it would only be
a matter of time before tools like patchwork are able to use Change-Id
to associate one version of a patch with the next version.  I would
also expect that allowing Change-Id to exist would allow someone to
(perhaps) create a gerrit instance that watched the kernel mailing
list and mirrored mailing list discussions in the GUI.  In other
words, once such tools exist presumably Change-Id will be much more
useful: you will eventually be able to paste a Change-Id into a tool
and get links to all relevant discussion and related posts.


The basic summary is that I'd like there to be some way to track a
logical patch over its lifetime.  I don't believe there is a reliable
(non-heuristic) way to do this today and I think Change-Id provides a
nice solution.  While we could come up with a new and different
solution (because Change-Id was not invented here), it feels like
adopting Change-Id is convenient and easy and provides a true benefit.
Change-Id works super well with the decentralized/email workflow for
patches and can be phased in over time (or it can stay optional
forever).


Thank you for reading

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
