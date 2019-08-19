Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E133D94997
	for <lists@lfdr.de>; Mon, 19 Aug 2019 18:16:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D5883CA5;
	Mon, 19 Aug 2019 16:16:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 482A18BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 16:16:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5DD3967F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 16:16:34 +0000 (UTC)
Received: from wsip-184-188-36-2.sd.sd.cox.net ([184.188.36.2]
	helo=wittgenstein) by youngberry.canonical.com with esmtpsa
	(TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.76)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1hzkKb-0007s9-3t; Mon, 19 Aug 2019 16:16:29 +0000
Date: Mon, 19 Aug 2019 18:16:26 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190819161624.yeups3ugpyb6d4v2@wittgenstein>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
	<alpine.DEB.2.21.1908191024430.1923@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908191024430.1923@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

On Mon, Aug 19, 2019 at 10:26:01AM +0200, Thomas Gleixner wrote:
> On Mon, 19 Aug 2019, Jan Kara wrote:
> > On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> > > On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> > > 
> > > > I'd suggest changing the text to read:
> > > > 
> > > >  	 - Acked-by: indicates an agreement by the maintainer or
> > > > 	   reviewer of the the relevant code that the patch is
> > > > 	   appropriate for inclusion into the kernel.
> > > 
> > > This would be a positive step forward.  I would be in favor of this. 
> > > 
> > > It would also be good to state here, if it isn't stated already, that 
> > > "reviewer" means "someone who is listed in an R: line in MAINTAINERS".
> > 
> > I don't think that 'R:' entry in MAINTAINERS should be really asked for.
> > IMO that is unnecessary bureaucracy and discourages review from people
> > that are not core developers. Sure the quality of the review may be lower
> > than from core developer but still there's some value in it. So I'd really
> > leave it at the discretion of the maintainer whether he accepts or just
> > ignores Reviewed-by tag.
> 
> The R: in MAINTAINERS is there to make sure these people get actually CC'ed
> on patches against that particular subsystem. It does not mean that others
> are not allowed or encouraged to review patches in that area.

If I may, I agree that only accepting acks/reviews by people in R: is
too strict. Imho, it sends the wrong message and probably discourages
participation in kernel development. It's also a high bar currently to
get people even listed as R: In my experience people are reluctant to
suggest they be added as R: in that file because it might be conceived
as being overly assertive of ones abilities. One easy fix could be to
encourage maintainers of a given subsystem to be more open to add people
they trust as R:

Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
