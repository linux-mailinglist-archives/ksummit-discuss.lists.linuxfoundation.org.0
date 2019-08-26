Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3D29D4F1
	for <lists@lfdr.de>; Mon, 26 Aug 2019 19:31:24 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F41502157;
	Mon, 26 Aug 2019 17:31:13 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EAD32133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 17:31:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 54D471FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 17:31:10 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id 201so14682056qkm.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 10:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HV+cWHfQEZ1QesiNdXRapT+3g0h0uNyJ7sJXKAvtba8=;
	b=MbIMANTnOpNBYtOJvwMalAoagfDpNZZ5gaPNOR7SaZOrlqcgROZ1exRjNmCrveCNfd
	TnX47vZd5CzQPMK/YoiR38jToHVETKAIIB8ghO0wIBgMqlJTw4Cu0k7OHBaWMW478slO
	RLnvHHDY5K8KW2nnqKQt2r0JWb6ZFrdGVcg27DaL5sc/YiDx2XFh4FyqWRJxIUFw3pOI
	DN/APwK+DASBOfpIUeAvtHnOifRkrTQqrDfhofFF1ZFbcF03ReBSON/RZUdykwIfi8HB
	60U4hXLeOVPn520yqvrvuuu5pMsUC7/2jjyio0lvL1CMS8XSBHMHNwT73hDcrXM7zPER
	LbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HV+cWHfQEZ1QesiNdXRapT+3g0h0uNyJ7sJXKAvtba8=;
	b=WTTzwrZndBcUylNCLAdWlS+GPv80MvxGSUV7YA0ZtZK8GCZYAquGwNQ1eBAL6tfMqu
	gZun1gx2tHKuW8S6F+YYkRkNSh6D6s36waNfjmahSCcPoBtrI45Qn/ojnpUKPr6Tr/hW
	5sxcji/wHr4tMg9lD7Qey+mYZmh2Og0asRO/i7FcGT4l3ktNxGGHMVZGXXaYL7qgdLIA
	i0UUbx/tiZcsdJ/qEheIw2inMjq56fOARdnLAPgNxVFPjVOjpJ6nIWkTDaRzNT+o7S7i
	0CR84XCysMtilE3gcjMl+XJ8w0uFRgoPx+ySedRsSugRNYXIQgfSfXPvW1GedPoYY7WE
	SNFA==
X-Gm-Message-State: APjAAAUccHe5mZe0UT3HCamZGhj0c/X/Gqap6LCEyFliVhQjLxOscg5g
	tkeBKxIjjRI98dtfZJtARym0WISnj1VAip7hZ3Rmog==
X-Google-Smtp-Source: APXvYqxnGhrATvrtjergFIvqg8IBF0ZijeN6RfgivPrd1r8K6M0OYpIyldrfuwdIY3ZgRYbuRO3yBxRDeHjS5h0uR1I=
X-Received: by 2002:a05:620a:15f4:: with SMTP id
	p20mr16001564qkm.303.1566840668987; 
	Mon, 26 Aug 2019 10:31:08 -0700 (PDT)
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
In-Reply-To: <CAD=FV=VJt4+XRj59h6tmma5LfU52E_6QOSQVjh3T3M+1V=eMsQ@mail.gmail.com>
Date: Mon, 26 Aug 2019 13:30:57 -0400
Message-ID: <CAJWu+op476JWYqbT_dLaW7THqiJUvHPbOjeC=PUT5rzkGv4O1A@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
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
From: Joel Fernandes via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Joel Fernandes <joelaf@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Aug 26, 2019 at 1:13 PM Doug Anderson <dianders@chromium.org> wrote:
> On Sat, Aug 24, 2019 at 11:11 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Sat, Aug 24, 2019 at 9:35 AM Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > I have no gerrit server involved when I submit patches to the list.  I do:
> > >
> > > 1. Write patch on my local machine.
> > > 2. Post v1 to mailing list.
> > > 3. Make changes.
> > > 4. Post v2 to mailing list.
> > > 5. Make changes.
> > > 5. Post v3 to mailing list.
> > >
> > > I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT LINK!
> >
> > First off, there *is* a link - just use the mailing list email link
> > (preferably for the cover letter - so that a whole series has _one_
> > ID, not separate ID's for every patch) just like everybody else does,
> > which also means that you get the history of actual other developers
> > replying to it (including after it has been committed).
> >
> > The first time it gets magically and reliably created for you without
> > you having to do a single thing. The second time, you just look it up.
>
> The key problem here is that it requires the committer to look
> something up and perform a manual step.  IMO this means that the
> adoption rate will be near to zero.  The reason that Change-Id
> _doesn't_ require a manual step is that it's in your local commit
> message and thus automatically stays there.  Thus inaction (leaving
> the Change-Id alone as you spin the patch) produces the ideal
> behavior.

Sure, but..

> >
> > So stop arguing for UUID's. They are fundamentally a bad idea.
> >
> > The *only* actual valid reason I have ever seen for UUID's (and yes,
> > this is not the first time they've been brought up, which is why I
> > hate them with a passion) is to use it as a magic link inside some
> > vendors private database when that vendor doesn't want to expose any
> > actual real information.
>
> What I see here is:
>
> 1. A valid reason to have a UUID is to help a machine that's
> processing data.  Specifically UUIDs are well-formed and easy for a
> machine to understand (unlike a link which could point to anything).

I don't think a "link could point to anything" is a good argument
against links. A link to lore.kernel.org/r/<message-id> should point
to only one thing.

> 2. In the past you don't like UUIDs because the machines making sense
> of them are private.
>
> In this thread I am trying to argue that if we allow UUIDs in the
> public email lists that anyone will be able to create a useful and
> public database linking patch versions together.

Did you read all the emails that said these can be inserted into the
discardable part of a patch? Enforcing it on everyone in the community
is impossible.

> > In other words: UUID's are bad and pointless. Their only "valid" use
> > is explicitly against the whole point of open development.
> >
> > Use an actual open standard instead: a web link. It can be anything.
>
> The "It can be anything" is the problem with links.  Computers trying

I think he meant it can be any link. But what a link points to
(lore.kernel.org/r/<message-id>) largely should not change.

> NOTE: from reading all of this, one thing that I should probably be
> able to do myself is:
>
> 1. Keep having Change-Id in my patches on my local computer.
>
> 2. Have the scripts I use to post upstream (which strips Change-Id out
> before posting) encode the Change-Id into the Message-Id in a way that
> it could be recovered, like:
>
> Message-Id: Ic3e54798e4aeaa862b2e8eebcbbcef4e51ccae19-2018-1231-235959-1

Why not just put whatever-ID in the discardable part of your patch as
others have also pointed, and move on?

thanks,

 - Joel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
