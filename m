Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E242B76BB
	for <lists@lfdr.de>; Thu, 19 Sep 2019 11:52:36 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DA20311CE;
	Thu, 19 Sep 2019 09:52:20 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA0B91188
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 09:52:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B11076D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 09:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ADncWS6ZjRPSKnZJzMVNuyvFtZVKW/3pqn5n5DpkDyU=;
	b=oXB3FqGG7J4dPYlcoxhNAOsAI
	Lc5+ijbO4/hMd9z80kMUXYlDNb0aZZVDi0arPcGb3lpyisVcVLBFslAHaVpPvzIs2U/T6aFS6eSxH
	n2c1PeK6kJeDdzwtmQGaHGdoR/1MmHgnrxGxnJY8JeDY2aazZ8DGrAooEY45nU9RlqzuObMqgDOHo
	nseLNSloCiH7/AkWUCODsioVJzWI11vZHsduzFteVGeaX8sXLQZ863fVa+39IXlZOV/k0ijY4dOKr
	VjvBOY0LWf4FEhhx+C6DwVZqg6k151hdDcnlE4dLp5RpfpRU4g+0Mkc/AoccwB6c06WfIu2hU/X3Z
	Xdxwpx2tA==;
Received: from 201.86.135.82.dynamic.adsl.gvt.net.br ([201.86.135.82]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAt6n-0005za-B2; Thu, 19 Sep 2019 09:52:17 +0000
Date: Thu, 19 Sep 2019 06:52:12 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190919065212.112af4be@coco.lan>
In-Reply-To: <20190919065447.GF2959@kadam>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
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

Em Thu, 19 Sep 2019 09:56:44 +0300
Dan Carpenter <dan.carpenter@oracle.com> escreveu:

> On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> > > > +Patches for the media subsystem should be sent to the media mailing list
> > > > +at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > > +HTML will be automatically rejected by the mail server. There's no need
> > > > +to copy the maintainer or sub-maintainer(s).    
> > > 
> > > There's too much traffic on mailing lists for me to follow everything, I
> > > much prefer being CC'ed on patches.  
> > 
> > Well, by using patchwork, the best is to take a look on it at least for
> > the patches that you're interested. You could script something using
> > pwclient in order to make it easier.
> > 
> > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > I prefer not to be c/c, as this is just more noise, as I just rely on
> > patchwork for media patches. What about changing this to:
> > 
> > 	Patches for the media subsystem should be sent to the media mailing list
> > 	at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > 	HTML will be automatically rejected by the mail server. It could be wise 
> > 	to also copy the sub-maintainer(s).  
> 
> The documentation should say "Use get_maintainer.pl" and do what it
> says.  Everything else is too complicated.

Works for me.

> Occasionally staging maintainers will complain that they aren't CC'd
> even though the staging/driver/README says to CC them and I am tell them
> "No, the responsibility is for you to add yourself to MAINTAINERS.  It
> doesn't matter what the documentation says, you messed up so you need to
> stop getting annoyed with newbies for not reading the documentation when
> it's your fault you weren't CC'd."
> 
> When I sent a patch, I use get_maintainer.pl then I add whoever the
> wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> Cook from the CC list because they worked all over the tree and I know
> them.  I also normally remove LKML if there is another mailing list but
> at least one subsystem uses LKML for patchwork so this isn't safe.

I use get_maintainer.pl myself, but when submitting some patches
(like documentation ones), I need to manually clean the list, as
it is not uncommon to have a really long c/c list.

> 
> So the safest instructions are "Use get_matainer.pl and add the person
> who wrote the commit in the Fixes tag".
> 
> regards,
> dan carpenter
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
