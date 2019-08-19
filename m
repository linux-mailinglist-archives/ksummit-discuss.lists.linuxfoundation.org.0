Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4491E8E
	for <lists@lfdr.de>; Mon, 19 Aug 2019 10:04:58 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50C29C5C;
	Mon, 19 Aug 2019 08:04:45 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCCE8B1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 08:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0CBCA67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 08:04:43 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 598AAB087;
	Mon, 19 Aug 2019 08:04:41 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 0E7721E155E; Mon, 19 Aug 2019 10:04:40 +0200 (CEST)
Date: Mon, 19 Aug 2019 10:04:40 +0200
From: Jan Kara <jack@suse.cz>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20190819080440.GA2491@quack2.suse.cz>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
	<alpine.DEB.2.21.1908190905110.3257@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908190905110.3257@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
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

On Mon 19-08-19 09:06:26, Julia Lawall wrote:
> On Mon, 19 Aug 2019, Jan Kara wrote:
> 
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
> Is there some other tag for "I'm interested in and reasonably
> knowledgeable about this change and it looks good to me"?
> 
> Note that there is a double "the" in the above text.

No. But is there a need for such tag? I, as a maintainer, would like to see
in the email where someone offers the Reviewed-by tag, how confident the
reviewer feels (otherwise I just make my educated guess). But I don't
really see a point in recording this in the changelog. After all the tag in
the changelog serves only two purposes I know about - to give credit to the
reviewer and to have another person to blame (CC on bug reports ;). So I
don't see any need in recording quality of review in the changelog for
long-term recording of the fact...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
