Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2032D3B5F
	for <lists@lfdr.de>; Wed,  9 Dec 2020 07:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3736E204E0;
	Wed,  9 Dec 2020 06:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCKFPW8dvAFO; Wed,  9 Dec 2020 06:21:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 466C4204A8;
	Wed,  9 Dec 2020 06:21:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7F56C013B;
	Wed,  9 Dec 2020 06:20:59 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1BE9FC013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 06:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D09ED86A70
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 06:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0xnEmJ2H1W4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 06:20:56 +0000 (UTC)
X-Greylist: delayed 00:59:59 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0106.hostedemail.com
 [216.40.44.106])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3DA8868FB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 06:20:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 983991800B884
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 05:01:55 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 676411802926E;
 Wed,  9 Dec 2020 05:01:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:2902:3138:3139:3140:3141:3142:3622:3865:3867:3868:4321:4388:5007:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13019:13069:13255:13311:13357:13439:14659:21080:21433:21451:21627:21939:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: gun83_6115dd7273ed
X-Filterd-Recvd-Size: 1687
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Wed,  9 Dec 2020 05:01:50 +0000 (UTC)
Message-ID: <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Greg KH <gregkh@linuxfoundation.org>
Date: Tue, 08 Dec 2020 21:01:49 -0800
In-Reply-To: <202012081619.6593C87D3@keescook>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
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

On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:

> If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> "Corrected-by"?

Improved-by: / Enhanced-by: / Revisions-by: 

Or simply don't use anything but a link to the conversion thread
like Konstantin suggested.

I still want to know what actual value these things have and to whom.



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
