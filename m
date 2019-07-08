Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8879B6217A
	for <lists@lfdr.de>; Mon,  8 Jul 2019 17:16:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1872927DB;
	Mon,  8 Jul 2019 15:16:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 714F921BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:10:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5CB187F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:10:47 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id B122A22033;
	Mon,  8 Jul 2019 11:10:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute6.internal (MEProxy); Mon, 08 Jul 2019 11:10:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=7fDmiFD6p1b+HgJXrUgpNYnu40x
	uvRCyGu3GHqxXh+Y=; b=ip2sqXnenKCZ7lpX3HRmhwB8+OMpZB+YHP0AMyNYUyf
	lInX0rOpfRnUP6XumbnEoo12u7TsH2Ia+q5Cc/PI2KZz1CukTbDSeWJi0xtkvQL9
	TAKUXaFOBnhC+/pSXi3cmMaaQfqN6iHb3ixlt7DCh1zr7x+Xmh0OmqVmebJIhFtH
	GFLNVj/oCjAQV1TGqcTq1tIq7InJc5/XGkkpIBTpj8IzHSFp55jwtd4qryYSFOXr
	BoWT2g5Ht309wTEUBNV3ffaT3C+lMe3FU0dnBueD8xVSST5hewjXc+RT4bULJWR9
	weKuq3AAxQcylsBf2jZypNmL443fOSJcm11WVFMKffA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7fDmiF
	D6p1b+HgJXrUgpNYnu40xuvRCyGu3GHqxXh+Y=; b=JEwq84FgZArQtcazXnlfHz
	+EPh4ht4g9msej2FSMPokz3jJbQ4UyvCej1WnB8BwfdYM7mGaCxP0+6bLV02n4Ij
	H+xdJfDwTbNwXGclmBfVDXuCBMVRZ6Cl+RLH1aap4vfi/KlSetODWhVyXXmTnkrM
	BmG2pY1dBByQohkzKby+Due7vzwIzpdq5hb43sh9NsbBikh+9xfh9gZR/ZOPrQoy
	n04Svi+hy+SGkmWkY0jYu+hyrVah1ZwL+jJuOHMn8gjoqWFWiMjBTtwnYRraopAm
	C99Yir+LBe+749dFCkfMfVWo5VUgUcl61dXeKf6d72ckuDYZfGs7MakaM9JBhWRQ
	==
X-ME-Sender: <xms:9FwjXSib9AaeIL3CKVgBuYJoobLiVltPkiB643JtaYVxlBkfYor9VQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgedtgdekkecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
	mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
	ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:9FwjXTKRJ7WjJny7BFxbp1HfTMnB_Yt8ugRzpRSWZ9mNQoANIcRG6w>
	<xmx:9FwjXRjTmGv5dds7TpUlyfax98MKKPPe_p1WPTmdsfAGPRsogStizg>
	<xmx:9FwjXR0RoDS0YJ-r3zT4ruMgwCtOXUOQoSu-PzBNfVBwkwAp_DEMfg>
	<xmx:9FwjXQ_IT7HD9XMAsoymuwqb-JvjHfoKUMCFwFn7vkVLp9UpwXAQQw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8E2678005B;
	Mon,  8 Jul 2019 11:10:43 -0400 (EDT)
Date: Mon, 8 Jul 2019 17:10:40 +0200
From: Greg KH <greg@kroah.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190708151040.GB1548@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h7e8swq87.wl-tiwai@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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

On Mon, Jul 08, 2019 at 04:33:28PM +0200, Takashi Iwai wrote:
> On Mon, 08 Jul 2019 16:05:44 +0200,
> Guenter Roeck wrote:
> > 
> > On 7/8/19 5:37 AM, Mark Brown wrote:
> > > On Mon, Jul 08, 2019 at 07:02:08AM -0400, Sasha Levin wrote:
> > >> On Sat, Jul 06, 2019 at 01:32:14AM +0100, Mark Brown wrote:
> > >
> > >>> I'm not saying leave it alone, it's more a question of how
> > >>> aggressive we are about picking up things we think might be
> > >>> relevant fixes but haven't had some sort of domain specific
> > >>> analysis of.  Testing is a good way to mitigate the potential
> > >>> risks here.
> > >
> > >> I agree, and for various subsystems and drivers where the maintainers
> > >> volunteer their domain specific expertise to send backports to stable, I
> > >> have "blacklisted" it from AUTOSEL since indeed it's a much better
> > >> option.
> > >
> > > Hrm, it's definitely getting a bunch of stuff for my subsystems
> > > where I do tag things for stable...
> > >
> > >>>> This came up in the last MS, and the agreement there was that we expect
> > >>>> stable kernel users to test their workloads before throwing it into
> > >>>> production.
> > >
> > >>> That's kind of the problem - if people are doing testing and end
> > >>> up finding problems coming back in the stable kernel that's the
> > >>> sort of thing that encourages them to not just take stable en
> > >>> masse as we say they should.  Part of the deal with stable is
> > >>> that it is conservative, people can trust it to be a low risk
> > >>> update.  That's not happening now as far as I'm aware but it does
> > >>> worry me that it might happen.
> > >
> > >> Right, and the rate at which AUTOSEL commits are reverted is lower than
> > >> commits that are actually tagged for stable. If AUTOSEL commits on their
> > >> own were being reverted left and right I'd agree we need to tone it
> > >> down, but I don't see it happening now.
> > >
> > > I'm not sure how many people will actually report problems they
> > > experience upstream rather than just fixing things locally and
> > > just moving on.  The more code is the more likely it is that one
> > > of the users will report things.
> > >
> > 
> > I for my part will most definitely report any such problems, since each
> > regression in stable releases is used as argument against merging
> > stable releases (even if the regression rate is negligible), and I am
> > very interested in getting that regression rate as close to zero as
> > possible. Reporting each and every regression is an essential part
> > of that.
> 
> BTW, regarding regression: currently we have no central regression
> tracking.  This is another big missing piece, and a thing to be
> discussed in KS, IMO.

Well, I think the conversation will go just like it has in the past for
this issue:
	"We need to have someone track regressions!"
	"X said they would do it but they need to be paid, any company
	willing to sponsor this?"
	{crickets}

We know we need this, we have at least one talented and capable person
to do the work, but no company is willing to step up and fund it :(

It's like where we were 5 years ago with testing, everyone knew there
was a problem, but no one was willing to do anything about it.  That
time I convinced some LF member companies to start doing work within
their companies toward this, but that really doesn't solve this type of
problem as being "distributed" isn't the issue here...

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
