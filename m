Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAEE9F392
	for <lists@lfdr.de>; Tue, 27 Aug 2019 21:54:08 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0F5631BF3;
	Tue, 27 Aug 2019 19:53:57 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99B281BE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 19:53:54 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21EE4710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 19:53:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6D47E20674;
	Tue, 27 Aug 2019 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566935634;
	bh=2qbvgaAmxJSoLy8rBPiVLupZXx3ZLmVQxSqTMQeiXKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f5wkNpRIkIT+7dtjMx7m5n3mm2rV6S0DWEiAh2fvZr0Qt9ReFTtIkLBbRNxBmMdxI
	Z1lVoWmLgrODQkqjtZXFXg+gpdJvf8UTNvhgtD5dmENfpDG9TWli3W//fQpPxRGazH
	tybfpXzM6seHbLFXzOqJPLMFSJ+YkNPeT2cmJwhQ=
Date: Tue, 27 Aug 2019 21:53:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Message-ID: <20190827195351.GA30710@kroah.com>
References: <CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
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

On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > >        Link: https://lkml.kernel.org/$Message-ID
> > >
> > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > tag and I know you got some of them already.
> >
> > I'm using:
> >             Link: https://lore.kernel.org/r/$message-id
> >
> > should we standardize on the lkml one instead as it's shorter?  The lore
> > one handles any message id that is on any mailing list it handles, is
> > the lkml one the same?
> 
> It's the exact same system and the /r/ is always required. I prefer
> lore.kernel.org because it doesn't imply that the message is going to
> be on the LKML (i.e. it can be on a list that isn't even hosted on
> vger.kernel.org).
> 
> So, my recommendation is Link: https://lore.kernel.org/r/$message-id

Great, will stick with that one, thanks.

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
