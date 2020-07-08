Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E33218C47
	for <lists@lfdr.de>; Wed,  8 Jul 2020 17:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93FC387CD9;
	Wed,  8 Jul 2020 15:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAOQzVbyfPR7; Wed,  8 Jul 2020 15:51:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 253A187CDB;
	Wed,  8 Jul 2020 15:51:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE67EC016F;
	Wed,  8 Jul 2020 15:51:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B0C9C016F;
 Wed,  8 Jul 2020 15:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25E9588D0A;
 Wed,  8 Jul 2020 15:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FbWsoUAn6iSv; Wed,  8 Jul 2020 15:50:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0252.hostedemail.com
 [216.40.44.252])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E237288CF7;
 Wed,  8 Jul 2020 15:50:47 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 1C609180B8436;
 Wed,  8 Jul 2020 11:04:56 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 69D20100E7B42;
 Wed,  8 Jul 2020 11:04:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:334:355:368:369:379:599:800:960:967:973:982:988:989:1028:1260:1263:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1969:1975:2195:2199:2393:2525:2560:2563:2682:2685:2691:2828:2859:2895:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6742:7875:8599:8957:9010:9025:10004:10400:10848:10913:11232:11473:11658:11914:12043:12297:12438:12555:12740:12760:12783:12895:12986:13019:13141:13149:13230:13439:14096:14097:14181:14659:14721:14849:21080:21433:21451:21627:21939:30012:30030:30045:30054:30062:30064:30070:30089:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: water41_2400efa26ebc
X-Filterd-Recvd-Size: 3704
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Wed,  8 Jul 2020 11:04:51 +0000 (UTC)
Message-ID: <b15e2652aba06dbe244f5ed447e6e96f12302198.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Williams <dan.j.williams@intel.com>, Jonathan Corbet <corbet@lwn.net>
Date: Wed, 08 Jul 2020 04:04:50 -0700
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [PATCH v2] CodingStyle: Inclusive Terminology
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

On Wed, 2020-07-08 at 00:23 -0700, Dan Williams wrote:
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
> 
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Cc: Jonathan Corbet <corbet@lwn.net>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
> Changes since v1 [1]
> - Drop inclusive-terminology.rst, it is in the lore archives if the
>   arguments are needed for future debates, but otherwise no pressing
>   need to carry it in the tree (Linus, James)

Where did Linus publicly state this was unnecessary?

> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
[]
> @@ -319,6 +319,19 @@ If you are afraid to mix up your local variable names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>  
> +For symbol names, avoid introducing new usage of 'master/slave' (or
> +'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
> +replacements for 'master/slave' are: 'main/{secondary,subordinate}',
> +'primary/replica', '{initiator,requester}/{target,responder}',
> +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended
> +replacements for 'blacklist/whitelist' are: 'denylist/allowlist' or
> +'blocklist/passlist'.

Adding a reference to SeongJae Park's introduction of
scripts/deprecated_terms.txt or the like might help
make this list unnecessary if more terms are added.

> +Exceptions for introducing new usage is to maintain a userspace ABI/API,
> +or when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications
> +translate specification usage of the terminology to the kernel coding
> +standard where possible.

I believe any existing code should not be changed,
not just code that is required to be maintained
for userspace.



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
