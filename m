Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6640991D66
	for <lists@lfdr.de>; Mon, 19 Aug 2019 08:57:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 42662AF5;
	Mon, 19 Aug 2019 06:57:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BED8A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 06:57:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCA2F8A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 06:57:12 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id EAC81AEAE;
	Mon, 19 Aug 2019 06:57:10 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 6AE221E155E; Mon, 19 Aug 2019 08:57:10 +0200 (CEST)
Date: Mon, 19 Aug 2019 08:57:10 +0200
From: Jan Kara <jack@suse.cz>
To: Paul Walmsley <paul@pwsan.com>
Message-ID: <20190819065710.GC20455@quack2.suse.cz>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
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

On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> 
> > I'd suggest changing the text to read:
> > 
> >  	 - Acked-by: indicates an agreement by the maintainer or
> > 	   reviewer of the the relevant code that the patch is
> > 	   appropriate for inclusion into the kernel.
> 
> This would be a positive step forward.  I would be in favor of this. 
> 
> It would also be good to state here, if it isn't stated already, that 
> "reviewer" means "someone who is listed in an R: line in MAINTAINERS".

I don't think that 'R:' entry in MAINTAINERS should be really asked for.
IMO that is unnecessary bureaucracy and discourages review from people
that are not core developers. Sure the quality of the review may be lower
than from core developer but still there's some value in it. So I'd really
leave it at the discretion of the maintainer whether he accepts or just
ignores Reviewed-by tag.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
