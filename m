Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A39F11FF667
	for <lists@lfdr.de>; Thu, 18 Jun 2020 17:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 370CC88722;
	Thu, 18 Jun 2020 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R+yW1ZzM80Tt; Thu, 18 Jun 2020 15:17:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C60F8876F;
	Thu, 18 Jun 2020 15:17:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 593F6C016E;
	Thu, 18 Jun 2020 15:17:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1667FC016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 15:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 127AB84CBD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 15:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3CMqkBvb2rL
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 15:17:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0120.hostedemail.com
 [216.40.44.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4786F84848
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 15:17:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id AE38A18001051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 14:40:27 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 0B4E218029121;
 Thu, 18 Jun 2020 14:40:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3868:3871:3872:3874:4321:5007:6117:7903:10004:10400:10848:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21972:30012:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:7, LUA_SUMMARY:none
X-HE-Tag: ant56_07042ff26e11
X-Filterd-Recvd-Size: 1779
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Thu, 18 Jun 2020 14:40:23 +0000 (UTC)
Message-ID: <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Date: Thu, 18 Jun 2020 07:40:22 -0700
In-Reply-To: <20200618090442.GF6493@linux.ibm.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

On Thu, 2020-06-18 at 12:04 +0300, Mike Rapoport wrote:
> if a patch breaks the sync between the code and the
> kerneldoc can it be detected by checkpatch.pl?

No, it can not.  Not directly.

Please remember that checkpatch is a trivial set
of regexes and that checkpatch looks only at
patch diff blocks line-by-line.

A patch block that changes a function argument
may not also contain the kernel-doc.

As there already is an existing tool, that tool
should be used when possible.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
