Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC29710BE
	for <lists@lfdr.de>; Tue, 23 Jul 2019 06:58:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 57C18CAE;
	Tue, 23 Jul 2019 04:58:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A600CC9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Jul 2019 04:58:24 +0000 (UTC)
X-Greylist: delayed 01:09:59 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0233.hostedemail.com
	[216.40.44.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 28077F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Jul 2019 04:58:23 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 79113180033CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 17:12:42 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id CD73318224D78;
	Mon, 22 Jul 2019 17:12:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
	RULES_HIT:41:355:379:599:800:960:973:981:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7974:9010:9040:10004:10400:10450:10455:10848:11232:11658:11914:12050:12297:12740:12760:12895:13069:13095:13255:13311:13357:13439:14181:14659:14721:19904:19999:21080:21325:21433:21611:21627:21740:30054:30090:30091,
	0,
	RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180
	64.201.201.201, CacheIP:none, Bayesian:0.5, 0.5, 0.5,
	Netcheck:none, DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0,
	DNSBL:neutral, Custom_rules:0:0:0, LFtime:27, LUA_SUMMARY:none
X-HE-Tag: paper99_4ef8a33b78534
X-Filterd-Recvd-Size: 2411
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
	[23.242.196.136]) (Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Mon, 22 Jul 2019 17:12:22 +0000 (UTC)
Message-ID: <b048ad44d9c9b8f3f4762f35aaa6194f4d58612f.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Jul 2019 10:12:21 -0700
In-Reply-To: <201907221001.965A5D36A@keescook>
References: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
	<CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
	<201907221001.965A5D36A@keescook>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Peter Zijlstra <peterz@infradead.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Mon, 2019-07-22 at 10:02 -0700, Kees Cook wrote:
> On Wed, Jul 17, 2019 at 06:09:40PM +0200, Linus Walleij wrote:
> > On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> > > On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:
> > > > We could add an option to `git am` to save the Message-ID automatically.
> > > 
> > > Kees already posted a simple git hook to add it to the message when
> > > using `git am`.  I've been using it for a week or so already, works
> > > wonderfully.
> > 
> > I also picked Kees script and it works like a charm as long as
> > you pick patches from a list that is stashed in lore.
> > 
> > Kees, you script is highly valuable, can we put it inside
> > Documentation/* somewhere?
> 
> Yeah, absolutely! Do we already have somewhere to put these kinds of
> maintainer scripts? (Has Dan Williams already thought about this for
> the maintainer's handbook?)

scripts/ seems a more obvious choice.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
