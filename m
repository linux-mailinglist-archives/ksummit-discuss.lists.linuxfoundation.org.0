Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FE991EA0
	for <lists@lfdr.de>; Mon, 19 Aug 2019 10:13:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 29444C7C;
	Mon, 19 Aug 2019 08:13:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B027BC64
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 08:13:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B61BC89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 08:13:37 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.64,403,1559512800"; d="scan'208";a="316627001"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
	by mail3-relais-sop.national.inria.fr with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Aug 2019 10:13:35 +0200
Date: Mon, 19 Aug 2019 10:13:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20190819080440.GA2491@quack2.suse.cz>
Message-ID: <alpine.DEB.2.21.1908191010440.2601@hadrien>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
	<alpine.DEB.2.21.1908190905110.3257@hadrien>
	<20190819080440.GA2491@quack2.suse.cz>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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



On Mon, 19 Aug 2019, Jan Kara wrote:

> On Mon 19-08-19 09:06:26, Julia Lawall wrote:
> > On Mon, 19 Aug 2019, Jan Kara wrote:
> >
> > > On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> > > > On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> > > >
> > > > > I'd suggest changing the text to read:
> > > > >
> > > > >  	 - Acked-by: indicates an agreement by the maintainer or
> > > > > 	   reviewer of the the relevant code that the patch is
> > > > > 	   appropriate for inclusion into the kernel.
> > > >
> > > > This would be a positive step forward.  I would be in favor of this.
> > > >
> > > > It would also be good to state here, if it isn't stated already, that
> > > > "reviewer" means "someone who is listed in an R: line in MAINTAINERS".
> > >
> > > I don't think that 'R:' entry in MAINTAINERS should be really asked for.
> > > IMO that is unnecessary bureaucracy and discourages review from people
> > > that are not core developers. Sure the quality of the review may be lower
> > > than from core developer but still there's some value in it. So I'd really
> > > leave it at the discretion of the maintainer whether he accepts or just
> > > ignores Reviewed-by tag.
> >
> > Is there some other tag for "I'm interested in and reasonably
> > knowledgeable about this change and it looks good to me"?
> >
> > Note that there is a double "the" in the above text.
>
> No. But is there a need for such tag? I, as a maintainer, would like to see
> in the email where someone offers the Reviewed-by tag, how confident the
> reviewer feels (otherwise I just make my educated guess). But I don't
> really see a point in recording this in the changelog. After all the tag in
> the changelog serves only two purposes I know about - to give credit to the
> reviewer and to have another person to blame (CC on bug reports ;). So I
> don't see any need in recording quality of review in the changelog for
> long-term recording of the fact...

So is there no tag at all for what I describe?  Concretely, Coccinelle
reports bugs via 0-day, sometimes people send me the patch, and sometimes
I would like to say "yes, I looked at it and it seems to be fixing the bug
that was reported", without implying that I have extensively tested the
code.  So is there a concise unambiguous way to do that?

julia


>
> 								Honza
> --
> Jan Kara <jack@suse.com>
> SUSE Labs, CR
>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
