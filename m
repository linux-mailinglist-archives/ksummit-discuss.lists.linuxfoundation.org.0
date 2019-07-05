Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A82FA60A0B
	for <lists@lfdr.de>; Fri,  5 Jul 2019 18:17:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8872BF94;
	Fri,  5 Jul 2019 16:17:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD8BBE1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:17:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76AB087E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:17:05 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 7A74721385;
	Fri,  5 Jul 2019 12:17:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Fri, 05 Jul 2019 12:17:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=4znlonnbNC3ZoigKGehsIPS0WTe
	EtWbC66Uwb3TLPSk=; b=GWLj9NA2nlbE95gM6Ss9c/GYC+I2Bh48n1CLTwo57ZU
	+JmEwRTIbq1ntVHrnbRLwI/jxvArJNADkI4PJ7uusgH25yYIPliS3ElbMfF6pFdb
	EHL8/Wg4UVk+NxlIQcWeYEp0+nor3Y6SeTggbV2SC0c6RJeJDIbHLATummyVZGAS
	ykOj41Gsud5HUfWmLbwJv8ZcEy1qI1du4LNQw1uC1E28drKPAr0mDd2zsTVWyrwx
	/3fEVmylV7pzrPJAehnml7EKLmRadesxedyT+H7b4WoiFPqH1XAR2jkK6ysqSbbh
	DDQFCNLFB6njwHD1osuIlCrAHXB/Yn1WnNZGdBmC3Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4znlon
	nbNC3ZoigKGehsIPS0WTeEtWbC66Uwb3TLPSk=; b=id8Psc+ZLNOpq7L36ymrVN
	EHAwfH6xFO89MBm+Utm1baXsvn/spGLMjty1RA7fMdmaBy0QXrlEDpSfHk21nS2c
	TOtYcBSzbbJ0oYl7RsruGw2cY3uXR/7nrsYMT18hJXFdqDNjr+G1p0HatXzHUjcf
	JjvUkZx/qp6F8HEe8LGvulDP0E7TcyRwMJkFABlufoClXlAVEdsvk+jyDCk2O+32
	t9yjAuoKj6pax/RdZeizgNJinIE3g9d4YkY0UQR4JyvtzzYPkPBYQTMQGhGAsHXb
	3SD+pSmwczCteV6dsbqjD/OlaJnMGdPj7KqdBIqPC5vRpT5DTkh+8CfsllKf+oLQ
	==
X-ME-Sender: <xms:_3cfXX04PFoomEx3kuxKWj2Mo742Kkse3Wrnv1FgmcVG8toPITubxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrfeeggddutddtucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
	ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
	dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
	vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:_3cfXfC0nAMpwXZxgcxmYJeUEqEkgloWwqHUzzMAgwNOy68OnxsSjA>
	<xmx:_3cfXTfywZcBLzkhCpM1sglpQP7TUBvAO4IDdBVhSuGch1j8eqYfKg>
	<xmx:_3cfXc7MVtGaUXS2kN_OlXN7OEfC-zAlSXpOgsl_O8sG4Z2zsRvchw>
	<xmx:AHgfXSPWbvDzCx5ClB0gMjm4UkoB4RH3S6OLwriy0s9sOLUVIbogHg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 14146380083;
	Fri,  5 Jul 2019 12:17:02 -0400 (EDT)
Date: Fri, 5 Jul 2019 18:17:01 +0200
From: Greg KH <greg@kroah.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190705161701.GB8626@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<87lfxc1ta4.fsf@concordia.ellerman.id.au>
	<s5hwogwy3g0.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hwogwy3g0.wl-tiwai@suse.de>
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

On Fri, Jul 05, 2019 at 04:13:35PM +0200, Takashi Iwai wrote:
> 
> FWIW, SUSE tracks the possible upstream fixes by parsing Fixes tag
> regularly, so it's proven to be useful.

Yeah, it's the fixes tag parsing that I know I use (well, should use
more often than I do).  I think Sasha runs that type of script more
often than I do.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
