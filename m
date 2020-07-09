Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BD121AB03
	for <lists@lfdr.de>; Fri, 10 Jul 2020 00:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 493C989622;
	Thu,  9 Jul 2020 22:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0d-EEDP0h8I; Thu,  9 Jul 2020 22:55:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4A7588518;
	Thu,  9 Jul 2020 22:55:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6130DC016F;
	Thu,  9 Jul 2020 22:55:48 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C953EC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 22:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B80FC898BC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 22:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 051mbQuygPJi
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 22:55:44 +0000 (UTC)
X-Greylist: delayed 02:19:58 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0016.hostedemail.com
 [216.40.44.16])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 917D28986A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 22:55:44 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 7DF9380127B6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 16:59:52 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 18BD12C84;
 Thu,  9 Jul 2020 16:59:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:7903:9025:10004:10400:10848:10967:11232:11658:11914:12043:12297:12555:12740:12760:12895:13069:13311:13357:13439:13845:14096:14097:14181:14659:14721:21080:21324:21627:21740:30012:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: chess10_0e0c24626ec7
X-Filterd-Recvd-Size: 2469
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Thu,  9 Jul 2020 16:59:49 +0000 (UTC)
Message-ID: <193e456a55a880b0f6755a3974f780bffbd8f19c.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mike Rapoport <rppt@linux.ibm.com>, "Valdis.Kletnieks"
 <Valdis.Kletnieks@vt.edu>
Date: Thu, 09 Jul 2020 09:59:46 -0700
In-Reply-To: <20200709121136.GG781326@linux.ibm.com>
References: <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
 <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
 <20200709122118.0ffaea91@coco.lan>
 <60434f00e5bc55d2ceac14bb6a8c00d4d17c4e96.camel@perches.com>
 <20200709121136.GG781326@linux.ibm.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, 2020-07-09 at 15:11 +0300, Mike Rapoport wrote:
> On Thu, Jul 09, 2020 at 04:42:58AM -0700, Joe Perches wrote:
> > On Thu, 2020-07-09 at 12:21 +0200, Mauro Carvalho Chehab wrote:
> > > Em Thu, 18 Jun 2020 07:40:22 -0700
> > > Joe Perches <joe@perches.com> escreveu:
> > > 
> > > > On Thu, 2020-06-18 at 12:04 +0300, Mike Rapoport wrote:
> > > > > if a patch breaks the sync between the code and the
> > > > > kerneldoc can it be detected by checkpatch.pl?  
> > > > 
> > > > No, it can not.  Not directly.
> > > 
> > > Well, perhaps checkpatch.pl could run:
> > > 
> > > 	./scripts/kernel-doc -none
> > > 
> > > if it finds "/**" on a patch, showing the warnings produced by it, if any.
> > 
> > checkpatch runs on patches.
> > Use the tools that are designed for this instead.
> 
> The problem is that people usually do run checkpatch and do not run
> kernel-doc. That's where the idea to somehow put documentation checks
> into checkpatch came from.

I much prefer this patch:
https://lore.kernel.org/patchwork/patch/1260408/


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
