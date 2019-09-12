Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C92DCB0DF6
	for <lists@lfdr.de>; Thu, 12 Sep 2019 13:36:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A62BBDA4;
	Thu, 12 Sep 2019 11:36:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7F52D91
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 11:36:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com
	[216.40.44.185])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 644601DAA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 11:36:24 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 926D218012B52
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 10:18:10 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id D459A18225E0D;
	Thu, 12 Sep 2019 10:18:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 30, 2, 0, , d41d8cd98f00b204, joe@perches.com,
	:::::::::::::::::::,
	RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4470:5007:8957:10010:10400:10562:10848:11232:11658:11914:12050:12294:12296:12297:12679:12740:12760:12895:13069:13255:13311:13357:13439:13618:14096:14097:14181:14659:14721:14819:21080:21324:21433:21627:21740:21939:30006:30034:30054:30060:30064:30090:30091,
	0,
	RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100
	64.201.201.201, CacheIP:none, Bayesian:0.5, 0.5, 0.5,
	Netcheck:none, DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0,
	DNSBL:neutral, Custom_rules:0:1:0, LFtime:38, LUA_SUMMARY:none
X-HE-Tag: body44_46c106f754330
X-Filterd-Recvd-Size: 2921
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Sep 2019 10:18:06 +0000 (UTC)
Message-ID: <e9cb9bc8bd7fe38a5bb6ff7b7222b512acc7b018.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Dan Williams
	<dan.j.williams@intel.com>
Date: Thu, 12 Sep 2019 03:18:04 -0700
In-Reply-To: <CANiq72k2so3ZcqA3iRziGY=Shd_B1=qGoXXROeAF7Y3+pDmqyA@mail.gmail.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
	<CAPcyv4ij3s+9uO0f9aLHGj3=ACG7hAjZ0Rf=tyFmpt3+uQyymw@mail.gmail.com>
	<CANiq72k2so3ZcqA3iRziGY=Shd_B1=qGoXXROeAF7Y3+pDmqyA@mail.gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp2.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	bpf@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
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

On Thu, 2019-09-12 at 10:24 +0200, Miguel Ojeda wrote:
> On Thu, Sep 12, 2019 at 9:43 AM Dan Williams <dan.j.williams@intel.com> wrote:
> > Now I come to find that CodingStyle has settled on clang-format (in
> > the last 15 months) as the new standard which is a much better answer
> > to me than a manually specified style open to interpretation. I'll
> > take a look at getting libnvdimm converted over.
> 
> Note that clang-format cannot do everything as we want within the
> kernel just yet, but it is a close enough approximation -- it is near
> the point where we could simply agree to use it and stop worrying
> about styling issues. However, that would mean everyone needs to have
> a recent clang-format available, which I think is the biggest obstacle
> at the moment.

I don't think that's close to true yet for clang-format.

For instance: clang-format does not do anything with
missing braces, or coalescing multi-part strings,
or any number of other nominal coding style defects
like all the for_each macros, aligning or not aligning
columnar contents appropriately, etc...

clang-format as yet has no taste.

I believe it'll take a lot of work to improve it to a point
where its formatting is acceptable and appropriate.

An AI rather than a table based system like clang-format is
more likely to be a real solution, but training that AI
isn't a thing that I want to do.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
