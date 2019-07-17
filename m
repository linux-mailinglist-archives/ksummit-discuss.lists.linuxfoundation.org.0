Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DED8F6B92D
	for <lists@lfdr.de>; Wed, 17 Jul 2019 11:28:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 21736E3F;
	Wed, 17 Jul 2019 09:28:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AF51E39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:28:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
	[64.147.123.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 22D7C63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:28:26 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 63DEA451;
	Wed, 17 Jul 2019 05:28:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute6.internal (MEProxy); Wed, 17 Jul 2019 05:28:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=nqqz0q1cbPYK2/Lu885IARziZrk
	4oH4Xoff3jX7iQYQ=; b=llVDSokKaus9kR6IJ0gITnmc8VLSbcb/RawmLUjMsJ2
	01ERqMgJ8J71X92g55kUQra/q6fF9WMR/trfZQSSobWjQ1zq57oi43LQHtrkp968
	6pJqpKLm3ntT4lDOCb1ZXTEB8A0jq1ZWtjuESNObDPMfq9qJCEvB4mb6N6PUiHAJ
	uIBLtoBC2gGHfg4CNjN5IaiRNm3P0s8zp6eDWDBiaWOdCK6n59Hw+EMCwZK8ANb2
	J/A9ufr0pJZx6YI3tt5m4u2kznx+mCUTYL14uEBT7SkIWGNmlHlarLyQArj0Id6W
	EMyHovaXbWkBLRP3Q36UyInjLIHh1wBjk+ar8ISCATw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=nqqz0q
	1cbPYK2/Lu885IARziZrk4oH4Xoff3jX7iQYQ=; b=xcG7ML/OSfInEbiaf1CY1y
	aAsU1eaPa6vhghNb9IjGhzn0ZzO/Zv6WRg6lOhl/LZaGNTKVp2U601/+8arHVMNk
	y35Ku42Zxz12AjqgfvhwMnVPifYmbJ4kHVFGg1kFCeP6AzAgF8zVcZx2LOlp42t1
	q3rfWajwHzv2ApoUbfAMIY1WJymXf+/CXCt8TrmbvPUY9BZXbFYe+g9m4Xxv0acn
	B59yLGXQzHWnZtdirgXuSwLuaEhgq4RBOnHHfu709OfzUQyBttLENs1yzPaVuNeK
	phq3CL7wDCKRT9vOOoZXWvnb9CwccgYsFkaTGuy2IDcQvCGZ6W4uCHLRm/nbXUpA
	==
X-ME-Sender: <xms:N-ouXYYaiI-T59rIUdtWKRuQ0KHj4Jqn0g72FLTFKg53PvnRDC9uvQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddriedvgddukecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
	mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepkhgvrhhnvghlrd
	horhhgnecukfhppeduudefrdduheejrddvudejrdehtdenucfrrghrrghmpehmrghilhhf
	rhhomhepghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:N-ouXf2kRXV-Wmwyb0hBjbzVzRGsZrQP0vOeo-XBUvAzBJ3uRHmf6w>
	<xmx:N-ouXe-hYV-Jb6RAnNvp1X9_IUVYlWa9d25QQh7wrjTz2v-ri5K4Rw>
	<xmx:N-ouXUFY69DaP5uzMZuFebBqGB6AGxZicduTWzOa2XE02Yd8u6IQ3g>
	<xmx:OOouXa8NbGNCzf-Gjk36n4UuVCWynyU3y37ZT3mwZFDiDSGoQPlFSg>
Received: from localhost (unknown [113.157.217.50])
	by mail.messagingengine.com (Postfix) with ESMTPA id A7DC480060;
	Wed, 17 Jul 2019 05:28:22 -0400 (EDT)
Date: Wed, 17 Jul 2019 18:28:20 +0900
From: Greg KH <greg@kroah.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190717092820.GA18953@kroah.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717092313.GA3111@kadam>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:
> On Mon, Jul 01, 2019 at 09:53:54AM +0200, Takashi Iwai wrote:
> > On Mon, 01 Jul 2019 09:49:56 +0200,
> > Thomas Gleixner wrote:
> > > 
> > > On Mon, 1 Jul 2019, Peter Zijlstra wrote:
> > > 
> > > > On Sun, Jun 30, 2019 at 12:31:20PM -0400, Konstantin Ryabitsev wrote:
> > > > > On Sat, Jun 29, 2019 at 05:16:18PM +0200, Thomas Gleixner wrote:
> > > > > > > Makes all sense to me.  One question/remark:
> > > > > > > 
> > > > > > > Documentation/process/submitting-patches.rst says:
> > > > > > > 
> > > > > > >  "If the patch follows from a mailing list discussion, give a URL to the
> > > > > > >   mailing list archive; use the https://lkml.kernel.org/ redirector with
> > > > > > >   a ``Message-Id``, to ensure that the links cannot become stale."
> > > > > > > 
> > > > > > > and it does not mention "lore.kernel.org": does this doc want an update?
> > > > > > 
> > > > > > Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
> > > > > > thing.
> > > > > 
> > > > > FYI, lkml.kernel.org == lore.kernel.org in all respects. Using
> > > > > lore.kernel.org/r/<messageid> will match *any* mailing list archived at
> > > > > lore.kernel.org (for the full list, see https://lore.kernel.org/lists.html).
> > > > > I prefer people use lore.kernel.org because that name doesn't imply that the
> > > > > search will only match LKML.
> > > > 
> > > > I much prefer https://lkml.kernel.org/r/$msgid over lore, because I can
> > > > change it to marc.info with a single character change. And while lore
> > > > has improved, the thing is still a horrible horrible ugly site (an
> > > > actual fixed frame for the thread overview, and hiding that 'Reply
> > > > instructions' and 'LKML Archive on lore.kernel.org' somewhow would
> > > > already be a big improvement).
> > > 
> > > But lore allows to reference all mailinglists which are archived
> > > there, while lkml.k.org is hardcoded to lkml.
> > > 
> > > > Also, strlen("lkml.kernel.org/r/") < strlen("lore.kernel.org/lkml/").
> > > 
> > > Come on ....
> > 
> > If the size matters, how about just putting the message id?
> > Something like:
> >   Link: <alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
> 
> We could add an option to `git am` to save the Message-ID automatically.

Kees already posted a simple git hook to add it to the message when
using `git am`.  I've been using it for a week or so already, works
wonderfully.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
