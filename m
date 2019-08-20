Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD6295C30
	for <lists@lfdr.de>; Tue, 20 Aug 2019 12:22:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A2BA6D09;
	Tue, 20 Aug 2019 10:22:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79A4DCCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Aug 2019 10:22:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B26012E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Aug 2019 10:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id E6DEE8EE302; 
	Tue, 20 Aug 2019 03:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1566296545;
	bh=OFhptEYQOcFy+NWC+otSab8cXOTJz4x9Rhi9jcdOJL4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=OmCZtQv4Yc79BFOpEEKHhpmczMkH3TSb0sxONWNP8qGUa7IoblPYRvFr33Ha552Fj
	zOZpVRqHVlLFg4e7nuGGla86HBXXD2Hq7NBwfvZgH/6oKaUR6t/viYhUvnEEEk/4XW
	RkwilEgjuL84KTFRrSn5Xt05d6MoOXUoawm4o+P8=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 5ooNc68WXAFH; Tue, 20 Aug 2019 03:22:25 -0700 (PDT)
Received: from jarvis (host86-134-253-248.range86-134.btcentralplus.com
	[86.134.253.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 4A9A98EE0E3;
	Tue, 20 Aug 2019 03:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1566296545;
	bh=OFhptEYQOcFy+NWC+otSab8cXOTJz4x9Rhi9jcdOJL4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=OmCZtQv4Yc79BFOpEEKHhpmczMkH3TSb0sxONWNP8qGUa7IoblPYRvFr33Ha552Fj
	zOZpVRqHVlLFg4e7nuGGla86HBXXD2Hq7NBwfvZgH/6oKaUR6t/viYhUvnEEEk/4XW
	RkwilEgjuL84KTFRrSn5Xt05d6MoOXUoawm4o+P8=
Message-ID: <1566296541.2657.10.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jan Kara <jack@suse.cz>
Date: Tue, 20 Aug 2019 11:22:21 +0100
In-Reply-To: <alpine.DEB.2.21.1908191010440.2601@hadrien>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
	<alpine.DEB.2.21.1908190905110.3257@hadrien>
	<20190819080440.GA2491@quack2.suse.cz>
	<alpine.DEB.2.21.1908191010440.2601@hadrien>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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

On Mon, 2019-08-19 at 10:13 +0200, Julia Lawall wrote:
> 
> On Mon, 19 Aug 2019, Jan Kara wrote:
> 
> > On Mon 19-08-19 09:06:26, Julia Lawall wrote:
> > > On Mon, 19 Aug 2019, Jan Kara wrote:
> > > 
> > > > On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> > > > > On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> > > > > 
> > > > > > I'd suggest changing the text to read:
> > > > > > 
> > > > > >  	 - Acked-by: indicates an agreement by the
> > > > > > maintainer or
> > > > > > 	   reviewer of the the relevant code that the patch is
> > > > > > 	   appropriate for inclusion into the kernel.
> > > > > 
> > > > > This would be a positive step forward.  I would be in favor
> > > > > of this.
> > > > > 
> > > > > It would also be good to state here, if it isn't stated
> > > > > already, that "reviewer" means "someone who is listed in an
> > > > > R: line in MAINTAINERS".
> > > > 
> > > > I don't think that 'R:' entry in MAINTAINERS should be really
> > > > asked for. IMO that is unnecessary bureaucracy and discourages
> > > > review from people that are not core developers. Sure the
> > > > quality of the review may be lower than from core developer but
> > > > still there's some value in it. So I'd really leave it at the
> > > > discretion of the maintainer whether he accepts or just ignores
> > > > Reviewed-by tag.
> > > 
> > > Is there some other tag for "I'm interested in and reasonably
> > > knowledgeable about this change and it looks good to me"?
> > > 
> > > Note that there is a double "the" in the above text.
> > 
> > No. But is there a need for such tag? I, as a maintainer, would
> > like to see in the email where someone offers the Reviewed-by tag,
> > how confident the reviewer feels (otherwise I just make my educated
> > guess). But I don't really see a point in recording this in the
> > changelog. After all the tag in the changelog serves only two
> > purposes I know about - to give credit to the reviewer and to have
> > another person to blame (CC on bug reports ;). So I don't see any
> > need in recording quality of review in the changelog for long-term
> > recording of the fact...
> 
> So is there no tag at all for what I describe?  Concretely,
> Coccinelle reports bugs via 0-day, sometimes people send me the
> patch, and sometimes I would like to say "yes, I looked at it and it
> seems to be fixing the bug that was reported", without implying that
> I have extensively tested the code.  So is there a concise
> unambiguous way to do that?

Yes, that's "Reviewed-by:".  If you actually tested it, you'd add a
"Tested-by:" as well.  Sometimes people do

Reviewed-by: me@me.com #the bits I understand or care about

But usually it's up to the maintainer of the file to decide whether the
review is meaningful enough to be accepted.  Whether the Reviewed-by:
is accepted by the maintainer is completely their decision and really
has nothing to do with R: tags in the Maintainers file.

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
