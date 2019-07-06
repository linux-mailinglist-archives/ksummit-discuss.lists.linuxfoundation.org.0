Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B8760EFD
	for <lists@lfdr.de>; Sat,  6 Jul 2019 06:46:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 618C4177D;
	Sat,  6 Jul 2019 04:46:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D5D8169B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 04:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1D1670D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 04:42:47 +0000 (UTC)
Received: from callcc.thunk.org ([66.31.38.53]) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x664gdpl023660
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 6 Jul 2019 00:42:40 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 0AEA642002E; Sat,  6 Jul 2019 00:42:39 -0400 (EDT)
Date: Sat, 6 Jul 2019 00:42:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190706044238.GE11665@mit.edu>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

On Fri, Jul 05, 2019 at 11:26:22AM +0200, Linus Walleij wrote:
> I would have to dig them all out of lore one by one to get
> the picture (and I guess I will). The story of CMA is a really
> interesting one, and now it is part of the MM core.
> Documentation/cma is pretty empty.
> 
> Asking Michal, Marek and Joonsoo who all worked hard on
> this to summarize the development and make the design
> and evolution of this feature understandable would be a
> pretty big development task in itself so I'm not gonna.

I assume you want something more detailed than this article on LWN?

	https://lwn.net/Articles/486301/

I vaguely remember there was a presentation at Plumbers, but of course
that was a long time ago, before we were regularly recording
presentations at LPC.

It may be that best sort of thing will be conference presentations
and/or refereed papers.  For example, there will be a 2019 Usenix ATC
about EROFS.

	https://www.usenix.org/conference/atc19/presentation/gao

Of course, asking developers to write refereed papers for submission
to Usenix, FAST, etc., or even giving a presentation at Plumbers is
also an awful lot to ask.  :-)

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
