Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED221A664
	for <lists@lfdr.de>; Thu,  9 Jul 2020 19:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3032894DC;
	Thu,  9 Jul 2020 17:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYx-MOk9oXnB; Thu,  9 Jul 2020 17:58:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43B2B8998C;
	Thu,  9 Jul 2020 17:58:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 02F27C016F;
	Thu,  9 Jul 2020 17:58:01 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFECFC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 994692049B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BgnWpCXeBWfl
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:57:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by silver.osuosl.org (Postfix) with ESMTPS id DD8C32042D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:57:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1jtanp-004MA8-C3; Thu, 09 Jul 2020 19:57:45 +0200
Date: Thu, 9 Jul 2020 19:57:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID: <20200709175745.GB1014141@lunn.ch>
References: <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
 <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
 <20200709122118.0ffaea91@coco.lan>
 <60434f00e5bc55d2ceac14bb6a8c00d4d17c4e96.camel@perches.com>
 <20200709121136.GG781326@linux.ibm.com>
 <193e456a55a880b0f6755a3974f780bffbd8f19c.camel@perches.com>
 <20200709172914.GH781326@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709172914.GH781326@linux.ibm.com>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "Valdis.Kletnieks" <Valdis.Kletnieks@vt.edu>,
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

On Thu, Jul 09, 2020 at 08:29:14PM +0300, Mike Rapoport wrote:
> On Thu, Jul 09, 2020 at 09:59:46AM -0700, Joe Perches wrote:
> > On Thu, 2020-07-09 at 15:11 +0300, Mike Rapoport wrote:
> > > On Thu, Jul 09, 2020 at 04:42:58AM -0700, Joe Perches wrote:
> > > > On Thu, 2020-07-09 at 12:21 +0200, Mauro Carvalho Chehab wrote:
> > > > > Em Thu, 18 Jun 2020 07:40:22 -0700
> > > > > Joe Perches <joe@perches.com> escreveu:
> > > > > 
> > > > > > On Thu, 2020-06-18 at 12:04 +0300, Mike Rapoport wrote:
> > > > > > > if a patch breaks the sync between the code and the
> > > > > > > kerneldoc can it be detected by checkpatch.pl?  
> > > > > > 
> > > > > > No, it can not.  Not directly.
> > > > > 
> > > > > Well, perhaps checkpatch.pl could run:
> > > > > 
> > > > > 	./scripts/kernel-doc -none
> > > > > 
> > > > > if it finds "/**" on a patch, showing the warnings produced by it, if any.
> > > > 
> > > > checkpatch runs on patches.
> > > > Use the tools that are designed for this instead.
> > > 
> > > The problem is that people usually do run checkpatch and do not run
> > > kernel-doc. That's where the idea to somehow put documentation checks
> > > into checkpatch came from.
> > 
> > I much prefer this patch:
> > https://lore.kernel.org/patchwork/patch/1260408/
> 
> I don't see how it will help reducing amount of the kernel-doc warnings
> and how it'll make people to check if their patch introduces new ones...

It seems like 0-day and the like would be a better solution, since
they know how to apply the patch, run tools on the sources as a whole,
and look for new warnings mixed in with older warnings.

    Andrew
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
