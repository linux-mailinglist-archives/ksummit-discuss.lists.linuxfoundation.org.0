Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CB221BF67A
	for <lists@lfdr.de>; Thu, 26 Sep 2019 18:12:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5079FD07;
	Thu, 26 Sep 2019 16:11:49 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 211BFAD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 16:11:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com
	[216.40.44.185])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78BF38AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 16:11:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id D72361803D601
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 16:02:15 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 29A4E8368EEF;
	Thu, 26 Sep 2019 16:02:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
	RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:1981:2194:2197:2199:2200:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4384:4605:5007:6119:7903:7904:8527:8531:8660:9010:10004:10400:10562:10848:11026:11232:11658:11914:12043:12295:12296:12297:12438:12555:12679:12681:12740:12760:12895:12986:13138:13141:13148:13161:13229:13230:13231:13439:14659:14721:21080:21221:21324:21433:21451:21627:21819:30022:30029:30046:30054:30060:30062:30080:30090:30091,
	0,
	RBL:113.161.34.234:@perches.com:.lbl8.mailshell.net-62.8.241.100
	64.201.201.201, CacheIP:none, Bayesian:0.5, 0.5, 0.5,
	Netcheck:none, DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0,
	DNSBL:neutral, Custom_rules:0:0:0, LFtime:28, LUA_SUMMARY:none
X-HE-Tag: boys03_6a50161859d57
X-Filterd-Recvd-Size: 4430
Received: from XPS-9350 (unknown [113.161.34.234])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu, 26 Sep 2019 16:02:10 +0000 (UTC)
Message-ID: <b2e180a2d2d1d205c426ec02051a002f2c77832e.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Date: Thu, 26 Sep 2019 09:02:07 -0700
In-Reply-To: <201909260848.B429B7DF@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
	<201909251127.D0C517171E@keescook>
	<4eca5297a213357995c05b90c74a8bc638f54f02.camel@perches.com>
	<201909260848.B429B7DF@keescook>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

On Thu, 2019-09-26 at 08:53 -0700, Kees Cook wrote:
> On Thu, Sep 26, 2019 at 08:14:03AM -0700, Joe Perches wrote:
> > On Wed, 2019-09-25 at 11:40 -0700, Kees Cook wrote:
> > > Is "6" a safe lower bound here? I thought 12 was the way to go?
> > []
> > > $ git log | egrep 'Fixes: [a-f0-9]{1,40}' | col2 | awk '{print length }' | sort | uniq -c | sort -n | tail
> > >     238 8
> > >     300 7
> > >     330 14
> > >     344 6
> > >     352 11
> > >     408 40
> > >     425 10
> > >     735 16
> > >    1866 13
> > >   31446 12
> > > 
> > > Hmpf, 6 is pretty high up there...
> > 
> > Yes, but your grep then col2 isn't right.
> > You are counting all the 'Fixes: commit <foo>' output
> > as 6 because that's the length of 'commit'.
> 
> the [a-f0-9]{1,40} already excludes "commit".

No it doesn't as commit starts with c which matches [a-f0-9]{1,40}

Try your original egrep command line yourself.

Maybe use:

$ git log | egrep 'Fixes: [a-f0-9]{1,40}' | awk '{ if (length($2) == 6) { print $0;} }'

The first few matches are

    the commit referenced in Fixes: below replaced the call to
    Fixes: commit 18a992787896 ("ARM: ux500: move soc_id driver to drivers/soc")
    Fixes: commit 0580dde59438 ("ASoC: simple-card-utils: add asoc_simple_debug_info()")
    Since Fixes: 8c5421c016a4 ("perf pmu: Display pmu name when printing
    Fixes: commit 961fb3c206dc ("ASoC: rockchip: rk3399_gru_sound: don't select unnecessary Platform")

> > I also think the length of the hex commit value doesn't
> > matter much as it's got to be a specific single commit
> > SHA1 anyway, otherwise the commit id lookup will fail.
> 
> Fail enough. We do already have 6-digit SHA1 collisions, so it seemed
> like using more than 6 would be nicer? *shrug* I don't have a strong
> opinion. :)
> 
> > > > > @@ -1031,6 +1040,7 @@ MAINTAINER field selection options:
> > > >      --roles => show roles (status:subsystem, git-signer, list, etc...)
> > > >      --rolestats => show roles and statistics (commits/total_commits, %)
> > > >      --file-emails => add email addresses found in -f file (default: 0 (off))
> > > > +    --fixes => for patches, add signatures of commits with 'Fixes: <commit>' (default: 1 (on))
> > > 
> > > Should "Tested-by" and "Co-developed-by" get added to @signature_tags ?
> > 
> > All "<foo>-by:" signatures are added.
> 
> Ah, I'd missed where that happened. I do note that's only when
> git-all-signature-types is set, which is default 0. (/me goes to add
> this to his invocations...)
> 
> my $email_git_all_signature_types = 0;
> ...
>     if ($email_git_all_signature_types) {
>         $signature_pattern = "(.+?)[Bb][Yy]:";
>     } else {
>         $signature_pattern = "\(" . join("|", @signature_tags) . "\)";
>     }
> 
> > > @commit_authors is unused?
> > 
> > Yes, authors are already required to sign-off so
> > it's just duplicating already existing signatures.
> 
> Sure, it just seemed odd to populate it if it wasn't going to be used.

It's a generic function.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
