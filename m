Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED86216F
	for <lists@lfdr.de>; Mon,  8 Jul 2019 17:16:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E145827D1;
	Mon,  8 Jul 2019 15:16:13 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8975B27AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:06:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F3A287F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:06:45 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 49A1121B03;
	Mon,  8 Jul 2019 11:06:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Mon, 08 Jul 2019 11:06:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=8wXxnLMpu1XJ0jjbXs38BczAp5W
	CioP5Cb9osmouA5Q=; b=GFwo8AlEyc7il804KJaWcL5YYUzOw8OYzgauv/TaOLl
	QwKxzIt3zpcLGlFCzU7pQpwti/JEFI/7pJjoqfxXoFSf3e4NhhVmDgWPRX9Yay+u
	/L9mftyNN+fLt7c9w76zjYY6G0nXjKWu4kE5yq/7dLJA27jZR21pakAy+la8UnxB
	FHnE3X3bBUNyrr8jhy9zqMS0V6vbqP7ohnAdtLyavYume8Junyf9eH3bFr3GxVEi
	s9IS0Xq/SJol7IPY1HEiUN5I6jdsmzqtNr82HIIhXHa9bB3AMQZqZiMvZTt51MCv
	TOm1/diAFRSWXGG2dQE4jVi0Wq33ju4QYpzPgM4Q9fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=8wXxnL
	Mpu1XJ0jjbXs38BczAp5WCioP5Cb9osmouA5Q=; b=R+E2EiUuXFpuvZJwQ20meQ
	SwOh1MXO4art55ZK9bETU9KlWVOJ/2lKieRnJLE4Bt1yZPAQWqFVWeBfeaF47sM3
	9YsrBLHzWCg910D+6SuoCtHjCT3pk+mkZ6ItRnJ89z2BFpInVRUuqRaH7vRb4ew4
	n1O4JWgKMKrSViaBYbiSSFka68H6xVvRIbqsdhIvuM6H3r8LGng5R2dAHE9+b2+u
	rHDB12EbuDOyUK13hX98cLbS9igQXmz1S6x3YbBvaRaCCw39U4/5OIzK20dFnsxU
	c/26KQjtQasOEfXSg5xsPmZSQMcYB3YKnjAcF2upMW5QPt5m5Qe0UoOvdUhLISCw
	==
X-ME-Sender: <xms:A1wjXXIFZp439Y3F1Q8-dr7PoPzpt8fHqCcxuh1ADVc5j_FwcDiJSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgedtgdekjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
	dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
	necukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepgh
	hrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:A1wjXVTbcRIHS4y6cCDNbJCQptg3A1SabFqK594jVCzAcyJruWBoCA>
	<xmx:A1wjXRZk0QLVBr-SVgu65Sq8-zlQ40HQPShl1HEjWVWiXEoVc4zIBw>
	<xmx:A1wjXfEyly1aFwvRUEALlPdGT__bKs_9T9a3AMqtCf7GDBiE7sCGNg>
	<xmx:BFwjXRJkMpXVxoYT8u9r5TxQF6G6YhKBZ_pD8xbi5J0ZZSGfLE27Rg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6B4C238008C;
	Mon,  8 Jul 2019 11:06:43 -0400 (EDT)
Date: Mon, 8 Jul 2019 17:06:41 +0200
From: Greg KH <greg@kroah.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190708150641.GA1548@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<20190708145045.GC12731@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708145045.GC12731@sirena.co.uk>
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

On Mon, Jul 08, 2019 at 03:50:45PM +0100, Mark Brown wrote:
> On Mon, Jul 08, 2019 at 07:05:44AM -0700, Guenter Roeck wrote:
> > On 7/8/19 5:37 AM, Mark Brown wrote:
> 
> > > I'm not sure how many people will actually report problems they
> > > experience upstream rather than just fixing things locally and
> > > just moving on.  The more code is the more likely it is that one
> > > of the users will report things.
> 
> > I for my part will most definitely report any such problems, since each
> > regression in stable releases is used as argument against merging
> > stable releases (even if the regression rate is negligible), and I am
> > very interested in getting that regression rate as close to zero as
> > possible. Reporting each and every regression is an essential part
> > of that.
> 
> Me too - but I'm pretty sure for example most of the product
> teams I've worked with at consumer electronics companies would
> never even consider it.

Sweet, want me to come into those teams and give a presentation like I
did a few months ago for one major company entitled "all the ways your
kernel is insecure and trivial to break"?

I'll be glad to do so :)

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
