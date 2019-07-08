Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AE23D61EA3
	for <lists@lfdr.de>; Mon,  8 Jul 2019 14:42:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5BE87257F;
	Mon,  8 Jul 2019 12:42:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA95B2565
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 12:34:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2626887C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 12:34:25 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 384B321B6A;
	Mon,  8 Jul 2019 08:34:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Mon, 08 Jul 2019 08:34:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=MpzOH2Tddrc/teVBTJBgn2RAvAr
	jGayjbwc8QD7nfEM=; b=eaxcuYh+v39pxZ4eHxBvaasjpN/HKQh4sQoAcQwrKK9
	eFr0q3DjjdRhlnoWlanJjxnYOcNdDSQPnqFPxz53tWbvfFHXcZj6AcdS9w01Q0oc
	VpDroMLbu9V9J6V5vEWI1qmd2UVSzVDeLT30WLncU9kPaTWrvOYf4QjoITXmWL/n
	qj9mTXjnmtdVhri7bkjaa7yDMgKhq7So9Rtus9jC+w2zf4lMu2pHTFwNc75LRLeb
	DqzeA4VPNiaDkm9jmDrhvW0jttN4mi4XRY+e7c1S6JcZLf2fEKcm3hnCk47yDEZB
	AtrIBngQyFIgM2DPmDVFjSdPpuJ+Ijoz7IJImn4K2jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=MpzOH2
	Tddrc/teVBTJBgn2RAvArjGayjbwc8QD7nfEM=; b=IkTQJS9qpzvZ1osooL7E2O
	bYZJiFXEifTd3bhTCPXZw6pKCEkgPzFzvbdd4HExq5GufwBkQmhQz49+YEhQlwPH
	IY33MgDVVSroxFbZuIV/CUZpb2puzs5l7yPHYKU1aeH3tgs7olab1Or8Kn4pkUoP
	iqV09Ipj3SXyShnRk/1168cs29Ecx1WRocCWWlQv16sdkIEFi3P4rhbzEAvgKFdl
	gWZeKgG3pvZKphx1YNcaKLCgHzIMyzMbkFE3Xg00HNomozZa9ZCXcvqIC4dgry6q
	RkfnOmetA68fN8hWh4xm/KUYnRp2dmn+DO2uNn25+B1nj/zRlDm7A+gh2aTwTPhg
	==
X-ME-Sender: <xms:TzgjXVvrLnz9zGj7SaAK6j9gIPgoNvX-gc-rj6JrFYcdVwAKkx-OFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgedtgdehgecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
	mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
	ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:TzgjXZHq40maOezFqvnkTjAXPsWxT8cEIXQ7vGv_RFFKJdL1y1sMjQ>
	<xmx:TzgjXUyyxx1a5qEhfpL7yCn5bq76S9eCcZfOFzgjOQd71T_fZEqOSA>
	<xmx:TzgjXcf_ATEHuWvvqx0MPUTID4fRvZflSdrZhcaGKah4ZTSo7RFYoQ>
	<xmx:UDgjXS4B6_2bswtJjkg1pbjPLHsdJv-JB44QDPUa-pqmjDXFxmXffA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 83194380084;
	Mon,  8 Jul 2019 08:34:23 -0400 (EDT)
Date: Mon, 8 Jul 2019 14:34:21 +0200
From: Greg KH <greg@kroah.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20190708123421.GA20112@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
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

On Mon, Jul 08, 2019 at 01:35:15PM +0200, Jiri Kosina wrote:
> On Mon, 8 Jul 2019, Sasha Levin wrote:
> > 
> > >> If we were to start avoiding driver updates, it would act as an
> > >> incentive for people not to upgrade their kernel.
> > >
> > >I'm not sure I follow the logic here?
> > 
> > The way I see it, the lower your "effective delta" is between to
> > kernels, the easier it is to move forward. For example, if I have a
> > product that runs on 4.19 and uses all our core kernel code + 10
> > drivers, and I know that those drivers had most of the fixes backported
> > to my LTS tree, I'd feel much more confident going to 5.4 knowning that
> > I already have most of the patches that come with 5.4.
> > 
> > For me it's a matter of how one would budget a move from a kernel X LTS
> > to kernel Y LTS, and I think that as that budget requirement grows it's
> > actually harder to actually do it (and convince management), acting as a
> > negative incentive to stay with whatever works now.
> 
> But where does the 'stable' aspect appear here?
> 
> I think it's reasonable to expect 'stable' to mean 'minimal number of 
> changes needed to maintain stability of the kernel', and that I believe 
> was the original purpose of stable tree.
> 
> Now you seem to be repurposing 'stable' as 'as close to upstream as 
> possible in order to minimize cost of version updates'.

"stable" means "All the bugfixes that we have in Linus's tree,
backported to this one as well to resolve known issues".  That's all
that is happening here with the autosel stuff.  There are a load of
subsystems that still do not tag stuff for stable backporting, and
sometimes even the maintainers miss them as well (I am guilty of that as
well.)  So autosel finds those fixes and backports them, it's no
different from a distro doing the exact same thing when a bug report
comes into it, but it happens _BEFORE_ the bug report happens.

> I guess that's one of the reasons why distros are gradually turning away 
> from stable tree the main purpose of distros is to provide stability, 
> while it clearly is not minimizing acumulation of cost for future version 
> updates.

That's directly opposite of what I see happening with loads of
real-world devices.

As proof of this, and as part of a talk I gave a few weeks ago, I can
quote the Android security team.  They kept track of all requests that
they made to be backported to their device trees for 2018.  Out of 218
requests, 201 of them were _ALREADY_ in the LTS release tree.  The other
remaining ones were due to out-of-tree code being in the devices, or due
to bugs in backports that were not upstream.

So again, bugs are being fixed _before_ people report them, which sounds
exactly like what a distro needs to have happen for them :)

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
