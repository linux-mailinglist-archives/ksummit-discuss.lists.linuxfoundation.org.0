Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 546EF9FDE7
	for <lists@lfdr.de>; Wed, 28 Aug 2019 11:09:06 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 91885297D;
	Wed, 28 Aug 2019 09:08:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97CA626C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 09:08:41 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A20CEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 09:08:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4C4E420856;
	Wed, 28 Aug 2019 09:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566983321;
	bh=ZeuG7xll+6adANoYa/D7VDhujhJA/ywbxBk23kLi10k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hK5Hbo9bD59i1ctVjAu53CmXnMyjnBYPuez0xTloK8o+Xn2kbTZLSZkiLzd+/iBGr
	IS4jbifl+VG4olazw9nD7du+leZFfsQ+d5YyATFgWqSfFGnLYy8f04Bc3g5lGMlh4+
	JK/jjC0cLsCzLl7V+B68OpwNH8whf6a9BcVhytbc=
Date: Wed, 28 Aug 2019 11:08:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joel Fernandes <joelaf@google.com>
Message-ID: <20190828090837.GA31704@kroah.com>
References: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, Aug 27, 2019 at 05:34:47PM -0400, Joel Fernandes wrote:
> On Tue, Aug 27, 2019 at 3:53 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> > > On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > > >        Link: https://lkml.kernel.org/$Message-ID
> > > > >
> > > > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > > > tag and I know you got some of them already.
> > > >
> > > > I'm using:
> > > >             Link: https://lore.kernel.org/r/$message-id
> > > >
> > > > should we standardize on the lkml one instead as it's shorter?  The lore
> > > > one handles any message id that is on any mailing list it handles, is
> > > > the lkml one the same?
> > >
> > > It's the exact same system and the /r/ is always required. I prefer
> > > lore.kernel.org because it doesn't imply that the message is going to
> > > be on the LKML (i.e. it can be on a list that isn't even hosted on
> > > vger.kernel.org).
> > >
> > > So, my recommendation is Link: https://lore.kernel.org/r/$message-id
> >
> > Great, will stick with that one, thanks.
> 
> I am thinking of how to make this automagic and useful for me. My plan
> is (and ymmv):
> 
> When I write a patch, have a git hook generate  "Message-Id" in my
> patch changelog itself when it is written using Greg/Andrew's
> make_message_id. This Message-Id is not the final message-id and is
> just for reference purposes for later processing. Then when sending
> it, after git format-patch I will do a few things:
>   (a) Consult the archive to check the highest value of N for which
> Message-Id-<N> does not exist
>   (b) Add Message-Id: Message-Id-<N> to the patch header so git
> send-email uses this as the Message-Id-<N>
>   (c) Add this Message-Id-<N> as a Link: to the changelog;  Possibly
> removing Message-Id<N-1> link.
>   (d) Remove the original "Message-Id" without the -<N> from the
> changelog since it has no purpose.
>   (e) Send the patch

Wow, what an overly complex thing for something that should be trivial
to do...

How about this, when sending a v2, you have it be in response to the v1
patch?  Same for v3, have it be in response for the v2 one.  And so on.

Then, when the "final" patch is added, the message id of that will be
committed to the tree with the git hook that has been posted here, and
then, if someone _REALLY_ wants to go look up past history of versions,
they can see it all linked together in a nice pretty tree on
lore.kernel.org or elsewhere.

And really, this whole discussion has been for the VERY RARE case of
when someone wants to do some code spelunking and try to figure out
older versions of a patch history before it was committed and they don't
feel like searching for the author's name instead.  The HUGE majority of
kernel developers never actually care about this as they don't have to
do it.

ugh,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
