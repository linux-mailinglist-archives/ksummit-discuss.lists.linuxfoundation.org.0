Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA849A43E
	for <lists@lfdr.de>; Fri, 23 Aug 2019 02:17:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 38D60ED0;
	Fri, 23 Aug 2019 00:17:30 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84393EB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:17:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5B237FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:17:26 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id m24so7185819ljg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux-foundation.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZQoPI1Nrt1p6LNB3D4s6dM+xY9jNVUxy0ZM7H5N50jE=;
	b=P7ogoKcAS8w71GGQeq3fc2Q6cVuDsjtLHMbSi/RISTsdg+OtKX9ZS+q/B4o/pQPOk/
	Z+Fb94gNT3LLk4vMcKYnIazFG2RxQLsPTUuNZKUvoU//r32DS3yeSBwOLP+TWL8rECmO
	KYwt9Vc1ABUbZtIyXSnOH/2rUTgw02PJxmBbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZQoPI1Nrt1p6LNB3D4s6dM+xY9jNVUxy0ZM7H5N50jE=;
	b=KC26LhiUQQC7h2/3zJxe+1EQ2WsdqbxghoQyVFxH+LubV8J3vikvF92kDe9N0XyQkQ
	y51lmYvu8yCKGzDE3kWytgWsoEZB9JzWiQab58kFN8GTRTOSIiVkrCifVcpWz31FP0ae
	FWStcCOrUzd88RLvp25YZnNG8iNobSUYFk+U2yOOtbqr0unQ2C0/+e1WndL36QlDLmOF
	Wo+bP9N/6Nt1SVXoemRBmyR/IG2N/sapUHYrZdYH+a6nh6dZ4LP/l3VQB1OPN4Y3fgXt
	ikvrSmecZ58V0ui/LCrhz5hQFJ/KCckTJsrsbdJd334HtHdWSw5V5IZ00M0ysXUvYTJ1
	/3fg==
X-Gm-Message-State: APjAAAWhKcfs3HrK8lwuDmWZuzMr6nBypVvMjbiWy3WghZ+PmDSpg15T
	2q3nYNd/ZqyoY9h24eG3vMxOvZPJ3xwO/g==
X-Google-Smtp-Source: APXvYqzG14wYABZESh+qSHnC0Ydh4wK/15GN4T6u2ksRErJXgi8FeOMLxCvdvyTcrbbvbpuY7HdYuA==
X-Received: by 2002:a2e:85d4:: with SMTP id h20mr1148079ljj.134.1566519444542; 
	Thu, 22 Aug 2019 17:17:24 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
	[209.85.208.181]) by smtp.gmail.com with ESMTPSA id
	n187sm262445lfa.30.2019.08.22.17.17.21
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 17:17:22 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id e27so7191183ljb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:17:21 -0700 (PDT)
X-Received: by 2002:a2e:9702:: with SMTP id r2mr1087233lji.84.1566519441452;
	Thu, 22 Aug 2019 17:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Aug 2019 17:17:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
Message-ID: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
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

On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
>
> The Linux kernel has always viewed these Change-Id tags as obnoxious
> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> patch when posting to the mailing list is told to please re-post their
> patch without the Change-Id.  In this email, I will attempt to argue
> that the Linux kernel ought to relax this restriction and allow
> (possibly even encourage) Change-Ids.

No.

Not without some ground rules.

> To begin with, let me make sure we're on the same page about what
> Change-Ids are.  As I understand it:
>
> * A change ID is much alike a UUID.  It is locally generated on a
> developer's computer and is (in theory) unique across the universe.

Completely irrelevant.

The point of an UUID is not just that it's unique, but THAT YOU CAN
LOOK SOMETHING UP USING IT!

A "change ID" that I can't use to look anything up with is completely
pointless and should be removed from kernel history.

But if you have something unique that is actually useful for looking
things up, then by all means. But it needs to be useful for
_everybody_.

> * When a developer keeps the same Change-Id across two patches they
> are making the assertion that the two patches are either the same or
> should be treated as two versions of the same logical change.

.. and we have better ways to do that.

For example, we are actively encouraging things like message ID's
(which are _also_ a form of locally generated UUID, they just are more
than the silly purely numerical one).

That gives you the origin of something, but it also gives you the
development history and context.

But note that how when it comes to message ID's we encourage them in a
form that actually also helps look that information up, ie the
preferred form isn't just the message ID (although that exists), it's
a link like

    Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org

instead of

   Message-ID: 20190723065733.4899-5-leon@kernel.org

even though technically they have just as much actual information in theory.

Do you see people complaining about that kind of UUID? No.  Because it
gives useful information to the project, and when something happens,
people can look things up and _use_ that kind of UUID.

> At the moment, Change-Ids are highly associated in people's minds with
> gerrit and many upstream developers dislike gerrit.

No. That's not it at all. It's not "dislike gerrit".

It's "dislike pointless garbage".

If the gerrit database is public and searchable using the uuid, then
that would make the uuid useful to outsiders. And instead of just
putting a UUID (which is hard to look up unless you know where it came
from), make it be that "Link:" that gives not just the UUID, but also
gives you the metadata for that UUID to be looked up.

But so far, in every single case the uuid's I've ever seen have been
pointless garbage, that aren't useful in general to public open source
developers, and as such shouldn't be in the git tree.

See the difference?

So if you guys make the gerrit database actually public, and then
start adding "Link: ..." tags so that we can see what they point to, I
think people will be more than supportive of it.

But if it's some stupid and pointless UUID that is useful to nobody
outside of google (or special magical groups of people associated with
it), then I will personally continue to be very much against it.

If it's some internal database for your exclusive club, then you can
just have your own internal database to look that UUID up using a
commit ID (or a patch ID that is generated from the patch), and you
don't need to pollute the public with non-public noise.

Do people do that "pointless pullution" thing? Yes, I've seen various
companies add their garbage to the commit logs. Sometimes it makes it
through. But if I see an email with random noise in it, I will
personally remove that random useless noise.

This is part of what "open source" is all about. There aren't supposed
to be special people with access to inside information that get
preferential treatment. If you have your private stuff, then fine, but
keep it private. It has no business being in the public tree.

            Linus
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
