Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE26698A6
	for <lists@lfdr.de>; Mon, 15 Jul 2019 17:58:24 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EB9BFEB0;
	Mon, 15 Jul 2019 15:58:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7DE3C7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 15:58:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3469876
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 15:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Whc2Dbmxq4x89h083XX7wDCcfLdLsXP5QAvSosJ6Vuk=;
	b=OSWaDKDuvSlCJdE37MkVHd0xt
	D+ilciwu7IhMFVQp5JiY2idjVFzzuOBTcwjbutah5cU7s/L4AnrHry3kuZcCbXEeGOcqDSVCSqacf
	RWEZjSSQXtm6LXNh9wPkEtoHKC5w30Jutltr6ythQ49aoBl4EohCqg2kgYZl1iqi2UeyC/O85EmXd
	S/g2v0o/gfNK9OTx5fnocjAZIorbtF+r/nOKhi4MUdAg/G0WXKWRBtXx9LjUZegFlTT8KxkVuQepu
	BZIuYOWgmEugLt+Qj7KdDHBNUlU9X+JQFs8Y38db6Dhx57fI/3/gyQcbeuPepL8HCP+RmtYyp71nx
	BQpHB8gMQ==;
Received: from [189.27.46.152] (helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3MZ-0007DE-Ec; Mon, 15 Jul 2019 15:58:03 +0000
Date: Mon, 15 Jul 2019 12:58:00 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190715125800.22a9a979@coco.lan>
In-Reply-To: <20190708115949.GC1050@kunai>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
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

Em Mon, 8 Jul 2019 13:59:50 +0200
Wolfram Sang <wsa@the-dreams.de> escreveu:

> Hi Geert,
> 
> > > 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
> > >    stricter use of that  
> > 
> > Before we had "Reviewed-by", "Acked-by" meant "looks OK to me".
> > Then we got "Reviewed-by" for more thorough reviews.  
> 
> This is what still makes most sense to me. You can express e.g. that you
> like a patch series and approve the general approach taken but haven't
> gone for the gory details -> Acked-by (a short explaining paragraph
> would make sense, then, too)
> 
> Is that old fashioned?
> 
> Acked-by only for maintainers doesn't make sense to me. Neiher does when
> Acked-by has a different meaning for maintainers and non-maintainers.

On my case, when I receive an Acked-by, I assume that this came
from a maintainer (either a subsystem maintainer or a driver
maintainer) - as I expect that non-maintainers (and reviewers)
will either send me a reviewed-by or a tested-by.

When a review a code that will be merged via someone's else tree,
I usually either give:

- Acked-by - if it is something that touches the subsystem
  I maintain and will be merged via some other tree, but I 
  didn't make a comprehensive review;

- Reviewed-by - if I did a comprehensive review. I can either
  be the maintainer or not of the files touched by the patch.

So, I usually expect the others do about the same.

Looking at Documentation/process/5.Posting.rst:

	 - Acked-by: indicates an agreement by another developer (often a
	   maintainer of the relevant code) that the patch is appropriate for
	   inclusion into the kernel.

	 - Reviewed-by: the named developer has reviewed the patch for correctness;
	   see the reviewer's statement in :ref:`Documentation/process/submitting-patches.rst <submittingpatches>`
	   for more detail.

I guess the descriptions are already enough to describe those
tags.

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
