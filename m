Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F84E214917
	for <lists@lfdr.de>; Sun,  5 Jul 2020 01:08:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 477E0203D1;
	Sat,  4 Jul 2020 23:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOm8bdy6++-u; Sat,  4 Jul 2020 23:08:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 623112041A;
	Sat,  4 Jul 2020 23:08:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18801C0733;
	Sat,  4 Jul 2020 23:08:17 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21828C0733;
 Sat,  4 Jul 2020 23:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0682688C7B;
 Sat,  4 Jul 2020 23:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x+Gk89KttY83; Sat,  4 Jul 2020 23:08:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
 [216.40.44.192])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D3FC88C6E;
 Sat,  4 Jul 2020 23:08:14 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 4442318017FA0;
 Sat,  4 Jul 2020 21:51:13 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id E202D18224D8E;
 Sat,  4 Jul 2020 21:51:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:152:355:379:582:599:988:989:1152:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1560:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3876:3877:4321:5007:6114:6119:6261:6312:6642:9036:10004:10400:10848:11232:11658:11914:12043:12297:12740:12760:12895:13069:13311:13357:14659:14685:21080:21611:21627:21809:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: side00_500090426e9d
X-Filterd-Recvd-Size: 1420
Received: from perches-mx.perches.com (imap-ext [216.40.42.5])
 (Authenticated sender: webmail@joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Sat,  4 Jul 2020 21:51:10 +0000 (UTC)
MIME-Version: 1.0
Date: Sat, 04 Jul 2020 14:51:09 -0700
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
In-Reply-To: <1593897917.7058.11.camel@HansenPartnership.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <1593897917.7058.11.camel@HansenPartnership.com>
User-Agent: Roundcube Webmail/1.4-rc2
Message-ID: <7eb36e09e13138d3e349e9657039644f@perches.com>
X-Sender: joe@perches.com
X-Originating-IP: [47.151.133.149]
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 2020-07-04 14:25, James Bottomley wrote:
> On Sat, 2020-07-04 at 13:02 -0700, Dan Williams wrote:
> [...]
>> diff --git a/Documentation/process/inclusive-terminology.rst
[]
> Could we just lose this entire document?

Yes please.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
