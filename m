Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B0B2D3DF4
	for <lists@lfdr.de>; Wed,  9 Dec 2020 09:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AD1B86DBB;
	Wed,  9 Dec 2020 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0VsiaFk6Rmc; Wed,  9 Dec 2020 08:54:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E955B86DBD;
	Wed,  9 Dec 2020 08:54:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95022C013B;
	Wed,  9 Dec 2020 08:54:39 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E97CEC013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7FD086D92
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQjcPDIhwhd8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0228.hostedemail.com
 [216.40.44.228])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9FA1386D73
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 8A5091801F0FC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:35 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 16D1B1802CCD2;
 Wed,  9 Dec 2020 08:54:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:967:973:979:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1719:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2691:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4383:4388:4395:5007:8985:9025:10004:10400:10848:11232:11658:11914:12043:12050:12297:12663:12679:12740:12760:12895:13069:13255:13311:13357:13439:14093:14096:14097:14180:14181:14659:14721:14764:21067:21080:21433:21450:21451:21627:21790:30041:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bikes20_0a0b5de273ee
X-Filterd-Recvd-Size: 3371
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed,  9 Dec 2020 08:54:31 +0000 (UTC)
Message-ID: <42a599d0f5e4c677648b5e6de8083feb8723a558.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 09 Dec 2020 00:54:30 -0800
In-Reply-To: <20201209075849.GD2767@kadam>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>, Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, 2020-12-09 at 10:58 +0300, Dan Carpenter wrote:
> On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> > On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> > 
> > > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> > > "Corrected-by"?
> > 
> > Improved-by: / Enhanced-by: / Revisions-by: 
> > 
> 
> I don't think we should give any credit for improvements or enhancements,
> only for fixes.

Hey Dan.

I do.  If a patch isn't comprehensive and a reviewer notices some
missing coverage or algorithmic performance enhancement, I think that
should be noted.

> Complaining about style is its own reward.

<chuckle, maybe so. I view it more like coaching...>

I believe I've said multiple times that style changes shouldn't require
additional commentary added to a patch.

I'm not making any suggestion to comment for style, only logic or defect
reduction/improvements as described above.

> Having to redo a patch is already a huge headache.  Normally, I already
> considered the reviewer's prefered style and decided I didn't like it.

Example please.  We both seem to prefer consistent style.

> Then to make me redo the patch in an ugly style and say thank you on
> top of that???  Forget about it.

Not a thing I've asked for.

>  Plus, as a reviewer I hate reviewing patches over and over.

interdiff could be improved.

> I've argued for years that we should have a Fixes-from: tag.  The zero
> day bot is already encouraging people to add Reported-by tags for this
> and a lot of people do.

It's still a question of what fixes means in any context.

https://www.google.com/search?q=%27fixes-from%3A%27%20carpenter%20site%3Alore.kernel.org
gives:
It looks like there aren't many great matches for your search

And I'm rather in favor of letting people make up their own
<whatever>-by: uses and not being too concerned about the specific
whatever word or phrase used.  Postel's law and such.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
