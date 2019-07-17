Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B310D6C246
	for <lists@lfdr.de>; Wed, 17 Jul 2019 22:45:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8761DF0C;
	Wed, 17 Jul 2019 20:44:49 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB915D9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 20:44:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
	[64.147.123.19])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A88412E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 20:44:47 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 5F88F394;
	Wed, 17 Jul 2019 16:44:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Wed, 17 Jul 2019 16:44:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=BDjByw+Ta52JLdKWVdc9mU3gLoF
	rrwLcuSeqti3rsJM=; b=UZFv/IiiJuUBFmLL5u7IqCdDnWVAdrPJLTyp2rjXmxT
	m/sWEJGvEKLbmwr75hzNDk6KOTUY49cCbajognjOmfdfQq2EwkT2SKe8BLBrq4Di
	h3ast6iUV5HfHi1xfxit5yJ61efvDKz1rqEuw0PVMmTVaX1kconOBR/kUUY+dQnW
	fsK6HCc/hRYbxGqsI7m7NcwnJsQ2+EHCu/C6M619ki86fJo/nn80akfqZZG2SAtF
	S7aH/dt1ga6+CkcWEs0jBQGTMBmLnmcsvRKD18wVpdYf16sSRzcXlZADvZkBVgYa
	Cwo5cba8X0Aq4GJjjDiQu2HTdJPTZpbyll2U3JkDwFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=BDjByw
	+Ta52JLdKWVdc9mU3gLoFrrwLcuSeqti3rsJM=; b=aLKH8Vhr3/RozdFnueOh7W
	Rq+7mMym9pyu2eXNQGnegnyO+09zLSCnpz2E6pyIE2xptfubLHCkYqQqICxTnuH7
	qxX5nB5SLn3KCU/fbZgSPq3OD5sE+/g9XIPsMTa0hDJ1iO3wgS8Sgt4NWq1pCABV
	QnRFOqst0Pa+H2lWIX8UTXQZgmVQe+yzc3dczrTW8nl7WLoi1yb+DyKa7FFGMeU2
	F69Kwc2D5enuTNV/sRW7DUWZDzYlEpTideOt1f2UgUwXkrkADMNv4ebTIP2pFB1H
	vtau4/er77McT9+zUuv+6eCyJtrCS/2zhAVqP5I9Y36BdiwIypMQtipk/h8gXruA
	==
X-ME-Sender: <xms:vYgvXb8SyPgfTysYASMTpr7bXR5E5jnEXBMxgd764nVfanznyrnznw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrieefgddufedtucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
	ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeduudefrdduheejrddvud
	ejrdehtdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
	necuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:vYgvXan3poYxpeQqUSvYUvXnUSLiN1pks_mIV6dClOMT1gNsc2pmzQ>
	<xmx:vYgvXZ3o2BZeO7X5hagbewOjhYvaef54N10uaGMh20iXMw5rM45OkQ>
	<xmx:vYgvXZTu0GMykIsS05IkQSbWMmLTt-FBAiOu2OWXL7Sei0RpL7bS_w>
	<xmx:vYgvXdkMjDMeb_yewJk1W9mqqC2WQaBuEx6WXd9CouOut3TsIwioSA>
Received: from localhost (unknown [113.157.217.50])
	by mail.messagingengine.com (Postfix) with ESMTPA id D763E380083;
	Wed, 17 Jul 2019 16:44:44 -0400 (EDT)
Date: Thu, 18 Jul 2019 05:44:43 +0900
From: Greg KH <greg@kroah.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190717204443.GA12367@kroah.com>
References: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
	<CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Wed, Jul 17, 2019 at 06:09:40PM +0200, Linus Walleij wrote:
> On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> > On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:
> 
> > > We could add an option to `git am` to save the Message-ID automatically.
> >
> > Kees already posted a simple git hook to add it to the message when
> > using `git am`.  I've been using it for a week or so already, works
> > wonderfully.
> 
> I also picked Kees script and it works like a charm as long as
> you pick patches from a list that is stashed in lore.

Or, from a list that someday will be stashed in lore :)

I have an open request to get a few more missing lists into there, but
in the meantime, have been using the link already.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
