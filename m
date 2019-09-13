Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C80B26E3
	for <lists@lfdr.de>; Fri, 13 Sep 2019 22:51:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 364FDE55;
	Fri, 13 Sep 2019 20:51:31 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5ADC6CF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 20:51:28 +0000 (UTC)
X-Greylist: delayed 21:49:39 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0199.hostedemail.com
	[216.40.44.199])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 21CBF1DCF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 20:51:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 98B991801548E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 20:33:20 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id F12BD18224D86;
	Fri, 13 Sep 2019 20:33:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
	:::::::::::::::::::::::::::,
	RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3870:3872:3874:4321:4419:4605:5007:6119:6742:7903:10004:10400:10562:10848:10946:10967:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:30054:30090:30091,
	0,
	RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100
	64.201.201.201, CacheIP:none, Bayesian:0.5, 0.5, 0.5,
	Netcheck:none, DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0,
	DNSBL:neutral, Custom_rules:0:0:0, LFtime:25, LUA_SUMMARY:none
X-HE-Tag: tub87_73cd010985e19
X-Filterd-Recvd-Size: 3342
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Fri, 13 Sep 2019 20:33:15 +0000 (UTC)
Message-ID: <8be2df9936fb405ffaee75d6e24bbac0e938a653.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Fri, 13 Sep 2019 13:33:14 -0700
In-Reply-To: <20190913161731.6e3405a3@coco.lan>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
	<4299c79e33f22e237e42515ea436f187d8beb32e.camel@perches.com>
	<CAL_JsqJju36BZPK6DJab28Ne-ORpEyPpxH0H4DuymxFMabpMRQ@mail.gmail.com>
	<78f67ee934f167b433517da81c6a0d3f35c4b123.camel@perches.com>
	<20190913161731.6e3405a3@coco.lan>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=unavailable version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp2.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>, Bart Van Assche <bvanassche@acm.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dmitry Vyukov <dvyukov@google.com>, Steve French <stfrench@microsoft.com>,
	"Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
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

On Fri, 2019-09-13 at 16:17 -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 13 Sep 2019 11:42:38 -0700
> Joe Perches <joe@perches.com> escreveu:
[]
> > Just fyi:  for an x86-64 defconfig with gcc 8.3
> > 
> > $ { make clean ; make defconfig ; make -j4 W=1 ; } > make.log 2>&1
> > 
> > There are ~300 W=1 for non kernel-doc -W<foo> warnings.
> > 
> > $ grep -i -P -oh '\[\-W[\w\-]+\]' make.log |sort | uniq -c | sort -rn
> >     163 [-Wmissing-prototypes]
> >      69 [-Wunused-but-set-variable]
> >      16 [-Wempty-body]
> >      10 [-Wtype-limits]
> >       6 [-Woverride-init]
> >       2 [-Wstringop-truncation]
> >       2 [-Wcast-function-type]
> >       1 [-Wunused-but-set-parameter]
> 
> On my eyes, it doesn't sound too much.

In general, I agree and most of these are pretty
trivial to remove.  It'd just take some time to
remove most of the missing-prototypes and
unused-but-set warnings before being able to
enable the warnings at the default W=0.

> I suspect that, 
> with gcc-9, it should produce more warnings, though.

It doesn't though.
At least not so far as I can tell.
gcc-9.1 produces the same output.

$ { make clean ; make defconfig ; make CC=/usr/bin/gcc-9 -j4 W=1 V=1 ; } > make_gcc9.log 2>&1
$  grep -i -P -oh '\[\-W[\w\-]+\]' make_gcc9.log | sort | uniq -c | sort -rn
    163 [-Wmissing-prototypes]
     69 [-Wunused-but-set-variable]
     16 [-Wempty-body]
     10 [-Wtype-limits]
      6 [-Woverride-init]
      2 [-Wstringop-truncation]
      2 [-Wcast-function-type]
      1 [-Wunused-but-set-parameter]


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
