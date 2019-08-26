Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F629D896
	for <lists@lfdr.de>; Mon, 26 Aug 2019 23:36:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BD27617E5;
	Mon, 26 Aug 2019 21:35:50 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29E59172C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 21:35:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C4CF8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 21:35:47 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id b10so32047797ioj.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 14:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=o7VSViz+OdYOtpMNDagweEYEJdFUvgxfDZHlHo3rV6g=;
	b=YsKaRb5BKJCTowL+ZyxhBBx+BIrv8p4o014XLK+Kex2Dh+aTzYVptbqsNRUQk29Wuq
	778FlpV5gPNJBNISSScGH74ROLdbgr/zUDImlFVm8hRLII/R1csXtM4vaKEOaoM77jy+
	iz7j3gMklJD8HCT5UD/8eKQzmtFOJHQtrDJa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=o7VSViz+OdYOtpMNDagweEYEJdFUvgxfDZHlHo3rV6g=;
	b=KrCyZHy2TLEgq5XkNktw0YPdlM801OU0vwxQCNRllXVcTqRJdEbi2GC3hja1D7/zAd
	MJvIqn3k4Slrx8cCATIIUDY4/tJ9YDXfALoXldZgf+5FyGnHKOant2cA/qNpXflt3DVp
	ahQid992Nt2aFfw9YhEw0FGZr+i4t0v3+gm7Tt0+vltsDCVEnyOCTOZkXh/gzFhhLboK
	OXHdMKhmOHMaZIgZtRpTH0pcYsef88P8iMT8dCWal11jgIccoMpPkJyNlUSHD5D5wizA
	Ud90SMqk5Gswmg8OwUFiLEGfwPgr/WG7tO4AAb0m913o5iRL8yDpciNs1VV3R/KBS9v0
	ij3w==
X-Gm-Message-State: APjAAAXGbKDap+DHVNX6sD0ayShcNVkEAwy7iqB3vifBvRmhQWeXA3rB
	QLBrVryjlhblwM4tdmQIrnIWbywe0IU=
X-Google-Smtp-Source: APXvYqwPwOxLWznDBi6ldCFKmRA8P2pprudIGMJzjgY8wrOpxXSZ/awGcm+SevtF1SAuhvzUen+SYQ==
X-Received: by 2002:a02:a409:: with SMTP id c9mr3587456jal.74.1566855346359;
	Mon, 26 Aug 2019 14:35:46 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
	[209.85.166.44]) by smtp.gmail.com with ESMTPSA id
	q12sm10331291ioh.8.2019.08.26.14.35.43
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 14:35:43 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id p12so41146817iog.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 14:35:43 -0700 (PDT)
X-Received: by 2002:a5e:db0a:: with SMTP id q10mr25839330iop.58.1566855343157; 
	Mon, 26 Aug 2019 14:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<CAD=FV=VJt4+XRj59h6tmma5LfU52E_6QOSQVjh3T3M+1V=eMsQ@mail.gmail.com>
	<CAJWu+op476JWYqbT_dLaW7THqiJUvHPbOjeC=PUT5rzkGv4O1A@mail.gmail.com>
In-Reply-To: <CAJWu+op476JWYqbT_dLaW7THqiJUvHPbOjeC=PUT5rzkGv4O1A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 26 Aug 2019 14:35:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
Message-ID: <CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
To: Joel Fernandes <joelaf@google.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi,

On Mon, Aug 26, 2019 at 10:31 AM Joel Fernandes <joelaf@google.com> wrote:
>
> On Mon, Aug 26, 2019 at 1:13 PM Doug Anderson <dianders@chromium.org> wrote:
> > On Sat, Aug 24, 2019 at 11:11 AM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > On Sat, Aug 24, 2019 at 9:35 AM Doug Anderson <dianders@chromium.org> wrote:
> > > >
> > > > I have no gerrit server involved when I submit patches to the list.  I do:
> > > >
> > > > 1. Write patch on my local machine.
> > > > 2. Post v1 to mailing list.
> > > > 3. Make changes.
> > > > 4. Post v2 to mailing list.
> > > > 5. Make changes.
> > > > 5. Post v3 to mailing list.
> > > >
> > > > I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT LINK!
> > >
> > > First off, there *is* a link - just use the mailing list email link
> > > (preferably for the cover letter - so that a whole series has _one_
> > > ID, not separate ID's for every patch) just like everybody else does,
> > > which also means that you get the history of actual other developers
> > > replying to it (including after it has been committed).
> > >
> > > The first time it gets magically and reliably created for you without
> > > you having to do a single thing. The second time, you just look it up.
> >
> > The key problem here is that it requires the committer to look
> > something up and perform a manual step.  IMO this means that the
> > adoption rate will be near to zero.  The reason that Change-Id
> > _doesn't_ require a manual step is that it's in your local commit
> > message and thus automatically stays there.  Thus inaction (leaving
> > the Change-Id alone as you spin the patch) produces the ideal
> > behavior.
>
> Sure, but..
>
> > >
> > > So stop arguing for UUID's. They are fundamentally a bad idea.
> > >
> > > The *only* actual valid reason I have ever seen for UUID's (and yes,
> > > this is not the first time they've been brought up, which is why I
> > > hate them with a passion) is to use it as a magic link inside some
> > > vendors private database when that vendor doesn't want to expose any
> > > actual real information.
> >
> > What I see here is:
> >
> > 1. A valid reason to have a UUID is to help a machine that's
> > processing data.  Specifically UUIDs are well-formed and easy for a
> > machine to understand (unlike a link which could point to anything).
>
> I don't think a "link could point to anything" is a good argument
> against links. A link to lore.kernel.org/r/<message-id> should point
> to only one thing.

If everyone uses exactly "lore.kernel.org/r/<message-id>" then, yes,
that would be easy to parse.  ...but now how do you refer to this?
Let's say we have:

patch v1 0/2 - MSG-ID-A
patch v1 1/2 - MSG-ID-B
patch v1 2/2 - MSG-ID-C

patch v2 0/2 - MSG-ID-D
patch v2 1/2 - MSG-ID-E
patch v2 2/2 - MSG-ID-F

Now we want to post v3?  What exact tag do I add to my v3 messages to
point back to v2?  Should all patches in v3 contain the line:

Link: https://lore.kernel.org/r/MSG-ID-D

...and people just figure that the Link line is always automatically a
link to the cover letter of the v2?  ...or we have some new tag in
each patch?

Link-prev-version: https://lore.kernel.org/r/MSG-ID-E

What syntax are you suggesting here?  Do we point to the cover?  The
previous version?  All previous versions?  Will everyone agree on it?


> > 2. In the past you don't like UUIDs because the machines making sense
> > of them are private.
> >
> > In this thread I am trying to argue that if we allow UUIDs in the
> > public email lists that anyone will be able to create a useful and
> > public database linking patch versions together.
>
> Did you read all the emails that said these can be inserted into the
> discardable part of a patch? Enforcing it on everyone in the community
> is impossible.

Sure, and I think I replied to them several times.  The basic summary is that:

* This requires extra tooling that I think nobody will adopt.  People
today already (accidentally) adopt Change-Id in the non-discardable
portion.  I think it would be easier to get everyone currently
removing Change-Id to start including it again than it will be to get
everyone to change their tools to move it to the discardable portion.

* I also said that earlier if Change-Id as part of the patch is
rejected (sounds like it will be) that I may start myself doing
exactly what you suggest.  AKA: putting it into the discardable part.
Of course I will likely get yelled at even for that.

* At the moment I can't think of any benefit of Change-Id in the
discardable part of the patch compared to encoding the Change-Id into
the message ID in a way that it could be extracted.


> > > In other words: UUID's are bad and pointless. Their only "valid" use
> > > is explicitly against the whole point of open development.
> > >
> > > Use an actual open standard instead: a web link. It can be anything.
> >
> > The "It can be anything" is the problem with links.  Computers trying
>
> I think he meant it can be any link. But what a link points to
> (lore.kernel.org/r/<message-id>) largely should not change.
>
> > NOTE: from reading all of this, one thing that I should probably be
> > able to do myself is:
> >
> > 1. Keep having Change-Id in my patches on my local computer.
> >
> > 2. Have the scripts I use to post upstream (which strips Change-Id out
> > before posting) encode the Change-Id into the Message-Id in a way that
> > it could be recovered, like:
> >
> > Message-Id: Ic3e54798e4aeaa862b2e8eebcbbcef4e51ccae19-2018-1231-235959-1
>
> Why not just put whatever-ID in the discardable part of your patch as
> others have also pointed, and move on?

1. I can guarantee that someone will yell at me for it despite it
being in the discardable part.  Without some sort of official policy
(or mailing list thread) that this is acceptable or even encouraged
then individual maintainers will not like it even in the discardable
portion.

2. I believe it requires roughly the same amount of tooling to put it
in the Message-Id compared to putting it into the discardable portion
of the patch.

3. Everyone keeps repeating that since we have Message-Id we don't
need another UUID.  Even in the discardable portion of the patch
Change-Id is just another UUID.


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
